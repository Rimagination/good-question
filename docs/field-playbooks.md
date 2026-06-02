# Field Playbooks

Use this guide when you are not sure how to feed your field-specific research situation into `good-question`.

The skill works best when you do not only provide a topic. Give it the uncertainty, the data situation, the decision or theory at stake, and the constraint that makes the project hard.

## Universal Input Recipe

```text
Use $good-question in [mentor / reviewer / collaborator / grant] mode.

Field and subfield:
Current rough idea or frustration:
What I already have: data / methods / collaborators / field sites / samples / compute:
Target output: paper / thesis proposal / grant / pilot / rebuttal / long-term direction:
Who should care: theory / method / management / policy / clinical / engineering / community:
Hard constraints: time / sample size / ethics / access / seasonality / compute / equipment:
My biggest worry:
```

If the question depends on current literature, add:

```text
First build a source-backed Domain Brief with an Evidence ledger, then generate questions.
```

## Mode Choice

| Need | Ask for this mode |
|---|---|
| I am early and confused | Mentor mode |
| I need the harshest objections | Reviewer mode |
| I have data and need a next step | Collaborator mode |
| I am writing a proposal or fund | Grant mode |

## Ecology

**Give the skill:** ecosystem or organism, spatial/temporal scale, focal process, existing observations, field constraints, and whether the target is mechanism, prediction, management, or theory.

**Common weak questions:**
- Study biodiversity in site X.
- Test whether X affects Y without rival mechanisms.
- Describe patterns across gradients without a decision or theory at stake.

**Better prompts:**
```text
Use $good-question in mentor mode.
Field: community ecology / plant functional traits.
I have: [sites, years, traits, remote sensing, climate variables].
Current confusion: I see a pattern, but I do not know whether it is driven by environment, traits, species turnover, or sampling artifact.
Target: thesis proposal.
```

**Good questions often ask:** which mechanism explains a pattern, where a general relationship fails, or which management decision changes if the answer is known.

**Reviewer attacks:** site-specific story, missing confounder, weak causal claim, scale mismatch, no negative-result value.

## Remote Sensing

**Give the skill:** sensor, target variable, ground truth quality, spatial/temporal scale, baseline model, decision use, and deployment setting.

**Common weak questions:**
- Apply a new model to a new region.
- Improve a benchmark without saying what the benchmark diagnoses.
- Produce a map without a user or decision.

**Better prompts:**
```text
Use $good-question in reviewer mode.
Field: remote sensing for crop yield / biomass / land cover.
I want to use: [model or sensor].
Ground truth: [source, scale, noise, years].
Baseline: [simple model or current workflow].
Decision: [forecast, management, policy, monitoring].
My worry: the model may just learn region or year artifacts.
```

**Good questions often ask:** what uncertainty the sensor/model resolves, when transfer fails, whether accuracy changes a decision, and whether simpler baselines perform just as well.

**Reviewer attacks:** weak validation, leakage, no simple baseline, scale mismatch, accuracy gain without practical value.

## Machine Learning And AI4Science

**Give the skill:** scientific target, baseline, data-generating process, evaluation split, failure mode, and what scientific belief should change.

**Common weak questions:**
- Use foundation models / LLMs / transformers for X.
- Beat a leaderboard without scientific interpretation.
- Treat prediction as explanation.

**Better prompts:**
```text
Use $good-question in collaborator mode.
Field: AI4Science / scientific machine learning.
Method I want to use: [model].
Scientific uncertainty: [what we do not understand].
Baselines: [simple, mechanistic, empirical].
Failure mode: [domain shift, leakage, extrapolation, calibration].
I need: a two-week pilot and kill criterion.
```

**Good questions often ask:** what scientific uncertainty the model resolves, whether the model beats meaningful baselines, and whether prediction gains survive out-of-distribution tests.

**Reviewer attacks:** benchmark disconnected from science, leakage, overclaiming mechanism, weak baseline, no uncertainty calibration.

## Social Science

**Give the skill:** population, construct, comparison, mechanism, data source, identification strategy, ethics, and who would update their belief.

**Common weak questions:**
- What is the impact of X on Y?
- Survey attitudes about X.
- Claim policy relevance without a decision-maker.

**Better prompts:**
```text
Use $good-question in mentor mode.
Field: sociology / communication / political science / education.
Phenomenon: [X].
Outcome or construct: [Y].
Possible mechanisms: [A, B, C].
Data: [survey, platform trace, interviews, experiment, admin data].
My concern: construct validity / selection bias / causal identification.
```

**Good questions often ask:** which mechanism links X to Y, what rival explanation could produce the same pattern, and what comparison makes the claim credible.

**Reviewer attacks:** unclear construct, selection bias, weak identification, ethical risk, overgeneralization.

## Biomedicine

**Give the skill:** disease or biological process, endpoint, comparator, cohort or model system, mechanism, translational decision, and ethical or sample constraints.

**Common weak questions:**
- Find biomarkers for X.
- Test whether treatment A improves outcome B without a mechanism or comparator.
- Treat a small cohort association as clinical readiness.

**Better prompts:**
```text
Use $good-question in reviewer mode.
Field: biomedicine / translational biology.
Candidate idea: [biomarker, pathway, intervention].
Endpoint: [clinical or mechanistic endpoint].
Comparator: [standard, null, alternative marker, baseline].
Data/model: [cohort, organoid, animal model, trial, public dataset].
My worry: confounding, power, endpoint validity, or translation.
```

**Good questions often ask:** what mechanism or clinical decision changes, what evidence distinguishes correlation from mechanism, and what negative result should stop translation.

**Reviewer attacks:** underpowered cohort, confounding, indirect endpoint, post hoc mechanism, no actionable decision.

## Humanities And Interpretive Fields

`good-question` can still help, but do not force every project into an experiment. Treat "falsifier" as a serious counter-reading, archival disconfirmation, boundary case, or interpretive rival.

**Give the skill:** corpus, archive, period, interpretive tension, rival readings, method, and contribution to a debate.

**Common weak questions:**
- Study theme X in author/period Y.
- Apply theory T to text/corpus S.
- Claim novelty without a debate.

**Better prompts:**
```text
Use $good-question in mentor mode.
Field: history / literature / media studies / philosophy.
Corpus or archive:
Current interpretive tension:
Rival readings:
What debate this should change:
Evidence I can access:
```

**Good questions often ask:** what prevailing interpretation becomes unstable, what rival reading better explains the evidence, and what archive/corpus boundary limits the claim.

**Reviewer attacks:** descriptive theme-spotting, theory as decoration, weak archive, no debate changed.

## Engineering And Systems

**Give the skill:** system boundary, user or operator, failure mode, current baseline, constraints, evaluation metric, and deployment environment.

**Common weak questions:**
- Build a platform/tool/system for X.
- Improve performance without naming the operational bottleneck.
- Add complexity before proving a need.

**Better prompts:**
```text
Use $good-question in grant or collaborator mode.
Field: engineering / systems / human-computer interaction.
System or workflow:
Current failure mode:
Baseline:
User/operator:
Constraints:
Success and kill criteria:
```

**Good questions often ask:** which failure mode the system resolves, whether a simpler workflow works, and what evidence would stop the build.

**Reviewer attacks:** solution-first, no user need, weak evaluation, lab success not deployment success, unclear failure criterion.

## What To Ask For After A Good Question Card

Once a card looks promising, ask for one of these:

```text
Turn the best card into a two-week pilot with decision gates.
```

```text
Stress-test this card as a hostile reviewer.
```

```text
Rewrite this as a thesis proposal / paper introduction / grant specific aim.
```

```text
Build a source-backed Domain Brief before we commit.
```
