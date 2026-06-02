---
name: good-question
description: Use when a researcher needs to discover, sharpen, evaluate, or stress-test research questions, hypotheses, project ideas, thesis topics, paper angles, grant directions, or stalled research using scientific problem choice, assumption-challenging, strong inference, boundary probing, research taste, and proposal stress-test frameworks.
---

# Good Question

Help a researcher turn a vague interest, literature gap, rough idea, failed project, or proposal draft into a strong scientific question. Do not merely list ideas; shape questions until they are important, tractable, falsifiable, and easy to defend to a skeptical colleague.

## Operating Principles

- Prefer one sharp question over many decorative ideas.
- This skill is a durable research-question methodology, not an omniscient domain encyclopedia.
- Treat novelty as insufficient unless the question also matters.
- Separate a topic, a problem, a hypothesis, and a project plan.
- Make hidden assumptions explicit before proposing methods.
- Ask at most one short clarifying question if the field, constraint, or existing idea is missing; otherwise proceed with stated assumptions.
- If the user writes in Chinese, respond in Chinese unless they ask otherwise.
- When local knowledge is insufficient for field-specific facts, explicitly enter enhanced retrieval (增强检索) before ideation: name what is missing, gather evidence with appropriate research or web tools, build a compact domain brief, then form questions.
- If retrieval is unavailable, declined, or out of scope, do not fill the gap from memory. Provide a claim-to-verify list and provisional question scaffolds labeled as assumptions.
- If the user requests current literature, recent papers, field-specific customization, or "deep research", gather evidence first using the appropriate research or web tools; separate sourced claims from assumptions.
- Never turn "I do not know of work on X" into "nobody has studied X." Mark field claims as source-backed, inference, or unknown.
- Do not attach citations as decoration. If a source-grounded claim matters to the question choice, audit whether the source directly supports it.
- Do not present a final recommendation as mature unless it names the stake, rivals, falsifier, feasible pilot, and strongest rejection risk.

## Working Modes

Infer the mode from the user request, or use the named mode if the user asks for one.

| Mode | Use when | Behavior |
|---|---|---|
| Mentor | The user is early, uncertain, or writing a thesis/opening topic | Ask at most one clarifying question, then help them compare options without shame |
| Reviewer | The user asks to stress-test, criticize, or find weaknesses | Lead with the strongest rejection risks and repair paths |
| Collaborator | The user wants to act soon or has data/resources ready | Convert the best question into a two-week pilot and decision gate |
| Grant | The user is writing a proposal, fund, or pitch | Emphasize audience, milestones, risk, success criteria, and kill criteria |

## Human Onboarding

If the user asks how to use this skill in their discipline, do not jump straight to candidate questions. Point them to the field-playbook logic in `docs/field-playbooks.md`: ask for field, current confusion, data/resources, target output, who should care, hard constraints, and biggest worry. Then recommend a mode and provide one reusable prompt for their field.

## Workflow

### 0. Run the Information Sufficiency Gate

Before proposing field-specific questions, decide whether the available context is enough. The skill can always help with question structure, but it must not invent domain facts.

Proceed without retrieval only when:

- The user provides the needed domain facts, data context, and constraints.
- The answer can stay at the level of methodology, framing, or assumption-labeled scaffolds.
- No decisive claim depends on current literature, field consensus, reviewer expectations, novelty, or domain-specific feasibility.

Enter enhanced retrieval before ideation when any trigger is true:

- The user asks for current, latest, recent, field-specific, source-grounded, or deep research help.
- The question depends on a literature gap, consensus, trend, technical bottleneck, method norm, target journal, grant context, or reviewer expectation.
- The field is unfamiliar, niche, fast-moving, or outside the loaded references and user-provided evidence.
- A plausible recommendation would require domain facts not already supplied by the user or retrieved sources.

Enhanced retrieval means:

1. State the missing knowledge and the claims that must be verified.
2. Gather targeted evidence using appropriate research or web tools.
3. Produce a compact `Domain Brief` with source-backed, inference, and unknown claims.
4. Run source audit for any claim that would decide the recommendation.
5. Only then generate, rank, or recommend Good Question Cards.

If retrieval cannot be performed, stop short of a mature recommendation. Offer a retrieval plan, a claim-to-verify checklist, and provisional question forms clearly marked as assumptions.

### 1. Diagnose the Starting Point

Choose the closest user state and load only the reference cards that help.

| User state | First move | References |
|---|---|---|
| No clear direction | Build an important-problems list and scan messy fields | `references/hamming-nielsen-research-taste.md`, `references/peters-question-development.md` |
| Has a broad area but no question | Challenge assumptions and generate question variants | `references/problematization.md`, `references/orchestra-lenses.md`, `references/fischbach-problem-picking.md` |
| Has a candidate idea | Score interest, feasibility, falsifiability, and decision branches | `references/alon-problem-choice.md`, `references/fischbach-problem-picking.md` |
| Needs mechanism or experiment design | Generate competing hypotheses and discriminating tests | `references/platt-strong-inference.md` |
| Has a proposal, grant, or paper angle | Stress-test value, risk, and evaluation | `references/heilmeier-catechism.md` |
| Project is stuck or failed | Reframe through boundary conditions, what changed, and cloud pivots | `references/alon-problem-choice.md`, `references/orchestra-lenses.md` |
| Needs current or field-specific grounding | Build a compact evidence brief before ideation | `references/domain-brief-template.md` |
| Has existing data but no thesis question | Convert resources into comparable, falsifiable options | `references/alon-problem-choice.md`, `references/fischbach-problem-picking.md`, `references/question-patterns.md` |
| Field has familiar evidence norms | Load a lightweight domain adapter after the brief | `references/domain-adapters.md` |

### 2. Build Minimal Context

Extract or ask for:

- Field and subfield.
- Mode: mentor, reviewer, collaborator, or grant.
- Current idea or frustration.
- Available data, methods, collaborators, time, and equipment.
- Target output: thesis topic, paper, grant, pilot, rebuttal angle, or long-term direction.
- Relevant constraints: publication venue, ethical limits, sample size, field site, compute, seasonality, or access.

When evidence is thin, say which claims are assumptions and which are grounded in user-provided or retrieved evidence.

If `references/domain-brief-template.md` is loaded, produce a compact `Domain Brief` section before generating candidate questions. Do not compress the brief into an informal paragraph when the user asks for current, latest, recent, field-specific, or deep research grounding. Include source links or citations, live uncertainties, dominant assumptions, and evidence gaps.

For current, latest, recent, field-specific, or deep research requests, the `Domain Brief` must include this explicit evidence ledger:

```markdown
**Evidence ledger**
- Source-backed:
- Inference:
- Unknown / needs verification:
```

Use this evidence discipline whenever field claims matter:

- **Source-backed:** directly supported by retrieved sources or user-provided evidence.
- **Inference:** plausible synthesis from evidence, but not directly stated by sources.
- **Unknown:** not established; name what evidence would be needed.

Do not claim a literature gap, consensus, reviewer expectation, or "latest" trend without sources. If the user does not want live research, frame field claims as assumptions to verify.

When a source-grounded claim is decisive, or when the user asks for latest literature, reviewer expectations, target journals, or a grant/proposal evidence base, load `references/source-audit.md`. Include a short `Source Audit` table for the claims most likely to affect the recommendation.

### 3. Diverge With High-Value Lenses

Generate 5-10 candidate questions using a mix of these lenses:

- Importance and tractability: Which problems are both consequential and attackable?
- Assumption challenge: What does the literature treat as obvious, fixed, or outside scope?
- Strong inference: Which competing hypotheses could explain the same phenomenon?
- Boundary probing: Where do popular methods, theories, or datasets fail?
- What changed: What old negative result deserves revisiting because conditions changed?
- Structural analogy: What adjacent field solves an isomorphic problem?
- Simplicity: What complex method might collapse to a simpler baseline?
- Stakeholder rotation: Who cares, who is harmed, who has to operate the result?

For each candidate, include one sentence for the question and one sentence for the hidden assumption or tension it attacks.

### 4. Converge Ruthlessly

Score promising candidates from 1-5:

| Criterion | Meaning |
|---|---|
| Importance | Consequence for theory, practice, policy, or method |
| Feasibility | Can produce credible evidence with available resources |
| Falsifiability | Has observable results that could weaken or kill the idea |
| Evidence leverage | A small pilot can change belief meaningfully |
| Originality | Challenges assumptions or combines fields non-trivially |
| Downside learning | Even a negative result teaches something publishable or useful |

Drop or park candidates that fail any kill rule:

- No clear beneficiary, theoretical stake, or practical consequence.
- Only says "nobody has done X" without why X matters.
- Cannot name a plausible falsifier.
- Requires resources far beyond the user's constraints.
- Depends on a method before the problem is real.
- Adds complexity without showing what the complexity buys.

### 5. Strengthen and Stress-Test

Before finalizing, load `references/question-patterns.md` when candidates still look like topics, methods, or gaps. Load `references/editor-desk-reject.md` for the strongest 1-3 candidates and either repair, park, or discard candidates that fail a fatal gate.

### 6. Produce Good Question Cards

For the top 1-3 questions, output this card:

```markdown
## Good Question Card

**Working title:** ...
**Research question:** ...
**Why it matters:** ...
**Core assumption challenged:** ...
**Competing hypotheses:** H1 ...; H2 ...; H3 ...
**Discriminating observation or experiment:** ...
**What would falsify it:** ...
**Two-week pilot:** ...
**Data/resources needed:** ...
**Strongest reviewer objection:** ...
**Best next action:** ...
```

If the user writes in Chinese, prefer this localized card:

```markdown
## 好问题卡

**暂定题目：** ...
**核心研究问题：** ...
**为什么值得做：** ...
**它挑战了什么默认假设：** ...
**竞争性解释：** H1 ...；H2 ...；H3 ...
**关键判别证据或实验：** ...
**什么结果会推翻它：** ...
**两周内可做的 pilot：** ...
**需要的数据/资源：** ...
**最强评审质疑：** ...
**下一步动作：** ...
```

If the user only needs brainstorming, stop after ranked cards. If they need execution, turn the best card into a short pilot plan with milestones and decision gates.

## Reference Cards

Load reference cards on demand:

- `references/alon-problem-choice.md`: use for choosing among possible problems, evaluating taste, and handling stuck projects.
- `references/fischbach-problem-picking.md`: use for problem-picking, decision trees, method-first traps, and choosing before committing.
- `references/platt-strong-inference.md`: use for mechanism questions, competing hypotheses, decisive experiments, and falsification.
- `references/problematization.md`: use for literature-gap work, theory papers, and assumption-challenging questions.
- `references/heilmeier-catechism.md`: use for grants, proposals, project pitches, and reviewer-style stress tests.
- `references/hamming-nielsen-research-taste.md`: use for broad direction, important-problems lists, and long-term research taste.
- `references/peters-question-development.md`: use for turning literature clusters into clear research questions.
- `references/orchestra-lenses.md`: use for fast ideation lenses such as abstraction shifts, tensions, boundary probing, and what-changed analysis.
- `references/domain-brief-template.md`: use before ideation when current, field-specific, or source-grounded customization is needed.
- `references/source-audit.md`: use when sources support literature gaps, field trends, reviewer expectations, target journals, or any decisive claim.
- `references/domain-adapters.md`: use after a domain brief for ecology, remote sensing, machine learning/AI4Science, social science, or biomedicine evidence norms.
- `references/question-patterns.md`: use to rewrite weak topics, gaps, methods, and project activities into stronger questions.
- `references/editor-desk-reject.md`: use as a final skeptical gate before recommending top questions.

## Examples And Evals

Use `evals/pressure-cases.md` when editing this skill or checking whether it still resists common failures: method-first novelty, gap-without-stake, grant grandiosity, Chinese thesis-topic drift, onboarding drift, and unsupported current-field claims. Use `evals/source-audit-cases.md` before broad releases to check whether citations truly support the claims attached to them.

## Response Shape

Prefer this order:

1. Brief diagnosis of the user's current state.
2. Mode and assumptions, if useful.
3. Domain brief, if current or field-specific evidence was requested.
4. Source audit, if source-backed claims are decisive.
5. Chosen lenses and why.
6. Candidate questions.
7. Ranked shortlist.
8. Repair or rejection notes for weak finalists.
9. Good Question Cards.
10. Next action.

Keep the tone constructive but demanding. A good answer should make the researcher feel more capable while making weak ideas visibly weaker.
