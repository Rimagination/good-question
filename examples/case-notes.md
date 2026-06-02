# Real Case Notes

Use this file for real cases that have been converted into reusable product evidence. A case may come from public sources or anonymized user work, but it must declare provenance. Do not add synthetic examples here; use `examples/worked-examples.md` or `evals/pressure-cases.md` for invented pressure tests.

## How To Add A Case Note

Use this shape:

```markdown
## Case Note N: Short Field And Failure Mode

**Provenance:** public-source / user-anonymized
**Field:** ...
**Source anchor:** ...
**Starting confusion:** ...
**Available constraints:** ...
**Failure mode exposed:** ...
**Repair move:** ...
**Resulting question shape:** ...
**Changed artifacts:** `SKILL.md` / `references/...` / `evals/...` / examples only
```

## Evidence Rules

- Public-source cases must link to the sources or recorded spot check used to establish the case.
- User-anonymized cases must remove names, institutions, site names, grant identifiers, unpublished data details, and sensitive collaborator context.
- Preserve only the information needed to improve the skill: field, constraint, weak form, repair, and final question shape.
- If a case cannot be anonymized or source-linked without losing its meaning, do not include it.

## Case Note 1: Protein Benchmark To Mechanism

**Provenance:** public-source
**Field:** AI4Science / protein modeling
**Source anchor:** [protein source-audit spot check](../evals/run-2026-06-02-protein-source-audit-spot-check.md); [AlphaFold Nature paper](https://www.nature.com/articles/s41586-021-03819-2); [CASP14 report](https://pmc.ncbi.nlm.nih.gov/articles/PMC9299164/); [EMBL-EBI AlphaFold validation explainer](https://www.ebi.ac.uk/training/online/courses/alphafold/validation-and-impact/how-have-alphafolds-predictions-of-protein-structure-been-validated/)
**Starting confusion:** Strong protein-structure benchmark performance could be upgraded into a claim that the model discovers biological mechanisms.
**Available constraints:** Public sources support benchmark performance and downstream usefulness, but not mechanism discovery by themselves.
**Failure mode exposed:** Benchmark-to-science overclaim.
**Repair move:** Separate prediction accuracy from mechanistic discovery; require perturbation, experimental validation, or interpretable model features tied to biology.
**Resulting question shape:** When do protein-structure model features or errors reveal testable biological mechanisms, rather than only improving benchmark accuracy?
**Changed artifacts:** `evals/source-audit-cases.md`, source-audit spot checks, examples only

## Case Note 2: eDNA Detection To Field Standard

**Provenance:** public-source
**Field:** Biodiversity monitoring / environmental DNA
**Source anchor:** [eDNA source-audit spot check](../evals/run-2026-06-02-edna-source-audit-spot-check.md); [Asian carp eDNA validation summary](https://www.sciencedaily.com/releases/2011/01/110105121123.htm); [fish eDNA standards paper](https://pmc.ncbi.nlm.nih.gov/articles/PMC7140814/)
**Starting confusion:** A validated eDNA detection case could be turned into a broad claim that eDNA is now the field-standard method for regional biodiversity monitoring.
**Available constraints:** Sources support system-specific detection and protocol importance; they do not establish field-wide replacement of existing monitoring.
**Failure mode exposed:** Method-to-field-standard overclaim.
**Repair move:** Treat eDNA as a candidate monitoring tool whose reliability depends on taxon, sampling regime, objective, false positives/negatives, and governance.
**Resulting question shape:** Under what monitoring objectives, taxa, and sampling regimes is eDNA reliable enough to complement or replace existing biodiversity-monitoring methods at regional scale?
**Changed artifacts:** `evals/source-audit-cases.md`, source-audit spot checks, examples only

## Case Note 3: Flood Dataset To Adaptation Decision

**Provenance:** public-source
**Field:** Remote sensing / climate adaptation
**Source anchor:** [flood source-audit spot check](../evals/run-2026-06-02-flood-source-audit-spot-check.md); [Nature Global Flood Database paper](https://www.nature.com/articles/s41586-021-03695-w); [Global Flood Database project site](https://global-flood-database.cloudtostreet.ai/); [NASA flood-exposure summary](https://science.nasa.gov/earth/earth-observatory/research-shows-more-people-living-in-floodplains-148866)
**Starting confusion:** A high-quality flood dataset and dashboard could be assumed to improve community adaptation decisions.
**Available constraints:** Sources support flood mapping, exposure estimation, and data availability; they do not demonstrate that a dashboard changes local decisions.
**Failure mode exposed:** Dataset-to-impact overclaim.
**Repair move:** Separate map quality from decision impact; require a named decision, baseline information, user workflow, and uncertainty communication.
**Resulting question shape:** When does access to satellite-derived flood-exposure information change a specific community adaptation decision compared with existing risk information?
**Changed artifacts:** `evals/source-audit-cases.md`, source-audit spot checks, examples only

## Case Note 4: Restoration Soil Carbon Generalization

**Provenance:** public-source
**Field:** Restoration ecology / soil carbon
**Source anchor:** [restoration source-audit spot check](../evals/run-2026-06-02-restoration-source-audit-spot-check.md); [Nature Communications restoration SOC synthesis](https://www.nature.com/articles/s41467-025-55980-1); [dryland restoration carbon meta-analysis](https://www.sciencedirect.com/science/article/pii/S0301479723018583)
**Starting confusion:** A restoration meta-analysis could be used to claim restoration reliably increases soil carbon across degraded drylands.
**Available constraints:** Sources support carbon gains in many restored ecosystems and dryland carbon complexity, but not a blanket reliable-dryland claim.
**Failure mode exposed:** Overbroad review generalization.
**Repair move:** Narrow the question by restoration strategy, ecosystem, soil depth, baseline degradation, climate context, and timescale.
**Resulting question shape:** Under which dryland restoration strategies, soil depths, and climate contexts do soil carbon gains persist long enough to justify climate-mitigation claims?
**Changed artifacts:** `evals/source-audit-cases.md`, source-audit spot checks, examples only

## Case Note 5: AI Biodiversity Promise To Policy-Grade Reliability

**Provenance:** public-source
**Field:** Biodiversity monitoring / AI
**Source anchor:** [AI biodiversity source-audit spot check](../evals/run-2026-06-02-source-audit-spot-check.md); [Nature Reviews Biodiversity AI review](https://www.nature.com/articles/s44358-025-00022-3); [OECD.AI biodiversity and AI report](https://wp.oecd.ai/app/uploads/2025/05/biodiversity-and-AI-opportunities-recommendations-for-action.pdf); [remote-sensing ecosystem-monitoring review](https://www.sciencedirect.com/science/article/pii/S2666017225001476)
**Starting confusion:** Sources describing AI promise for biodiversity monitoring could be used to claim foundation models already produce reliable policy-grade indicators.
**Available constraints:** Sources support AI promise, monitoring uses, and governance requirements; they do not establish already-proven policy-grade reliability.
**Failure mode exposed:** Promise-to-readiness overclaim.
**Repair move:** Preserve the promise while converting reliability into a falsifiable question about calibration, uncertainty, traceability, comparability, and governance.
**Resulting question shape:** Can foundation-model outputs for biodiversity monitoring become calibrated, auditable indicators that remain traceable to raw observations and trustworthy enough for policy or management decisions?
**Changed artifacts:** `references/source-audit.md`, `evals/source-audit-cases.md`, source-audit spot checks, examples only
