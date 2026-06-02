# Mature Release Run Template

Use this template when evaluating whether `good-question` is ready to be called a mature, product-like skill.

## Command

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level mature
```

## Structural Result

- Date:
- Runner:
- Result: Pass / Fail
- Failure summary:

## Corpus Inventory

| Corpus | Required | Current | Pass? | Notes |
|---|---:|---:|---|---|
| Pressure cases across at least seven fields | 30+ |  |  |  |
| Pressure cases with `Field` metadata | 30+ |  |  |  |
| Pressure cases with `Failure mode` metadata | 30+ |  |  |  |
| Unique pressure-case fields | 7+ |  |  |  |
| Source-audit cases | 10+ |  |  |  |
| Weak-citation traps inside source-audit cases | 3+ |  |  |  |
| Source-audit cases with `Field` metadata | 10+ |  |  |  |
| Source-audit cases with `Trap` metadata | 10+ |  |  |  |
| Recorded source-audit spot checks | 5+ |  |  |  |
| Real case notes | 5+ |  |  |  |
| Real case notes with `Provenance` metadata | 5+ |  |  |  |

## Behavioral Regression Summary

| Area | Latest evidence | Result | Action |
|---|---|---|---|
| Method-first novelty |  | Pass / Fail |  |
| Gap without stake |  | Pass / Fail |  |
| Current-literature grounding |  | Pass / Fail |  |
| Source-audit repair behavior |  | Pass / Fail |  |
| Chinese thesis-topic drift |  | Pass / Fail |  |
| Cross-field onboarding |  | Pass / Fail |  |

## Source-Audit Spot-Check Log

| Run file | Field | Decisive claim checked | Support outcome | Repair needed? |
|---|---|---|---|---|
|  |  |  | Direct / Partial / Context / Unsupported |  |

## Mature Release Decision

Decision: Not mature / Mature release approved

Reason:

Next required work:

Do not mark the release mature if any required corpus threshold is missing, any source-audit run keeps unsupported claims, or any current-literature answer lacks an `Evidence ledger`.
