# Domain Brief Before Ideation

Use this card when the user asks for field-specific customization, recent literature, current debates, target journals, reviewer expectations, or a "deep research" style pass before question generation.

This is a workflow card. It tells the agent how to gather and compress external evidence before applying the other methodology cards.

## Core Idea

Do not customize research questions from general taste alone when the field context matters. First build a compact domain brief from public sources, then generate and stress-test questions against that evidence.

## Evidence Plan

Gather only enough evidence to make better question choices:

1. Define the target field, subfield, output type, and time horizon.
2. Search for 6-12 high-signal sources: recent reviews, editorials, consensus papers, methods papers, calls for papers, guidelines, or leading lab explainers.
3. Prefer primary or official sources over summaries: journal pages, DOI pages, society guidelines, lab pages, preprints only when clearly labeled.
4. Extract disagreements, measurement bottlenecks, failed assumptions, new tools or datasets, and explicit future-work claims.
5. Stop when new sources repeat the same bottlenecks or when the user-specified time budget is reached.

## Domain Brief Format

```markdown
## Domain Brief

**Scope:** ...
**Source base:** 6-12 sources, with links or citations
**Evidence ledger:** source-backed claims; inferences; unknowns to verify
**What the field already knows:** ...
**Live uncertainties:** ...
**Dominant assumptions:** ...
**Measurement or data bottlenecks:** ...
**What changed recently:** ...
**Reviewer expectations:** ...
**Question opportunities:** ...
**Evidence gaps in this brief:** ...
```

## Conversion To Questions

After the brief:

1. Generate candidate questions only from tensions supported by the brief.
2. Mark each candidate as grounded, inferred, or speculative.
3. Pair speculative candidates with the evidence needed before committing.
4. Feed the strongest candidates into `question-patterns.md`, then `editor-desk-reject.md`.

## Non-Negotiables

- If the user says "latest", "recent literature", "field-specific", or "deep research", include the `Domain Brief` heading before the Good Question Card.
- Include an evidence ledger even when the brief is short.
- Do not replace the brief with a prose paragraph of citations.
- Do not call a question mature until speculative candidates name the evidence needed before commitment.

## Red Flags

- The agent invents field consensus without sources.
- The brief becomes a literature review instead of a decision aid.
- Recent papers are listed but not converted into uncertainties or assumptions.
- Sources appear in prose, but the answer never separates source-backed claims, inferences, and unknowns.
- The question only follows a trend; it does not name what answering it would change.
