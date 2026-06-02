# Agent Eval Run: 2026-06-02

Five independent agents were given `SKILL.md` plus one raw pressure case each. They were not given the scoring rubric or expected moves.

## Rubric

Each case was scored 0-2 on diagnosis, evidence discipline, question quality, rivals, feasible entry, and reviewer risk. Passing threshold: 9/12, with no 0 in evidence discipline, rivals, or feasible entry.

## Results

| Case | Diagnosis | Evidence | Question | Rivals | Feasible entry | Reviewer risk | Total | Result |
|---|---:|---:|---:|---:|---:|---:|---:|---|
| Method-first remote sensing | 2 | 2 | 2 | 2 | 2 | 2 | 12 | Pass |
| Literature gap without stake | 2 | 1 | 2 | 2 | 2 | 2 | 11 | Pass |
| Proposal with grand claims | 2 | 2 | 2 | 2 | 2 | 2 | 12 | Pass |
| Chinese thesis topic from existing data | 2 | 2 | 2 | 2 | 2 | 2 | 12 | Pass |
| Current field claims | 2 | 1 | 2 | 2 | 2 | 2 | 11 | Pass with tightening |

## Observed Strengths

- The method-first remote-sensing answer rejected novelty-only framing and converted the idea into transfer, label scarcity, domain shift, strong baselines, and falsifiers.
- The rooftop microbiome answer refused to treat "few studies" as sufficient and reframed the paper around assembly drivers, management relevance, paired controls, and function.
- The grant answer shrank "AI platform to revolutionize ecological forecasting" into decision value, baseline comparison, kill criteria, and a two-week pilot.
- The Chinese thesis answer used Chinese, produced localized good-question cards, and connected existing data to falsifiable pilot analyses.
- The current-literature answer used citations and produced a strong question about calibrated ecological inference rather than classifier accuracy.

## Failure Or Tightening Notes

- Two evidence-grounded answers included sources in prose without consistently separating source-backed claims, inferences, and unknowns.
- The current-literature case gathered evidence but did not emit an explicit `Domain Brief` section before the Good Question Card.

## Follow-Up Patch

After this run, `SKILL.md` and `references/domain-brief-template.md` were tightened to require an explicit `Domain Brief` heading and evidence ledger for current/latest/field-specific/deep-research requests.

## Follow-Up Re-Run

The current-literature case was re-run once after the first tightening. The agent emitted an explicit `Domain Brief` heading, but still did not include an explicit evidence ledger. This showed that the requirement must live in `SKILL.md` itself, not only in `references/domain-brief-template.md`. A second tightening inlined the required `Evidence ledger` format in the main workflow.

The current-literature case was then re-run again. The agent emitted `Domain Brief` with `Scope`, `Source base`, and an explicit `Evidence ledger` containing source-backed, inference, and unknown/needs-verification bullets. This passes the targeted regression check.

## Decision

The skill passed the pressure run and the targeted current-literature regression after tightening. It is suitable for local use and a small public release. For a broader release, add source-auditing evals that verify citations rather than only checking response structure.

## Cross-Field Onboarding Addendum

After adding `docs/field-playbooks.md` and `SKILL.md` human-onboarding guidance, a social-science platform-labor onboarding case was run with an independent agent. The agent did not generate generic topics. It recommended Mentor mode, asked for six field-specific anchors, warned against generic platform-labor prompts, and produced a reusable social-science prompt including empirical setting, data/resources, audience, constraints, construct validity, causal identification, ethics, and theory contribution. This passes the onboarding regression.
