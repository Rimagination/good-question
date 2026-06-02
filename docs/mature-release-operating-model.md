# Mature Release Operating Model

Use this operating model when `good-question` is being prepared for broad public use, classroom use, lab onboarding, or repeated use by researchers who cannot inspect the whole skill before trusting it.

## Maturity Contract

A mature release is not just a larger README. It means the skill has a repeatable evidence loop:

- Behavior is checked against a wide pressure-case corpus before release.
- Current-literature behavior is checked with source-audit cases and manual spot checks.
- Real public-source or user-anonymized examples are converted into reusable case notes.
- Version changes name behavior changes, known limits, and eval outcomes.
- Maintainers can run release gates without reading prior conversations.

Do not call the skill mature if it only has polished wording, a banner, or a few successful demos.

## Release Cadence

Use three release rhythms:

| Rhythm | When | Required work |
|---|---|---|
| Patch | Fixes wording, broken links, or local references | `-Level broad`, changelog note if behavior changed |
| Minor | Adds domain guidance, examples, eval cases, or source-audit behavior | Add or update pressure cases, run `-Level broad`, record one eval run |
| Mature | Claims stable product-like readiness | Run `-Level mature`, record mature readiness, review counts and failures |

Prefer delaying a mature release over lowering the gate.

## Artifact Ownership

| Artifact | Owner question |
|---|---|
| `SKILL.md` | Does the agent know what to do under pressure? |
| `references/` | Are method cards load-on-demand and non-duplicative? |
| `evals/pressure-cases.md` | Does the skill resist weak research-question traps across fields? |
| `evals/source-audit-cases.md` | Does it avoid citation laundering and unsupported gap claims? |
| `examples/case-notes.md` | Are real public-source or user-anonymized situations converted into reusable lessons? |
| `docs/field-playbooks.md` | Can humans provide useful context without learning agent internals? |
| `docs/release-checklist.md` | Can a maintainer decide release readiness without oral history? |
| `scripts/verify-release.ps1` | Are structural gates executable on Windows? |

## Mature Eval Portfolio

Before a mature release, the corpus should include:

- 30+ pressure cases across at least seven fields.
- 10+ source-audit cases, including at least three weak-citation traps.
- 5+ recorded source-audit spot checks across different fields.
- 5+ provenance-labeled real case notes.

The goal is coverage of failure modes, not volume for its own sake. A new case should expose a plausible way the agent could flatter a weak idea, overclaim evidence, force the wrong field norm, or skip a falsifier.

Each pressure case must include `Field` and `Failure mode` metadata. Each source-audit case must include `Field` and `Trap` metadata. The verification script treats missing metadata as a maturity failure because unlabeled corpuses cannot be audited for coverage.

## Source-Audit Spot Checks

For each mature release candidate:

1. Choose at least one current-literature or proposal-grounding answer.
2. Extract the decisive claims.
3. Check whether each source directly, partially, contextually, or not at all supports the claim.
4. Rewrite unsupported claims into open questions or narrower claims.
5. Record the run using `evals/source-audit-run-template.md`.

## Real Case Notes

Use `examples/case-notes.md` for real cases only. Keep cases source-linked or anonymized and compact:

- For `public-source` cases, link the source or recorded spot check.
- For `user-anonymized` cases, remove names, institutions, sites, grant identifiers, and unpublished sensitive details.
- Preserve the field, starting confusion, available constraints, failure mode, repair move, and final question shape.
- Mark whether the case changed `SKILL.md`, a reference card, an eval, or only the examples.

## Do Not Scale Conditions

Do not publish or label the skill as mature when any of these are true:

- Current-literature answers skip the `Evidence ledger`.
- The skill claims a gap, consensus, reviewer expectation, or "latest" trend without source support.
- Pressure cases are concentrated in one or two fields.
- Pressure cases or source-audit cases lack the required metadata.
- Source-audit cases only check response format, not whether claims are supported.
- Real cases lack source links or safe anonymization.
- Maintainers cannot run the release checks from the repository alone.
- A new domain playbook has no matching pressure case.

## Mature Release Command

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level mature
```

If it fails because corpus thresholds are not met, keep the release at broad/public-beta status and record the missing counts in `evals/mature-release-run-template.md`.
