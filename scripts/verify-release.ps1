param(
    [ValidateSet("local", "beta", "broad", "mature")]
    [string]$Level = "beta"
)

$ErrorActionPreference = "Stop"

$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$Failures = New-Object System.Collections.Generic.List[string]

function Add-Failure {
    param([string]$Message)
    $Failures.Add($Message) | Out-Null
}

function Require-File {
    param([string]$RelativePath)
    $Path = Join-Path $RepoRoot $RelativePath
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        Add-Failure "Missing required file: $RelativePath"
    }
}

function Require-Text {
    param(
        [string]$RelativePath,
        [string]$Pattern,
        [string]$Description
    )
    $Path = Join-Path $RepoRoot $RelativePath
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        Add-Failure "Cannot inspect missing file: $RelativePath"
        return
    }
    $Text = Get-Content -Raw -Encoding UTF8 -LiteralPath $Path
    if ($Text -notmatch $Pattern) {
        Add-Failure "Missing text in ${RelativePath}: $Description"
    }
}

function Check-LocalMarkdownReferences {
    param([string]$RelativePath)
    $Path = Join-Path $RepoRoot $RelativePath
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        Add-Failure "Cannot inspect missing file: $RelativePath"
        return
    }

    $Text = Get-Content -Raw -Encoding UTF8 -LiteralPath $Path
    $InlineCodeRefs = [regex]::Matches($Text, '`([^`]+\.md)`')
    foreach ($Match in $InlineCodeRefs) {
        $Ref = $Match.Groups[1].Value
        if ($Ref -match '[*?]') {
            continue
        }
        if ($Ref -match '^(references|evals|examples|docs)/') {
            $Candidate = Join-Path $RepoRoot ($Ref -replace '/', [IO.Path]::DirectorySeparatorChar)
            if (-not (Test-Path -LiteralPath $Candidate -PathType Leaf)) {
                Add-Failure "Broken local markdown reference in ${RelativePath}: $Ref"
            }
        }
    }

    $MarkdownLinks = [regex]::Matches($Text, '\]\(([^)#][^)]+\.md)\)')
    foreach ($Match in $MarkdownLinks) {
        $Ref = $Match.Groups[1].Value
        if ($Ref -match '^[a-zA-Z]+://') {
            continue
        }
        $Base = Split-Path -Parent $Path
        $Candidate = Join-Path $Base ($Ref -replace '/', [IO.Path]::DirectorySeparatorChar)
        if (-not (Test-Path -LiteralPath $Candidate -PathType Leaf)) {
            Add-Failure "Broken markdown link in ${RelativePath}: $Ref"
        }
    }
}

function Get-RegexCount {
    param(
        [string]$RelativePath,
        [string]$Pattern
    )
    $Path = Join-Path $RepoRoot $RelativePath
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        Add-Failure "Cannot count missing file: $RelativePath"
        return 0
    }

    $Text = Get-Content -Raw -Encoding UTF8 -LiteralPath $Path
    return ([regex]::Matches($Text, $Pattern, "Multiline")).Count
}

function Require-MinCount {
    param(
        [string]$RelativePath,
        [string]$Pattern,
        [int]$Minimum,
        [string]$Description
    )
    $Count = Get-RegexCount $RelativePath $Pattern
    if ($Count -lt $Minimum) {
        Add-Failure "$Description requires at least $Minimum; found $Count in $RelativePath"
    }
}

function Get-UniqueMetadataCount {
    param(
        [string]$RelativePath,
        [string]$Label
    )
    $Path = Join-Path $RepoRoot $RelativePath
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        Add-Failure "Cannot inspect missing file: $RelativePath"
        return 0
    }

    $Text = Get-Content -Raw -Encoding UTF8 -LiteralPath $Path
    $EscapedLabel = [regex]::Escape($Label)
    $Matches = [regex]::Matches($Text, "(?m)^\*\*$EscapedLabel\:\*\*\s*(.+?)\s*$")
    $Values = New-Object System.Collections.Generic.HashSet[string]
    foreach ($Match in $Matches) {
        $Value = $Match.Groups[1].Value.Trim().ToLowerInvariant()
        if ($Value.Length -gt 0) {
            $Values.Add($Value) | Out-Null
        }
    }
    return $Values.Count
}

function Require-MinUniqueMetadata {
    param(
        [string]$RelativePath,
        [string]$Label,
        [int]$Minimum,
        [string]$Description
    )
    $Count = Get-UniqueMetadataCount $RelativePath $Label
    if ($Count -lt $Minimum) {
        Add-Failure "$Description requires at least $Minimum unique $Label values; found $Count in $RelativePath"
    }
}

function Require-MinFileCount {
    param(
        [string]$RelativeFolder,
        [string]$Pattern,
        [int]$Minimum,
        [string]$Description
    )
    $Folder = Join-Path $RepoRoot $RelativeFolder
    if (-not (Test-Path -LiteralPath $Folder -PathType Container)) {
        Add-Failure "Cannot count missing folder: $RelativeFolder"
        return
    }

    $Count = (Get-ChildItem -LiteralPath $Folder -File | Where-Object { $_.Name -like $Pattern }).Count
    if ($Count -lt $Minimum) {
        Add-Failure "$Description requires at least $Minimum; found $Count in $RelativeFolder matching $Pattern"
    }
}

Push-Location $RepoRoot
try {
    $DiffCheck = & git diff --check 2>&1
    if ($LASTEXITCODE -ne 0) {
        Add-Failure "git diff --check failed:`n$DiffCheck"
    }
}
finally {
    Pop-Location
}

Require-File "SKILL.md"
Require-File "README.md"
Require-File "LICENSE"
Require-File "references\domain-brief-template.md"
Require-File "references\editor-desk-reject.md"
Require-File "references\question-patterns.md"
Require-File "evals\pressure-cases.md"

Require-Text "SKILL.md" '^---\s*\r?\nname:\s*good-question' "frontmatter name"
Require-Text "SKILL.md" 'description:\s*Use when' "frontmatter description starts with Use when"
Require-Text "SKILL.md" '## Good Question Card' "English card template"
Require-Text "SKILL.md" 'pilot' "pilot field in card templates"
Require-Text "SKILL.md" 'Evidence ledger' "evidence ledger requirement"
Require-Text "SKILL.md" 'Information Sufficiency Gate' "information sufficiency gate"
Require-Text "SKILL.md" 'enhanced retrieval' "enhanced-retrieval requirement"
Require-Text "SKILL.md" 'references/source-audit\.md' "source-audit reference"
Require-Text "README.md" 'Quick Start' "quick-start section"
Require-Text "README.md" 'docs/field-playbooks\.md' "field playbook entry"
Require-Text "README.md" 'evals/pressure-cases\.md' "pressure eval entry"
Require-Text "evals\pressure-cases.md" 'Case 31: Unfamiliar Domain Requires Enhanced Retrieval' "enhanced-retrieval pressure case"

if ($Level -in @("beta", "broad", "mature")) {
    Require-File "examples\worked-examples.md"
    Require-File "evals\run-2026-06-02-agent-eval.md"
    Require-File "docs\field-playbooks.md"
    Require-File "docs\release-checklist.md"
    Require-File "CONTRIBUTING.md"
    Require-File "CHANGELOG.md"
    Require-Text "evals\pressure-cases.md" 'Case 6: Cross-Field Onboarding' "cross-field onboarding eval"
    Require-Text "docs\release-checklist.md" 'Small Public Beta Gate' "beta release gate"
}

if ($Level -in @("broad", "mature")) {
    Require-File "references\source-audit.md"
    Require-File "evals\source-audit-cases.md"
    Require-File "evals\source-audit-run-template.md"
    Require-File "evals\run-2026-06-02-source-audit-spot-check.md"
    Require-Text "references\source-audit.md" 'Source Audit Table' "source audit table"
    Require-Text "evals\source-audit-cases.md" 'Passing threshold: 8/10' "source audit passing threshold"
    Require-Text "evals\run-2026-06-02-source-audit-spot-check.md" 'Unsupported' "source-audit spot check labels unsupported claims"
    Require-Text "docs\release-checklist.md" 'Broad Release Gate' "broad release gate"
}

if ($Level -eq "mature") {
    Require-File "docs\mature-release-operating-model.md"
    Require-File "evals\mature-release-run-template.md"
    Require-File "examples\case-notes.md"
    Require-Text "docs\release-checklist.md" 'Mature Release Gate' "mature release gate"
    Require-Text "docs\mature-release-operating-model.md" 'Maturity Contract' "maturity contract"
    Require-Text "docs\mature-release-operating-model.md" 'Do Not Scale Conditions' "do-not-scale conditions"
    Require-Text "evals\mature-release-run-template.md" 'Mature Release Decision' "mature release decision section"
    Require-Text "README.md" 'mature-release-operating-model\.md' "mature operating model entry"
    Require-Text "CONTRIBUTING.md" 'Mature Maintenance' "mature maintenance guidance"
    Require-Text "CHANGELOG.md" 'mature-release' "mature-release changelog note"
    Require-MinCount "evals\pressure-cases.md" '^## Case \d+:' 30 "Mature pressure-case corpus"
    Require-MinCount "evals\pressure-cases.md" '^\*\*Field:\*\*' 30 "Mature pressure-case field metadata"
    Require-MinCount "evals\pressure-cases.md" '^\*\*Failure mode:\*\*' 30 "Mature pressure-case failure-mode metadata"
    Require-MinUniqueMetadata "evals\pressure-cases.md" "Field" 7 "Mature pressure-case field diversity"
    Require-MinCount "evals\source-audit-cases.md" '^## Case \d+:' 10 "Mature source-audit corpus"
    Require-MinCount "evals\source-audit-cases.md" '^\*\*Field:\*\*' 10 "Mature source-audit field metadata"
    Require-MinCount "evals\source-audit-cases.md" '^\*\*Trap:\*\*' 10 "Mature source-audit trap metadata"
    Require-MinCount "evals\source-audit-cases.md" '^\*\*Trap:\*\*.*[Ww]eak citation' 3 "Mature weak-citation trap coverage"
    Require-MinFileCount "evals" "run-*-source-audit-spot-check.md" 5 "Mature source-audit spot-check record"
    Require-MinCount "examples\case-notes.md" '^## Case Note \d+:' 5 "Mature real-case notes"
    Require-MinCount "examples\case-notes.md" '^\*\*Provenance:\*\*\s*(public-source|user-anonymized)\s*$' 5 "Mature real-case note provenance metadata"
}

Check-LocalMarkdownReferences "SKILL.md"
Check-LocalMarkdownReferences "README.md"
Check-LocalMarkdownReferences "CONTRIBUTING.md"
Check-LocalMarkdownReferences "docs\release-checklist.md"
Check-LocalMarkdownReferences "docs\mature-release-operating-model.md"
Check-LocalMarkdownReferences "evals\mature-release-run-template.md"
Check-LocalMarkdownReferences "examples\case-notes.md"

if ($Failures.Count -gt 0) {
    Write-Host "Release verification failed for level '$Level':" -ForegroundColor Red
    foreach ($Failure in $Failures) {
        Write-Host "- $Failure" -ForegroundColor Red
    }
    exit 1
}

Write-Host "Release verification passed for level '$Level'." -ForegroundColor Green
