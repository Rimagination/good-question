# Contributing To Good Question

`good-question` should become stronger by adding tested research situations, not by adding more inspirational wording.

## What To Contribute

- **Pressure cases:** messy raw inputs that expose failure modes.
- **Worked examples:** compact before/after examples that show how a weak idea becomes a defensible question.
- **Domain playbook entries:** human-facing guidance for a field or subfield.
- **Domain adapter entries:** agent-facing evidence norms and reviewer objections.
- **Source-audit cases:** examples where citations might not support the claims attached to them.
- **Real case notes:** public-source or user-anonymized situations that safely preserve the weak form, repair move, and final question shape.

## Contribution Rules

1. Add a pressure case before changing the skill behavior.
2. Name the failure mode: method-first, gap-first, novelty-only, no falsifier, no pilot, weak source, wrong field norm, or generic onboarding.
3. Every pressure case must include `**Field:**` and `**Failure mode:**` metadata before `**Raw input:**`.
4. Every source-audit case must include `**Field:**` and `**Trap:**` metadata before `**Raw input:**`.
5. Keep examples compact; one sharp example beats five vague ones.
6. Do not add a domain playbook that only lists topics. Include weak forms, stronger forms, reviewer objections, and a reusable prompt.
7. Do not add a source unless it supports a specific claim.
8. Preserve Chinese examples and templates when editing Chinese-facing guidance.

## File Map

| Need | File |
|---|---|
| Change main behavior | `SKILL.md` |
| Add method guidance for agents | `references/*.md` |
| Add human-facing field usage | `docs/field-playbooks.md` |
| Add messy test inputs | `evals/pressure-cases.md` |
| Add source-support tests | `evals/source-audit-cases.md` |
| Add compact demonstrations | `examples/worked-examples.md` |
| Add real case evidence | `examples/case-notes.md` |
| Prepare release | `docs/release-checklist.md` |
| Prepare mature release | `docs/mature-release-operating-model.md`, `evals/mature-release-run-template.md` |
| Run structural release checks | `scripts/verify-release.ps1` |

## Mature Maintenance

Mature-release work should improve the product loop, not only add content. Before calling a release mature, run `scripts/verify-release.ps1 -Level mature` and record the result with `evals/mature-release-run-template.md`.

If the mature gate fails only because corpus thresholds are not yet met, keep the release labeled broad/public beta and add the missing pressure cases, source-audit cases, spot checks, or real case notes. Do not lower thresholds to make a release pass.

Mature pressure cases must cover at least seven unique `Field` values. Mature source-audit cases must include at least three `Trap` values that explicitly contain `Weak citation`.
Mature real case notes must include `Provenance` metadata. Use `public-source` for open literature/project cases and `user-anonymized` for real user cases stripped of identifying details.

## Minimal Review Checklist

- [ ] Does the new case include raw input, expected moves, pass conditions, and failure modes?
- [ ] Does every new pressure/source-audit case include the required metadata lines?
- [ ] Does the change make a weak idea visibly weaker or a good question visibly sharper?
- [ ] Does the output require stake, rivals, falsifier, feasible pilot, and reviewer risk?
- [ ] If current literature is involved, does it require Domain Brief, Evidence ledger, and Source Audit?
- [ ] Did `git diff --check` pass?
- [ ] Did `powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level broad` pass for broad-release changes?
- [ ] For mature-release claims, did `powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level mature` pass?
