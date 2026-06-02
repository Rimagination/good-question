# Good Question Evals

Use these pressure cases to test whether the skill makes weak research ideas sharper instead of merely more polished.

## How To Run

1. Give the raw input to an agent with `good-question` available.
2. Check whether the agent loads the expected reference cards or follows their logic.
3. Score the output against the pass conditions.
4. Record failures as concrete skill edits, not as vague "be better" notes.

## Case Metadata

Pressure cases must start with:

```markdown
**Field:** ...
**Failure mode:** ...
```

Source-audit cases must start with:

```markdown
**Field:** ...
**Trap:** ...
```

The mature release gate counts these fields. Do not add unlabeled cases to inflate the corpus.

## Scoring

Use 0-2 for each item:

| Item | 0 | 1 | 2 |
|---|---|---|---|
| Diagnosis | Mislabels the user state | Partly diagnoses | Correctly identifies state and constraints |
| Evidence discipline | Invents field consensus | Marks uncertainty inconsistently | Separates sources, inference, and unknowns |
| Question quality | Produces topics or tasks | Produces questions with weak stakes | Produces falsifiable questions with stakes |
| Rivals | One favored hypothesis | Weak/null rival only | Serious competing explanations |
| Feasible entry | No pilot | Pilot too vague or too large | Two-week pilot can update belief |
| Reviewer risk | Generic objection | Some candidate-specific risk | Strongest rejection risk plus repair |

Passing threshold: 9/12 overall, with no 0 in evidence discipline, rivals, or feasible entry.

## Eval Files

| File | Purpose |
|---|---|
| `pressure-cases.md` | Tests core question-sharpening behavior across common weak inputs |
| `source-audit-cases.md` | Tests whether citations support the claims attached to them |
| `source-audit-run-template.md` | Template for recording source-audit runs and spot checks |
| `run-2026-06-02-agent-eval.md` | Records a real multi-agent pressure run and follow-up regressions |
| `run-2026-06-02-release-verification.md` | Records a broad-release structural verification run |
| `run-2026-06-02-source-audit-spot-check.md` | Records a manual citation-support spot check |
| `run-2026-06-02-protein-source-audit-spot-check.md` | Audits benchmark-to-mechanism overclaiming |
| `run-2026-06-02-edna-source-audit-spot-check.md` | Audits method-to-field-standard overclaiming |
| `run-2026-06-02-flood-source-audit-spot-check.md` | Audits dataset-to-decision-impact overclaiming |
| `run-2026-06-02-restoration-source-audit-spot-check.md` | Audits overbroad restoration soil-carbon generalization |
| `mature-release-run-template.md` | Template for deciding whether the skill can be called mature |
| `run-2026-06-02-mature-readiness.md` | Records the current mature-gate failure and missing corpus thresholds |

## Release Gate

For small public beta, run or manually inspect `pressure-cases.md`.

For broad release, also run `source-audit-cases.md` and do manual spot checks on citations in at least one current-literature answer.

For mature release, run `scripts/verify-release.ps1 -Level mature` and record the corpus counts, spot checks, and release decision with `mature-release-run-template.md`.
