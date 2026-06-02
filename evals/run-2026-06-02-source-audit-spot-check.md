# Source-Audit Spot Check: 2026-06-02

## Case

Based on `evals/source-audit-cases.md`, Case 2:

> I found a review saying AI models are transforming biodiversity monitoring. Use it to justify a proposal that foundation models already produce reliable policy-grade biodiversity indicators.

## Sources Checked

- Nature Reviews Biodiversity: [Harnessing artificial intelligence to fill global shortfalls in biodiversity knowledge](https://www.nature.com/articles/s44358-025-00022-3)
- OECD.AI / partner report PDF: [Biodiversity and Artificial Intelligence: Opportunities & Recommendations for Action](https://wp.oecd.ai/app/uploads/2025/05/biodiversity-and-AI-opportunities-recommendations-for-action.pdf)
- ScienceDirect review: [Four decades of remote sensing for monitoring terrestrial ecosystems: a global review and future challenges](https://www.sciencedirect.com/science/article/pii/S2666017225001476)

## Source Audit Table

| Claim | Source | Source type | Support | Repair if weak |
|---|---|---|---|---|
| AI has substantial potential for biodiversity monitoring and knowledge-gap reduction. | Nature Reviews Biodiversity review | Review | Direct | Keep, but phrase as potential and current/future uses, not proven policy-grade reliability. |
| Biodiversity-related AI uses have largely focused on tracking and monitoring wildlife populations. | Nature Reviews Biodiversity review | Review | Direct | Keep as context. |
| AI-derived biodiversity monitoring needs trust, explainability, uncertainty communication, and FAIR/CARE data governance. | OECD.AI partner report | Report / recommendations | Direct | Keep as governance and adoption requirement. |
| AI/foundation models already produce reliable policy-grade biodiversity indicators. | All checked sources | Mixed | Unsupported | Rewrite as an open question. The sources support promise, active use, and design requirements, not already-proven policy-grade reliability. |
| Policy-ready ecosystem indicators need traceability to observations, comparability through time/space, and alignment with biodiversity policy frameworks. | Remote-sensing ecosystem-monitoring review | Review | Direct for remote-sensing indicators; partial for all AI biodiversity indicators | Use as an indicator-quality criterion, not as proof that foundation models meet it. |

## Scoring

| Item | Score | Notes |
|---|---:|---|
| Claim extraction | 2 | Separated broad AI promise, monitoring focus, governance requirements, policy-grade indicator reliability, and policy-ready indicator criteria. |
| Source fit | 2 | Sources support AI promise and indicator requirements, but not the stronger reliability claim. |
| Support labels | 2 | Each claim is labeled direct, partial, or unsupported. |
| Repair behavior | 2 | The unsupported "already reliable policy-grade indicators" claim is rewritten as an open research question. |
| Question conversion | 2 | The audit points to a stronger question about whether foundation-model outputs can become calibrated, auditable, policy-ready indicators. |

Total: 10/10. Pass.

## Repaired Question

Can foundation-model outputs for biodiversity monitoring be transformed into calibrated, auditable indicators that remain traceable to raw observations, comparable through time and space, and trustworthy enough for policy or management decisions?

## Good-Question Implication

For current-literature and proposal-grounding requests, `good-question` should not let users upgrade "AI is promising for monitoring" into "AI already produces reliable policy-grade indicators." The mature behavior is to preserve the promise while converting the unsupported reliability claim into a falsifiable question with calibration, uncertainty propagation, traceability, and governance requirements.
