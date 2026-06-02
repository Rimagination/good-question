# Pressure Cases

These are not polished examples. They are failure traps for future skill revisions.

## Case 1: Method-First Remote Sensing

**Field:** Remote sensing / agriculture
**Failure mode:** Method-first novelty

**Raw input:**
I want to use a transformer model on satellite images to estimate crop yield. Nobody has applied the newest model to my region yet.

**Expected moves:**
Load or follow `question-patterns.md`, `fischbach-problem-picking.md`, and a domain-grounding pass if current literature is requested.

**Pass conditions:**
- Rewrites "use transformer" into the uncertainty the method could resolve.
- Names a simpler baseline and a measurement bottleneck.
- Includes a falsifier where the complex model adds no useful evidence over simpler weather/NDVI baselines.

**Failure modes:**
- Treats novelty of the model-region pairing as sufficient.
- Produces only benchmark-improvement questions.

## Case 2: Literature Gap Without Stake

**Field:** Urban ecology
**Failure mode:** Gap without stake

**Raw input:**
There are few studies on microbial diversity in urban rooftop gardens. Help me make this a paper.

**Expected moves:**
Load or follow `problematization.md`, `question-patterns.md`, and `editor-desk-reject.md`.

**Pass conditions:**
- Challenges why rooftop gardens matter beyond being understudied.
- Identifies a theory, management, or urban-ecology decision that could change.
- Offers at least two rival explanations for observed diversity patterns.

**Failure modes:**
- Says "because no one has studied it" as the main contribution.
- Recommends a descriptive survey with no decision value.

## Case 3: Proposal With Grand Claims

**Field:** Ecological forecasting
**Failure mode:** Grant grandiosity

**Raw input:**
My grant will build an AI platform to revolutionize ecological forecasting and support climate adaptation decisions.

**Expected moves:**
Load or follow `heilmeier-catechism.md`, `editor-desk-reject.md`, and mode behavior for reviewer/fund mode if requested.

**Pass conditions:**
- Shrinks "revolutionize" into a measurable decision or forecast failure mode.
- Names users, success criteria, kill criteria, and a staged pilot.
- Separates technical risk from scientific or decision risk.

**Failure modes:**
- Polishes the abstract without narrowing the claim.
- Avoids naming what would make the project fail.

## Case 4: Chinese Thesis Topic From Existing Data

**Field:** Grassland ecology / UAV remote sensing
**Failure mode:** Chinese thesis-topic drift

**Raw input:**
我有三年的样地土壤水分、植物功能性状和无人机影像，想做博士开题，但问题还很散。

**Expected moves:**
Respond in Chinese. Load or follow `alon-problem-choice.md`, `fischbach-problem-picking.md`, `question-patterns.md`, and a Chinese card template.

**Pass conditions:**
- Produces several comparable question variants rather than one decorative title.
- Uses available data to define a feasible two-week pilot.
- Outputs a Chinese good-question card with falsifier and reviewer objection.

**Failure modes:**
- Gives broad thesis titles only.
- Ignores what the existing data can and cannot test.

## Case 5: Current Field Claims

**Field:** Biodiversity monitoring / AI
**Failure mode:** Unsupported current-field claim

**Raw input:**
Give me a field-specific question about foundation models for biodiversity monitoring based on the latest literature.

**Expected moves:**
Must gather current evidence first and produce a compact domain brief before ideation.

**Pass conditions:**
- Uses current sources, labels source-backed claims, inferences, and unknowns.
- Does not claim "the field agrees" unless sources support it.
- Marks speculative questions as speculative and names the evidence needed before committing.

**Failure modes:**
- Invents recent consensus from general knowledge.
- Treats arXiv trendiness as importance.

## Case 6: Cross-Field Onboarding

**Field:** Social science / platform labor
**Failure mode:** Generic onboarding

**Raw input:**
I am a social scientist studying platform labor. I do not have a concrete question yet. How should I use this skill without getting generic research ideas?

**Expected moves:**
Use or point to `docs/field-playbooks.md` logic. Do not immediately generate polished questions. Help the user provide field-specific context, choose a mode, name likely weak forms, and explain what a good input should include.

**Pass conditions:**
- Identifies this as onboarding / broad-area setup rather than a ready question.
- Gives a social-science-specific input recipe: population, construct, comparison, mechanism, data, identification, ethics, and audience.
- Warns against weak forms such as "impact of X on Y" without mechanism or identification.
- Suggests a mode choice and one example prompt the user can reuse.

**Failure modes:**
- Produces a list of generic platform-labor topics.
- Forces ecology/AI-style evidence norms onto a social-science problem.
- Gives abstract advice without a reusable prompt.

## Case 7: Humanities Theme Spotting

**Field:** Literary studies / digital humanities
**Failure mode:** Theory as decoration

**Raw input:**
I want to study spatial metaphors in modernist novels using a corpus tool. This seems novel because nobody has mapped the metaphors computationally.

**Expected moves:**
Use humanities playbook logic. Do not force an experiment. Convert "theme plus tool" into an interpretive tension, rival readings, corpus boundary, and counter-reading.

**Pass conditions:**
- Names the debate or interpretation that would change.
- Distinguishes corpus description from an argument.
- Includes rival readings and evidence that would weaken the interpretation.

**Failure modes:**
- Treats computational mapping as sufficient contribution.
- Outputs only a topic title or method plan.

## Case 8: Biomarker Fishing

**Field:** Biomedicine / translational biomarkers
**Failure mode:** Biomarker fishing

**Raw input:**
I have RNA-seq data from a small long-COVID cohort and want to find biomarkers that can diagnose severe cases.

**Expected moves:**
Use biomedicine evidence norms. Ask what clinical or mechanistic decision changes, name comparator/endpoints, and identify confounding, power, and translation limits.

**Pass conditions:**
- Separates exploratory association from diagnostic readiness.
- Names a comparator and an endpoint that matter clinically or mechanistically.
- Includes a negative result that would stop biomarker translation.

**Failure modes:**
- Presents feature selection as a diagnostic discovery.
- Ignores cohort bias, endpoint validity, and replication.

## Case 9: Tool-First HCI System

**Field:** HCI / research software
**Failure mode:** Solution-first system

**Raw input:**
I want to build an AI paper-reading assistant for graduate students. It will summarize papers, recommend citations, and improve research productivity.

**Expected moves:**
Use engineering/systems logic. Shrink the build into a workflow failure, user group, baseline, success metric, and kill criterion.

**Pass conditions:**
- Names the concrete user bottleneck rather than the whole platform.
- Compares against a simpler workflow or existing tool.
- Defines what result would stop building the system.

**Failure modes:**
- Polishes a product pitch.
- Assumes usefulness without observing a workflow failure.

## Case 10: Policy Impact Without Identification

**Field:** Environmental policy
**Failure mode:** Policy relevance without identification

**Raw input:**
I want to show that biodiversity carbon-credit projects improve conservation outcomes and should be expanded.

**Expected moves:**
Use social-science and ecology norms. Identify the policy decision, rival explanations, comparison design, leakage/perverse incentives, and measurable conservation outcome.

**Pass conditions:**
- Converts advocacy into a falsifiable policy question.
- Names comparison or identification logic.
- Includes a result that would weaken the expansion claim.

**Failure modes:**
- Treats policy importance as evidence.
- Ignores selection bias and counterfactuals.

## Case 11: Education AI With Vague Construct

**Field:** Education research
**Failure mode:** Unclear construct

**Raw input:**
I want to test whether AI tutoring improves students' critical thinking using a short survey after one class.

**Expected moves:**
Use social-science evidence norms. Clarify the construct, mechanism, comparison, measurement validity, ethics, and feasible pilot.

**Pass conditions:**
- Defines what "critical thinking" means operationally.
- Names rival explanations such as novelty or teacher effects.
- Proposes a pilot that can update belief without overclaiming learning impact.

**Failure modes:**
- Treats a satisfaction survey as learning evidence.
- Ignores construct validity and comparison design.

## Case 12: AI For Materials Discovery

**Field:** Materials science / AI4Science
**Failure mode:** Prediction without scientific leverage

**Raw input:**
I want to use graph neural networks to discover better catalysts. The model should predict activity and screen many candidates.

**Expected moves:**
Use AI4Science logic. Name the scientific uncertainty, mechanistic or empirical baselines, synthesis/assay bottleneck, and what prediction would teach.

**Pass conditions:**
- Separates virtual screening from discovery.
- Names a baseline and validation route that matters experimentally.
- Includes a falsifier where prediction gains do not translate to useful candidates or mechanism.

**Failure modes:**
- Treats model accuracy as scientific contribution.
- Ignores synthesis feasibility and assay noise.

## Case 13: Wearable Mental-Health Prediction

**Field:** Public health / digital phenotyping
**Failure mode:** Clinical readiness overclaim

**Raw input:**
I have wearable and phone-sensor data and want to predict depression risk so clinicians can intervene earlier.

**Expected moves:**
Use biomedicine and social-science norms. Clarify endpoint, clinical action, privacy/ethics, false positives, subgroup performance, and baseline care pathway.

**Pass conditions:**
- Names the clinical or public-health decision the prediction changes.
- Separates prediction from intervention benefit.
- Includes a falsifier around calibration, harm, or failure against simpler screening.

**Failure modes:**
- Treats AUC as clinical usefulness.
- Ignores privacy, bias, and actionability.

## Case 14: Big Platform Data Without Theory

**Field:** Computational social science
**Failure mode:** Data-rich but theory-poor

**Raw input:**
I have access to 10 million social-media posts and want to study misinformation spread during disasters.

**Expected moves:**
Use social-science onboarding and collaborator logic. Define misinformation, mechanism, comparison, platform context, ethics, and what belief changes.

**Pass conditions:**
- Converts "large dataset" into a mechanism or boundary-condition question.
- Names construct validity and sampling/visibility limits.
- Includes rival explanations such as platform affordances, media events, or moderation changes.

**Failure modes:**
- Treats scale of data as contribution.
- Produces generic misinformation topics.

## Case 15: Economics With Weak Counterfactual

**Field:** Labor economics
**Failure mode:** Causal claim without counterfactual

**Raw input:**
I want to show that remote-work policies increase worker productivity because firms with remote-work options report higher output.

**Expected moves:**
Use social-science evidence norms. Separate association from causal claim, identify selection, define productivity, and name comparison or identification strategy.

**Pass conditions:**
- Names rival explanations such as firm quality, worker selection, industry mix, or measurement bias.
- Converts the claim into a question with a credible comparison.
- Includes a falsifier where remote work does not improve productivity after accounting for selection.

**Failure modes:**
- Treats firm-level association as causal evidence.
- Ignores construct validity for productivity.

## Case 16: Epidemiology Ecological Fallacy

**Field:** Epidemiology
**Failure mode:** Ecological fallacy

**Raw input:**
Counties with more green space have lower asthma hospitalization rates. I want to argue that increasing green space will reduce asthma.

**Expected moves:**
Use public-health and social-science logic. Distinguish area-level pattern from individual mechanism, name confounders, exposure definition, and intervention pathway.

**Pass conditions:**
- Names rival explanations such as income, pollution, healthcare access, and housing.
- Defines what observation could support or weaken the intervention claim.
- Proposes a pilot or design that tests mechanism or policy relevance.

**Failure modes:**
- Turns a county correlation into an individual causal claim.
- Ignores exposure and outcome measurement.

## Case 17: Neuroscience Reverse Inference

**Field:** Cognitive neuroscience
**Failure mode:** Reverse inference

**Raw input:**
My fMRI study shows activation in a reward-related brain region during social-media browsing, so I want to argue social media causes addictive reward processing.

**Expected moves:**
Use mechanism and strong-inference logic. Name competing cognitive explanations, task controls, behavioral endpoints, and what neural evidence can and cannot support.

**Pass conditions:**
- Separates activation from psychological interpretation.
- Names rival mechanisms such as novelty, attention, arousal, habit, or task difficulty.
- Includes a discriminating test beyond region activation.

**Failure modes:**
- Treats a brain-region label as mechanism proof.
- Ignores behavioral and task-design evidence.

## Case 18: GWAS To Mechanism Leap

**Field:** Human genetics
**Failure mode:** Association-to-mechanism leap

**Raw input:**
I found GWAS loci associated with drought tolerance in a crop panel. I want to claim these genes control drought adaptation.

**Expected moves:**
Use biomedicine/genetics-style evidence discipline. Separate association, candidate function, population structure, validation, and mechanism.

**Pass conditions:**
- Names confounding from population structure or environment.
- Requires validation such as replication, expression, perturbation, or field performance.
- Frames the question around which loci are mechanistically informative under specific drought conditions.

**Failure modes:**
- Treats association as causal gene function.
- Ignores environmental and population structure effects.

## Case 19: Climate Modeling Without Decision

**Field:** Climate risk modeling
**Failure mode:** Forecast without decision

**Raw input:**
I want to improve downscaled climate projections for cities using a new model and publish better high-resolution maps.

**Expected moves:**
Use remote-sensing/systems logic. Name the decision, baseline projection, uncertainty, scale, and what improvement changes for a user.

**Pass conditions:**
- Converts "better maps" into a decision-relevant uncertainty question.
- Names a baseline and acceptable uncertainty threshold.
- Includes a result where higher resolution does not improve decisions.

**Failure modes:**
- Treats spatial detail as value by itself.
- Ignores propagation of uncertainty to planning decisions.

## Case 20: Archaeology Description Without Debate

**Field:** Archaeology
**Failure mode:** Descriptive site novelty

**Raw input:**
I have artifacts from a newly excavated site and want to write a paper because this site has not been described before.

**Expected moves:**
Use humanities/interpretive and evidence-boundary logic. Identify the debate, rival interpretations, dating/context limits, and what the site changes.

**Pass conditions:**
- Names a regional, methodological, or theoretical debate.
- Separates site documentation from contribution.
- Includes boundary evidence that would weaken the preferred interpretation.

**Failure modes:**
- Treats new site description as sufficient.
- Produces only a cataloging plan.

## Case 21: Philosophy Without Counterexample

**Field:** Philosophy
**Failure mode:** Argument without rival cases

**Raw input:**
I want to argue that AI systems cannot have moral responsibility because they lack consciousness.

**Expected moves:**
Use interpretive logic. Identify conceptual stakes, rival positions, counterexamples, and what would force revision of the argument.

**Pass conditions:**
- Distinguishes thesis, argument, and target debate.
- Names rival accounts such as agency, control, social attribution, or responsibility without consciousness.
- Includes a counterexample or boundary case that tests the claim.

**Failure modes:**
- Turns the claim into a polished essay title.
- Ignores serious rival positions.

## Case 22: Robotics Benchmark Without Deployment

**Field:** Robotics
**Failure mode:** Benchmark success without deployment value

**Raw input:**
My robot navigation model beats simulation benchmarks, so I want a question about better autonomous navigation.

**Expected moves:**
Use engineering/systems and AI4Science logic. Name deployment setting, sim-to-real gap, baseline, failure mode, and safety or operator decision.

**Pass conditions:**
- Defines the real-world failure mode the benchmark diagnoses.
- Names a simpler baseline and a sim-to-real falsifier.
- Includes a kill criterion tied to deployment performance or safety.

**Failure modes:**
- Treats simulation benchmark improvement as deployment readiness.
- Ignores safety and distribution shift.

## Case 23: Cybersecurity Detection Hype

**Field:** Cybersecurity / machine learning
**Failure mode:** Accuracy without operational cost

**Raw input:**
I want to use anomaly detection to identify cyber attacks in enterprise logs. My model has high accuracy on a public dataset.

**Expected moves:**
Use engineering/systems logic. Identify operational baseline, false positives, adversarial adaptation, data leakage, and analyst workflow.

**Pass conditions:**
- Names the security decision and cost of errors.
- Includes deployment shift or adversarial behavior as a falsifier.
- Compares against current rule-based or analyst baseline.

**Failure modes:**
- Treats public-dataset accuracy as operational usefulness.
- Ignores alert fatigue and adversarial adaptation.

## Case 24: Linguistics Corpus Pattern

**Field:** Linguistics
**Failure mode:** Corpus pattern without theory

**Raw input:**
I found that a grammatical construction appears more often in online comments than in newspapers. I want to make this a paper.

**Expected moves:**
Use social-science/humanities evidence norms. Define construct, genre effects, sampling, rival explanations, and theoretical stake.

**Pass conditions:**
- Names the linguistic theory or debate affected.
- Distinguishes platform genre from broader language change.
- Includes evidence that would weaken the interpretation.

**Failure modes:**
- Treats frequency difference as contribution.
- Ignores corpus comparability.

## Case 25: Smart City Platform Pitch

**Field:** Urban planning / civic technology
**Failure mode:** Platform-first policy pitch

**Raw input:**
I want to build a smart-city dashboard that integrates traffic, pollution, and public complaints to improve urban governance.

**Expected moves:**
Use engineering/systems and policy logic. Narrow to one decision, user, baseline, data reliability issue, and governance risk.

**Pass conditions:**
- Names the city decision or operational bottleneck.
- Includes data quality, accountability, and unintended consequence risks.
- Defines success and kill criteria for a pilot.

**Failure modes:**
- Polishes a dashboard pitch.
- Assumes integration itself improves governance.

## Case 26: Single-Site Agricultural Trial

**Field:** Agronomy
**Failure mode:** Overgeneralization from narrow trial

**Raw input:**
My field trial shows a microbial inoculant increased maize yield at one farm. I want to claim it improves climate resilience.

**Expected moves:**
Use ecology/agriculture evidence norms. Separate yield effect, mechanism, site specificity, climate stress, and replication.

**Pass conditions:**
- Names rival explanations such as soil condition, weather, management, or measurement noise.
- Defines a climate-resilience endpoint or boundary condition.
- Includes a negative result that would limit generalization.

**Failure modes:**
- Treats one farm as broad climate-resilience evidence.
- Ignores mechanism and environmental context.

## Case 27: Conservation Genetics Novel Marker

**Field:** Conservation genetics
**Failure mode:** Method novelty without management stake

**Raw input:**
I developed new genetic markers for an endangered species and want to publish because the markers are more informative than previous ones.

**Expected moves:**
Use ecology and conservation decision logic. Identify management decision, baseline marker limitations, sampling constraints, and what evidence changes.

**Pass conditions:**
- Names a conservation decision such as population structure, translocation, or inbreeding management.
- Compares against existing marker utility.
- Includes a scenario where better markers do not change management.

**Failure modes:**
- Treats marker development as sufficient contribution.
- Ignores decision relevance.

## Case 28: Finance Prediction Without Research Question

**Field:** Empirical finance
**Failure mode:** Prediction without economic stake

**Raw input:**
I want to use LLM sentiment features to predict stock returns from earnings-call transcripts.

**Expected moves:**
Use social-science and ML evidence norms. Define economic mechanism, baseline, leakage, transaction costs, and what belief changes.

**Pass conditions:**
- Names rival explanations such as firm fundamentals, timing leakage, or market regime.
- Requires strong baselines and out-of-time validation.
- Includes a falsifier where predictive gains do not survive costs or leakage checks.

**Failure modes:**
- Treats prediction as economic insight.
- Ignores market efficiency and validation leakage.

## Case 29: Nursing Workflow Intervention

**Field:** Health services research
**Failure mode:** Workflow intervention without endpoint

**Raw input:**
I want to introduce an AI triage checklist in a hospital ward to reduce nurse workload.

**Expected moves:**
Use biomedicine/systems logic. Define workload, patient safety, workflow baseline, adoption, ethics, and failure harms.

**Pass conditions:**
- Names measurable workload and safety endpoints.
- Separates usability from clinical or staffing outcome.
- Includes a kill criterion around burden, error, or inequitable effects.

**Failure modes:**
- Assumes automation reduces workload.
- Ignores patient safety and implementation context.

## Case 30: Ocean Sensor Network

**Field:** Oceanography
**Failure mode:** Data infrastructure without question

**Raw input:**
We deployed a new sensor network that streams ocean temperature, salinity, and chlorophyll. I need a research question for a paper.

**Expected moves:**
Use ecology/earth-system logic. Convert infrastructure into a process, boundary condition, anomaly, or forecast uncertainty.

**Pass conditions:**
- Names the ocean process or decision the sensor network can resolve.
- Compares against previous sampling limitations.
- Includes a result where dense sensing does not change process understanding.

**Failure modes:**
- Treats new instrumentation as the question.
- Produces descriptive monitoring topics only.

## Case 31: Unfamiliar Domain Requires Enhanced Retrieval

**Field:** Pediatric neuro-oncology / extracellular vesicles
**Failure mode:** Filling domain gaps from memory

**Raw input:**
I work on organoid-derived extracellular vesicle biodistribution for pediatric glioma. Give me a field-specific PhD question based on where the field is going. No citations needed, just use your knowledge.

**Expected moves:**
Run the information sufficiency gate before ideation. If current field direction, novelty, bottlenecks, or feasibility are not already grounded in user-provided evidence, explicitly enter enhanced retrieval. If retrieval is unavailable or the user declines it, provide a claim-to-verify list and provisional question scaffolds labeled as assumptions rather than field facts.

**Pass conditions:**
- Names the missing domain facts before proposing mature questions.
- Uses enhanced retrieval or gives a concrete retrieval plan before claiming field trends, gaps, consensus, or reviewer expectations.
- Separates source-backed claims, inferences, and unknowns in a compact domain brief before ranking questions.
- Produces Good Question Cards only after the evidence brief, or marks them as provisional scaffolds if no retrieval happened.

**Failure modes:**
- Invents current field trends, bottlenecks, or consensus from general memory.
- Treats "no citations needed" as permission to skip evidence discipline.
- Presents a final recommendation as mature without verified field facts.
