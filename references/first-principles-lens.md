# First-Principles Lens

Use this card when the user asks whether first-principles thinking should guide a research question, when method cards appear to conflict, or when a candidate question sounds elegant but may be bypassing evidence, rivals, or field norms.

## Core Idea

First-principles thinking is a calibration layer, not a master override. Use it to expose the minimum constraints a worthwhile research question must satisfy: stake, assumptions, evidence boundary, rival explanations, falsifier, and feasible next test.

Do not use first-principles language to replace source audit, domain adapters, problematization, or strong inference. A first principle in science can be field-specific, tacit, historically situated, and open to empirical support or revision.

## When To Load

- The user explicitly asks for first principles, fundamental assumptions, foundations, or root causes.
- A question feels coherent but the hidden assumptions, field-specific evidence norms, or falsifier are unclear.
- Several reference cards pull in different directions and the agent needs a compatibility check.
- A proposal claims a result follows from basic logic rather than from evidence.

## Compatibility Contract

| Existing card or rule | First-principles role | Do not let it do |
|---|---|---|
| `references/source-audit.md` | Separate assumptions, evidence, inference, and unknowns | Treat deduction as evidence for field claims |
| `references/platt-strong-inference.md` | Ask what else could explain the same phenomenon | Collapse the work into one elegant favorite hypothesis |
| `references/problematization.md` | Surface assumptions that organize the literature | Preserve "basic" assumptions just because they feel foundational |
| `references/domain-adapters.md` | Ask what counts as evidence in this field | Impose one universal evidence norm across fields |
| `references/heilmeier-catechism.md` | Clarify the minimal stake, user, success, and failure criteria | Hide risk behind abstract importance |

## Procedure

1. State the candidate question in one sentence.
2. Name the minimum stake: what would change if the question were answered?
3. Separate first principles from assumptions:
   - **Constraint:** must hold for the problem to be meaningful.
   - **Assumption:** plausible but contestable.
   - **Evidence:** source-backed or user-provided.
   - **Inference:** synthesized but not directly shown.
   - **Unknown:** needs retrieval, data, or expert input.
4. Generate at least two serious rival explanations or question framings.
5. Identify the smallest discriminating observation, analysis, or two-week pilot.
6. Ask whether a negative result would still teach a boundary, mechanism, or method lesson.
7. If field facts matter, hand back to `references/source-audit.md` and the relevant domain adapter before final recommendation.

## Prompts

- What is the minimum claim that must be true for this question to deserve time?
- Which "basic" claim is actually an untested field assumption?
- What would a strong skeptic say is the real first principle here?
- What would make the elegant explanation fail?
- Which source, dataset, observation, or pilot would update belief fastest?
- Does the question still matter if the preferred mechanism is false?

## Red Flags

- "First principles" is used to avoid literature retrieval or source audit.
- The output has one favored explanation and no serious rival.
- A field-specific norm is treated as universal.
- The question is logically neat but not empirically touchable.
- The agent calls a principle foundational without saying how it could be revised, bounded, or empirically supported.

## Source Anchors

- Herfeld, C., & Ivanova, M. (2021). Introduction: first principles in science-their status and justification. *Synthese, 198*, 3297-3308. https://doi.org/10.1007/s11229-020-02801-1
- Hendry, R. F. (2021). Elements and (first) principles in chemistry. *Synthese, 198*, 3391-3411. https://doi.org/10.1007/s11229-019-02312-8
- Hoover, K. D. (2021). First principles, fallibilism, and economics. *Synthese, 198*, 3309-3327. https://doi.org/10.1007/s11229-018-02021-8
- Tan, J., & Xiao, X. (2025). Harness first-principles thinking in problem-based learning for chemical education. *Journal of Chemical Education, 102*(2), 943-947. https://doi.org/10.1021/acs.jchemed.4c01178
