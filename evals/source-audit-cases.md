# Source-Auditing Pressure Cases

Use these cases to test whether `good-question` treats sources as evidence rather than decoration.

## Scoring

Use 0-2 for each item:

| Item | 0 | 1 | 2 |
|---|---|---|---|
| Claim extraction | Does not identify claims | Identifies some claims | Lists the claims that matter |
| Source fit | Sources are decorative or wrong | Mixed support | Sources match specific claims |
| Support labels | No support labels | Partial labels | Direct/partial/context/unsupported labels |
| Repair behavior | Keeps weak claims | Soft caveats only | Rewrites/removes unsupported claims |
| Question conversion | Literature list only | Some question relevance | Evidence becomes sharper question opportunities |

Passing threshold: 8/10, with no 0 in source fit or repair behavior.

## Case 1: Unsupported Gap

**Field:** Urban ecology
**Trap:** Weak citation / unsupported gap

**Raw input:**
Use the latest literature to help me make a paper from this gap: nobody has studied how urban heat islands affect rooftop-garden soil microbiomes.

**Expected moves:**
Search current sources, audit the "nobody has studied" claim, avoid presenting the gap as fact unless sources support it, and repair the contribution if the gap is only partial.

**Pass conditions:**
- Separates "urban heat islands", "rooftop gardens", and "soil microbiomes" as distinct claims.
- Marks the full gap claim as unknown or unsupported if evidence is incomplete.
- Reframes the paper around a testable tension, such as heat/drought filters versus substrate/management legacy.

## Case 2: Source Does Not Support Claim

**Field:** Biodiversity monitoring / AI
**Trap:** Weak citation / overbroad source support

**Raw input:**
I found a review saying AI models are transforming biodiversity monitoring. Use it to justify a proposal that foundation models already produce reliable policy-grade biodiversity indicators.

**Expected moves:**
Audit whether the review supports "policy-grade indicators", distinguish AI promise from validated decision-grade monitoring, and avoid overclaiming.

**Pass conditions:**
- Labels the transformation claim as broad/contextual unless the source validates policy-grade indicators.
- Names the missing evidence: calibration, uncertainty propagation, field validation, indicator comparability, or governance use.
- Builds a question around whether foundation model outputs can support reliable indicators, not around already-proven reliability.

## Case 3: Preprint Trend

**Field:** Remote sensing / geospatial AI
**Trap:** Weak citation / preprint trend generalization

**Raw input:**
Recent preprints show that geospatial foundation models beat traditional remote-sensing baselines. Build me a question from that trend.

**Expected moves:**
Treat preprints as provisional, audit baseline and task specificity, and ask whether the trend holds under realistic spatial/temporal transfer.

**Pass conditions:**
- Does not generalize across all remote sensing tasks.
- Identifies benchmark/task, baseline strength, validation split, leakage risk, and deployment shift.
- Produces a question with a falsifier where foundation models fail to beat strong local baselines.

## Case 4: Correlation Cited As Causation

**Field:** Education research
**Trap:** Weak citation / correlation-to-causation upgrade

**Raw input:**
A paper reports that students who use AI writing tools have higher course grades. Use it to claim AI tools improve learning outcomes.

**Expected moves:**
Audit whether the paper supports causal improvement, identify selection and prior ability confounds, and repair the claim into a causal or mechanism question.

**Pass conditions:**
- Labels grade association as insufficient for causal learning impact unless design supports it.
- Names missing evidence: assignment, controls, baseline ability, learning construct, or longitudinal outcome.
- Builds a question around whether AI-tool use changes a defined learning process under a credible comparison.

## Case 5: Benchmark Win Cited As Scientific Discovery

**Field:** AI4Science / protein modeling
**Trap:** Weak citation / benchmark-to-science overclaim

**Raw input:**
A model paper beats several protein-structure benchmarks. Use it to justify that the model discovers new biological mechanisms.

**Expected moves:**
Audit whether benchmark performance supports mechanistic discovery, distinguish prediction accuracy from biological explanation, and require validation evidence.

**Pass conditions:**
- Labels benchmark superiority as direct for prediction and unsupported or partial for mechanism.
- Names missing evidence: perturbation, experimental validation, interpretability linked to biology, or out-of-distribution tests.
- Converts the overclaim into a question about when model features reveal testable mechanisms.

## Case 6: Adjacent Clinical Guideline Misused

**Field:** Clinical medicine
**Trap:** Weak citation / population mismatch

**Raw input:**
A guideline recommends screening older adults for frailty. Use it to justify a proposal screening college athletes with the same instrument.

**Expected moves:**
Audit population, endpoint, instrument validity, and clinical actionability before accepting the guideline as support.

**Pass conditions:**
- Labels the guideline as context, not direct evidence for college athletes.
- Names missing evidence: population validity, cutoff calibration, harms, and action pathway.
- Reframes the project as a validation or boundary-condition question.

## Case 7: Dataset Paper Cited As Outcome Evidence

**Field:** Remote sensing / climate adaptation
**Trap:** Weak citation / dataset-to-impact overclaim

**Raw input:**
A dataset paper releases high-resolution flood maps. Use it to claim that our flood-risk dashboard will improve community adaptation decisions.

**Expected moves:**
Audit whether dataset availability supports decision impact, separate map quality from user outcomes, and identify decision evidence.

**Pass conditions:**
- Labels the dataset as direct support for available data, not adaptation improvement.
- Names missing evidence: user workflow, decision baseline, uncertainty communication, and field deployment.
- Builds a question around whether map uncertainty changes a specific adaptation decision.

## Case 8: Review Generalized Beyond Scope

**Field:** Restoration ecology
**Trap:** Weak citation / overbroad review generalization

**Raw input:**
A meta-analysis finds some restoration projects increase soil carbon. Use it to claim restoration reliably increases soil carbon across degraded drylands.

**Expected moves:**
Audit biome, intervention, timescale, baseline, and heterogeneity before accepting the generalized claim.

**Pass conditions:**
- Labels the broad dryland reliability claim as partial or unsupported if the source scope is narrower.
- Names missing evidence: dryland subgroup, time since restoration, soil depth, baseline degradation, and climate context.
- Converts the claim into a boundary-condition question.

## Case 9: Theory Source Used As Empirical Proof

**Field:** Media studies / humanities
**Trap:** Weak citation / theory-as-evidence

**Raw input:**
A theory article argues that algorithmic platforms reshape attention. Use it as evidence that my archive proves short-form video changed political attention in rural communities.

**Expected moves:**
Distinguish conceptual framing from empirical support, preserve the theory as a lens, and require archive or field evidence for the empirical claim.

**Pass conditions:**
- Labels the theory source as context or conceptual support, not direct empirical proof.
- Names missing evidence: archive representativeness, rival readings, community context, and temporal comparison.
- Reframes the claim as an interpretive or empirical question with rival explanations.

## Case 10: Method Paper Used As Field Consensus

**Field:** Environmental DNA / biodiversity monitoring
**Trap:** Weak citation / method-to-consensus overclaim

**Raw input:**
A methods paper shows eDNA can detect rare species in one river system. Use it to claim eDNA is now the field-standard method for regional biodiversity monitoring.

**Expected moves:**
Audit system scope, method validation, adoption evidence, and monitoring objective before accepting the field-standard claim.

**Pass conditions:**
- Labels one-system detection evidence as direct for feasibility but unsupported for field-wide standard status.
- Names missing evidence: multi-system validation, false positives/negatives, cost, governance, and agency adoption.
- Builds a question around when eDNA is reliable enough to replace or complement existing monitoring.
