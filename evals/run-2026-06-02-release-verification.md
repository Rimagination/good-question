# Release Verification Run: 2026-06-02

## Command

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level broad
```

## Result

Passed.

## What The Gate Checked

- `git diff --check` completed without whitespace errors.
- Required release artifacts exist: `SKILL.md`, README, changelog, contribution guide, field playbooks, release checklist, source-audit reference, pressure cases, and source-audit cases.
- Source-audit run template and at least one recorded source-audit spot check exist.
- Main workflow contains the core product requirements: Good Question Card, pilot field, Evidence ledger, and source-audit reference.
- README contains quick start, field playbook entry, pressure eval entry, quality gates, release checklist, contribution guide, and source-audit prompt.
- Broad-release docs contain `Broad Release Gate`, source-audit table, and source-audit passing threshold.
- Local markdown references in `SKILL.md`, README, `CONTRIBUTING.md`, and release checklist resolve.

## Notes

The first script run failed because Windows PowerShell misread UTF-8 non-ASCII literals in the script. The script was made ASCII-only for broader Windows compatibility. A second run failed because `references/*.md` in `CONTRIBUTING.md` was a wildcard example, not a real file reference. The verifier now skips wildcard references.
