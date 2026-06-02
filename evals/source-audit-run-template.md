# Source-Audit Run Template

Use this template when running `evals/source-audit-cases.md` or auditing a current-literature answer before broad release.

## Run Metadata

**Date:** YYYY-MM-DD
**Evaluator:** human / agent / mixed
**Case:** case id or user prompt
**Sources checked:** list URLs, DOIs, PDFs, or repository pages
**Decision:** pass / pass with repairs / fail

## Source Audit Table

| Claim | Source | Source type | Support | Repair if weak |
|---|---|---|---|---|
| ... | ... | primary / review / guideline / report / preprint / other | direct / partial / context / unsupported | ... |

## Scoring

| Item | Score | Notes |
|---|---:|---|
| Claim extraction | 0-2 | ... |
| Source fit | 0-2 | ... |
| Support labels | 0-2 | ... |
| Repair behavior | 0-2 | ... |
| Question conversion | 0-2 | ... |

Passing threshold: 8/10, with no 0 in source fit or repair behavior.

## Required Follow-Up

- [ ] Rewrite or remove unsupported claims.
- [ ] Mark preprint-only claims as provisional.
- [ ] Add missing evidence needs to the Good Question Card.
- [ ] If the case failed, update `SKILL.md` or the relevant reference card and re-run.
