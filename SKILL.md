---
name: good-question
description: Use when a researcher needs to discover, sharpen, evaluate, or stress-test research questions, hypotheses, project ideas, thesis topics, paper angles, grant directions, or stalled research using scientific problem choice, assumption-challenging, strong inference, boundary probing, research taste, and proposal stress-test frameworks.
---

# Good Question

Help a researcher turn a vague interest, literature gap, rough idea, failed project, or proposal draft into a strong scientific question. Do not merely list ideas; shape questions until they are important, tractable, falsifiable, and easy to defend to a skeptical colleague.

## Operating Principles

- Prefer one sharp question over many decorative ideas.
- Treat novelty as insufficient unless the question also matters.
- Separate a topic, a problem, a hypothesis, and a project plan.
- Make hidden assumptions explicit before proposing methods.
- Ask at most one short clarifying question if the field, constraint, or existing idea is missing; otherwise proceed with stated assumptions.
- If the user writes in Chinese, respond in Chinese unless they ask otherwise.
- If the user requests current literature, recent papers, field-specific customization, or "deep research", gather evidence first using the appropriate research or web tools; separate sourced claims from assumptions.
- Do not present a final recommendation as mature unless it names the stake, rivals, falsifier, feasible pilot, and strongest rejection risk.

## Workflow

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

### 2. Build Minimal Context

Extract or ask for:

- Field and subfield.
- Current idea or frustration.
- Available data, methods, collaborators, time, and equipment.
- Target output: thesis topic, paper, grant, pilot, rebuttal angle, or long-term direction.
- Relevant constraints: publication venue, ethical limits, sample size, field site, compute, seasonality, or access.

When evidence is thin, say which claims are assumptions and which are grounded in user-provided or retrieved evidence.

If `references/domain-brief-template.md` is loaded, produce a compact domain brief before generating candidate questions. Include source links or citations, live uncertainties, dominant assumptions, and evidence gaps.

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
- `references/question-patterns.md`: use to rewrite weak topics, gaps, methods, and project activities into stronger questions.
- `references/editor-desk-reject.md`: use as a final skeptical gate before recommending top questions.

## Response Shape

Prefer this order:

1. Brief diagnosis of the user's current state.
2. Domain brief, if current or field-specific evidence was requested.
3. Chosen lenses and why.
4. Candidate questions.
5. Ranked shortlist.
6. Repair or rejection notes for weak finalists.
7. Good Question Cards.
8. Next action.

Keep the tone constructive but demanding. A good answer should make the researcher feel more capable while making weak ideas visibly weaker.
