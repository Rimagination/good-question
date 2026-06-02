# Release Checklist

Use this checklist before publishing `good-question` beyond local use.

## Release Levels

| Level | Meaning | Required gates |
|---|---|---|
| Local | Personal daily use | Main workflow works, no broken links |
| Small public beta | Shared with trusted researchers | Pressure cases pass, README clear, source discipline documented |
| Broad release | Public use across fields | Source-audit evals pass, field playbooks reviewed, contribution path clear |
| Mature release | Stable product-like skill | Regular eval suite, changelog, version tags, source-audit spot checks, real case notes |

## Small Public Beta Gate

- [ ] `SKILL.md` frontmatter has valid `name` and `description`.
- [ ] README has installation, quick start, limits, examples/evals, and field playbook entry.
- [ ] `references/` cards are load-on-demand and do not duplicate the main workflow.
- [ ] `examples/worked-examples.md` contains at least three compact examples.
- [ ] `evals/pressure-cases.md` covers method-first, gap-first, grant, Chinese thesis, current literature, and onboarding.
- [ ] Agent eval run is recorded in `evals/`.
- [ ] `scripts/verify-release.ps1 -Level beta` passes.
- [ ] `git diff --check` passes.
- [ ] All markdown links or referenced local files exist.
- [ ] Untracked files are intentionally included or intentionally excluded.

## Broad Release Gate

- [ ] `evals/source-audit-cases.md` passes with no 0 in source fit or repair behavior.
- [ ] At least one current-literature answer includes `Domain Brief`, `Evidence ledger`, and `Source Audit`.
- [ ] At least one source-audit spot check is recorded in `evals/`.
- [ ] Field playbooks cover at least five distinct domains and one interpretive/humanities domain.
- [ ] README explains that field playbooks are for humans and domain adapters are for agents.
- [ ] CONTRIBUTING.md explains how to add examples, pressure cases, source-audit cases, and domain playbooks.
- [ ] Release notes mention known limits: citation verification, field-specific coverage, and dependence on available sources.
- [ ] `scripts/verify-release.ps1 -Level broad` passes.

## Mature Release Gate

- [ ] `docs/mature-release-operating-model.md` has been reviewed for the release.
- [ ] `evals/mature-release-run-template.md` has been filled out for this candidate.
- [ ] `scripts/verify-release.ps1 -Level mature` passes, or the release is not called mature.
- [ ] 30+ pressure cases across at least seven fields.
- [ ] Every pressure case has `Field` and `Failure mode` metadata.
- [ ] 10+ source-audit cases with at least three known weak-citation traps.
- [ ] Every source-audit case has `Field` and `Trap` metadata.
- [ ] 5+ recorded source-audit spot checks across different fields.
- [ ] At least five public-source or user-anonymized real cases converted into `examples/case-notes.md`.
- [ ] Every real case note has `Provenance` metadata.
- [ ] A versioned changelog records behavior changes and eval outcomes.
- [ ] A maintainer can run the eval checklist without reading the full conversation history.
- [ ] Release verification script is updated when new required artifacts are added.
- [ ] Source-auditing spot checks verify that cited sources support the claims they are attached to.

## Do Not Release If

- The skill presents "nobody has studied X" without source-backed evidence.
- The skill produces only topics, titles, or methods instead of questions.
- Current-literature answers do not include an evidence ledger.
- Reviewer objections are generic and not tied to the candidate.
- New field guidance has not been tested with at least one pressure case.
- The release is called mature while `scripts/verify-release.ps1 -Level mature` still fails.
