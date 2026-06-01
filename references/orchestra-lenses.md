# Orchestra-Style Ideation Lenses

Use this card for fast generation of research-question variants. Combine with the main workflow's convergence and stress-test steps; do not stop at raw ideas.

Sources:
- Orchestra Research, "Research Idea Brainstorming". https://github.com/Orchestra-Research/AI-Research-SKILLs/blob/main/21-research-ideation/brainstorming-research-ideas/SKILL.md

## Lenses

### Problem-first vs solution-first

Classify whether the user starts from a real pain point or a method seeking application. If solution-first, demand at least two genuine problems it solves.

### Abstraction ladder

Move up to a general principle, down to an extreme or constrained instance, and sideways to an adjacent domain.

### Tension hunting

Look for trade-offs treated as inevitable: performance versus efficiency, generality versus specificity, accuracy versus interpretability, scale versus accessibility, short-term versus long-term outcomes, or simplicity versus fidelity.

### Cross-pollination

Translate the problem into domain-neutral language, then borrow a structurally similar mechanism from another field. Validate structural fidelity, not surface resemblance.

### What changed

Revisit old negative results or abandoned ideas when compute, data, measurement, regulation, social behavior, tooling, or failures have changed.

### Failure and boundary probing

Pick a widely used method or theory and systematically violate its assumptions: distribution, scale, adversarial conditions, time, composition, measurement, or context.

### Simplicity test

Ask whether a simpler baseline, theory, or measurement would explain most of the result. If complexity remains, name what it buys.

### Stakeholder rotation

View the same system as user, operator, theorist, adversary, policymaker, affected community, maintainer, or field practitioner.

### Composition and decomposition

Combine complementary techniques to create a new capability, or split a monolithic method to locate the real bottleneck.

## Candidate Format

For each generated idea, write:

```markdown
- Question: ...
  Lens: ...
  Tension or assumption: ...
  First falsifier: ...
```

## Red Flags

- The analogy is only metaphorical and yields no testable prediction.
- The "what changed" claim is asserted but not tied to a concrete new feasibility condition.
- Boundary probing only repeats known limitations.
- Composition adds components without a new capability or clearer explanation.
