# Source-Audit Spot Check: Protein Benchmark To Mechanism

## Case

Based on `evals/source-audit-cases.md`, Case 5:

> A model paper beats several protein-structure benchmarks. Use it to justify that the model discovers new biological mechanisms.

## Sources Checked

- Nature: [Highly accurate protein structure prediction with AlphaFold](https://www.nature.com/articles/s41586-021-03819-2)
- PMC: [Applying and improving AlphaFold at CASP14](https://pmc.ncbi.nlm.nih.gov/articles/PMC9299164/)
- EMBL-EBI AlphaFold training: [How have AlphaFold2's predictions of protein structure been validated?](https://www.ebi.ac.uk/training/online/courses/alphafold/validation-and-impact/how-have-alphafolds-predictions-of-protein-structure-been-validated/)

## Source Audit Table

| Claim | Source | Source type | Support | Repair if weak |
|---|---|---|---|---|
| AlphaFold achieved very strong structure-prediction performance on CASP14. | Nature AlphaFold paper; CASP14 report; EMBL-EBI training | Primary research / benchmark report / training explainer | Direct | Keep as prediction-performance evidence. |
| Benchmark success proves the model discovers new biological mechanisms. | All checked sources | Mixed | Unsupported | Rewrite as an open question requiring perturbation, experimental validation, or interpretable features tied to biology. |
| AlphaFold predictions can support downstream biological work. | Nature AlphaFold paper; EMBL-EBI training | Research / explainer | Partial | Phrase as enabling or supporting hypotheses, not as mechanism discovery by itself. |

## Scoring

| Item | Score | Notes |
|---|---:|---|
| Claim extraction | 2 | Separated prediction accuracy, downstream usefulness, and mechanism discovery. |
| Source fit | 2 | Sources support benchmark performance, not the stronger mechanism claim. |
| Support labels | 2 | Claims are labeled direct, partial, or unsupported. |
| Repair behavior | 2 | Mechanism claim is rewritten into a validation question. |
| Question conversion | 2 | The stronger question asks when prediction features generate testable biological mechanisms. |

Total: 10/10. Pass.

## Repaired Question

When do protein-structure model features or errors reveal testable biological mechanisms, rather than only improving structural prediction accuracy on benchmark targets?
