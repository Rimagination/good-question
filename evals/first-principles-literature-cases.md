# First-Principles Literature Cases

Use these cases to test whether `good-question` can use first-principles thinking without breaking its existing research-question system. These cases are source-grounded pressure tests, not real user case notes.

## Scoring

Use 0-2 for each item:

| Item | 0 | 1 | 2 |
|---|---|---|---|
| Compatibility | Treats first principles as a master override | Mentions compatibility but does not operationalize it | Places first principles as a calibration lens within existing cards |
| Evidence discipline | Lets deduction replace sources | Labels some assumptions or sources | Separates constraints, assumptions, evidence, inference, and unknowns |
| Rivals | One elegant explanation only | Weak/null rival only | Serious competing explanations or question framings |
| Field fit | Imposes one universal norm | Notes field differences vaguely | Names field-specific evidence norms or routes to domain adapters |
| Repair behavior | Polishes the overclaim | Adds caveats only | Rewrites the question or workflow so it remains falsifiable and source-auditable |

Passing threshold: 8/10, with no 0 in compatibility, evidence discipline, or repair behavior.

## Case 1: First Principles As Master Rule

**Source anchor:** Herfeld & Ivanova (2021), https://doi.org/10.1007/s11229-020-02801-1
**Trap:** Universal-first-principles override

**Raw input:**
Since the project is about better research questions, make first-principles thinking the top-level rule and let every other method card follow from it.

**Expected moves:**
Use `references/first-principles-lens.md`. Treat first principles as a compatibility and calibration layer, not as a replacement for source audit, strong inference, problematization, or domain adapters.

**Pass conditions:**
- Says first principles can organize the workflow but should not override field evidence or existing method cards.
- Explains which existing gates it calibrates: stake, assumptions, rivals, falsifier, and feasible pilot.
- Avoids claiming that all sciences share the same actionable first principles.

**Failure modes:**
- Rewrites the whole skill around a single universal first-principles doctrine.
- Removes source audit or domain adapters because "basic logic" should be enough.

## Case 2: Deduction Without Fallibilism

**Source anchor:** Hoover (2021), https://doi.org/10.1007/s11229-018-02021-8
**Trap:** Deductive first principles used as empirical proof

**Raw input:**
In economics, rational action follows from first principles. Build a research question from that foundation without spending time on empirical uncertainty.

**Expected moves:**
Use `references/first-principles-lens.md` and `references/source-audit.md`. Preserve the role of foundational assumptions while requiring fallibilism, empirical boundaries, and testable rivals.

**Pass conditions:**
- Distinguishes a modeling premise from empirical support.
- Names rival explanations or boundary conditions that could weaken the premise.
- Produces a question that can be updated by data, not only defended by deduction.

**Failure modes:**
- Treats the first principle as unrevisable.
- Frames empirical evidence as optional decoration.

## Case 3: Field-Specific Principle Misgeneralized

**Source anchor:** Hendry (2021), https://doi.org/10.1007/s11229-019-02312-8
**Trap:** Tacit disciplinary principle generalized across fields

**Raw input:**
Chemistry has deep first principles that guide research programmes, so good-question should use one shared set of first principles for chemistry, ecology, AI4Science, and social science.

**Expected moves:**
Use `references/first-principles-lens.md` and route field-specific work to `references/domain-adapters.md` when evidence norms matter.

**Pass conditions:**
- Treats first principles as potentially field-specific and historically situated.
- Preserves the possibility that principles are empirically supported, revised, or bounded.
- Recommends a shared calibration schema rather than shared field content.

**Failure modes:**
- Uses chemistry as a template for all domains.
- Ignores field-specific evidence norms.

## Case 4: Elegant Mechanism Without Rivals

**Source anchor:** Platt (1964), https://doi.org/10.1126/science.146.3642.347
**Trap:** First-principles elegance suppresses strong inference

**Raw input:**
From first principles, my mechanism is clearly the simplest explanation. Help me turn it into a proposal without spending space on alternatives.

**Expected moves:**
Use `references/first-principles-lens.md` and `references/platt-strong-inference.md`. Refuse to present a mature recommendation until rivals and discriminating observations are explicit.

**Pass conditions:**
- Names at least two serious rivals, including an artifact or boundary-condition explanation.
- Defines observations that distinguish the preferred mechanism from rivals.
- Says the elegant derivation is not enough unless it can fail.

**Failure modes:**
- Treats simplicity as proof.
- Produces a one-hypothesis proposal.

## Case 5: Education Evidence Overextended

**Source anchor:** Tan & Xiao (2025), https://doi.org/10.1021/acs.jchemed.4c01178
**Trap:** Pedagogical support overclaimed as universal agent behavior evidence

**Raw input:**
A chemical education paper says first-principles thinking can increase learning depth and creativity. Therefore good-question should always decompose from first principles before retrieval or source audit.

**Expected moves:**
Use `references/first-principles-lens.md` and `references/source-audit.md`. Treat the education paper as support for a useful learning move, not as evidence that first-principles reasoning should outrank retrieval in every field-specific task.

**Pass conditions:**
- Labels the source as supportive for educational/PBL use, not direct proof for all agent workflows.
- Keeps enhanced retrieval when field facts, novelty, consensus, or reviewer expectations matter.
- Rewrites the rule as "use first principles to expose assumptions before or during retrieval" rather than "skip retrieval."

**Failure modes:**
- Turns one education paper into universal workflow authority.
- Weakens the information sufficiency gate.

## Case 6: Basic Assumptions Made Untouchable

**Source anchor:** Alvesson & Sandberg (2011), https://doi.org/10.5465/amr.2009.0188
**Trap:** First principles used against problematization

**Raw input:**
If a literature's basic assumptions are first principles, good-question should preserve them and only look for gaps inside the accepted frame.

**Expected moves:**
Use `references/first-principles-lens.md` and `references/problematization.md`. Treat "basic" assumptions as candidates for inspection, boundary testing, or repair, not as automatically protected.

**Pass conditions:**
- Separates genuine constraints from contestable assumptions.
- Shows how challenging an assumption can generate a stronger question.
- Avoids disrespecting prior literature while still making weak assumptions visible.

**Failure modes:**
- Restricts the skill to gap-spotting.
- Treats all foundational claims as immune to critique.
