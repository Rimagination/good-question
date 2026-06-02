# Mature Readiness Run: 2026-06-02

## Command

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level mature
```

## Result

Passed. The mature gate is executable and the current corpus satisfies the structural maturity thresholds.

## Failure Summary

None in the current run.

## Corpus Inventory

| Corpus | Required | Current | Pass? | Notes |
|---|---:|---:|---|---|
| Pressure cases across at least seven fields | 30+ | 31 | Yes | Expanded to 31 labeled cases across more than seven fields, including an unfamiliar-domain enhanced-retrieval case. |
| Pressure-case `Field` metadata | 30+ | 31 | Yes | All pressure cases are labeled. |
| Pressure-case `Failure mode` metadata | 30+ | 31 | Yes | All pressure cases are labeled. |
| Unique pressure-case fields | 7+ | 30 | Yes | Field coverage now exceeds the maturity threshold. |
| Source-audit cases | 10+ | 10 | Yes | Expanded to 10 cases. |
| Source-audit `Field` metadata | 10+ | 10 | Yes | All source-audit cases are labeled. |
| Source-audit `Trap` metadata | 10+ | 10 | Yes | All source-audit cases are labeled. |
| Weak-citation traps | 3+ | 10 | Yes | All source-audit cases cover weak-citation variants. |
| Recorded source-audit spot checks | 5+ | 5 | Yes | Added protein, eDNA, flood, and restoration spot checks. |
| Real case notes | 5+ | 5 | Yes | Added public-source cases from source-audit verification. |
| Real case note provenance metadata | 5+ | 5 | Yes | All current case notes are labeled `public-source`. |

## Decision

Decision: Mature release structurally approved.

The project satisfies the mature release thresholds for pressure-case corpus, source-audit corpus, field metadata, weak-citation traps, recorded source-audit spot checks, and provenance-labeled real case notes. The current real-case evidence is public-source rather than user-anonymized; future releases should add user-anonymized cases as real usage accumulates.
