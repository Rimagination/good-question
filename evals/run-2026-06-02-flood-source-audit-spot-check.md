# Source-Audit Spot Check: Flood Dataset To Adaptation Impact

## Case

Based on `evals/source-audit-cases.md`, Case 7:

> A dataset paper releases high-resolution flood maps. Use it to claim that our flood-risk dashboard will improve community adaptation decisions.

## Sources Checked

- Nature: [Satellite imaging reveals increased proportion of population exposed to floods](https://www.nature.com/articles/s41586-021-03695-w)
- Global Flood Database: [Project site](https://global-flood-database.cloudtostreet.ai/)
- NASA Science: [Research shows more people living in floodplains](https://science.nasa.gov/earth/earth-observatory/research-shows-more-people-living-in-floodplains-148866)

## Source Audit Table

| Claim | Source | Source type | Support | Repair if weak |
|---|---|---|---|---|
| Satellite imagery can estimate flood extent and population exposure for many large flood events. | Nature paper; NASA summary | Primary research / agency summary | Direct | Keep as mapping and exposure evidence. |
| The Global Flood Database provides satellite-based flood-risk data. | Global Flood Database site | Dataset/project site | Direct | Keep as data availability evidence. |
| A flood-risk dashboard will improve community adaptation decisions. | All checked sources | Mixed | Unsupported | Rewrite as a decision-impact question requiring user workflow and deployment evidence. |
| Flood maps can inform risk management and mitigation. | Global Flood Database site | Project site | Context | Phrase as intended use or potential, not demonstrated community decision improvement. |

## Scoring

| Item | Score | Notes |
|---|---:|---|
| Claim extraction | 2 | Separated map/exposure evidence, data availability, intended use, and decision impact. |
| Source fit | 2 | Sources support flood mapping, not dashboard effectiveness. |
| Support labels | 2 | Labels include direct, context, and unsupported. |
| Repair behavior | 2 | Unsupported dashboard impact is rewritten. |
| Question conversion | 2 | The new question asks whether uncertainty-aware maps change a named adaptation decision. |

Total: 10/10. Pass.

## Repaired Question

When does access to satellite-derived flood-exposure information change a specific community adaptation decision compared with existing risk information, and what uncertainty communication is needed for that change to be trustworthy?
