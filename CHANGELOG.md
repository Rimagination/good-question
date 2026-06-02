# Changelog

## v0.1.0 - 2026-06-02

### Added

- Human-facing field playbooks for ecology, remote sensing, AI4Science, social science, biomedicine, humanities, and engineering systems.
- Working modes: Mentor, Reviewer, Collaborator, and Grant.
- Chinese `好问题卡` output template.
- Domain adapters for common evidence norms and reviewer objections.
- Source-audit workflow for checking whether citations support decisive claims.
- Pressure-case evals, source-audit evals, and a recorded 2026-06-02 agent eval run.
- Release checklist and contribution guide for broader maintenance.
- `scripts/verify-release.ps1` structural release gate, with a recorded broad-release verification run.
- Source-audit run template and a recorded citation-support spot check.
- Mature-release operating model, mature-release run template, real-case note intake, and a recorded mature-readiness check.
- Information sufficiency gate and an enhanced-retrieval pressure case for unfamiliar domains.
- Public-release check record for beta, broad, and mature structural gates.

### Changed

- Current/latest/field-specific requests must produce a `Domain Brief` with an explicit `Evidence ledger`.
- Field-specific recommendations must not rely on invented domain facts; when local knowledge is insufficient, the skill must explicitly enter enhanced retrieval or mark outputs as provisional assumptions.
- Source-grounded recommendations should include a `Source Audit` when literature gaps, trends, reviewer expectations, or target-journal claims matter.
- Release documentation now distinguishes small public beta, broad release, and mature release gates.
- `scripts/verify-release.ps1` now supports `-Level mature` and reports unmet maturity thresholds instead of silently treating broad release as mature release.
- Mature verification now checks case metadata, pressure-case field diversity, and weak-citation trap coverage.
- Release verification now checks the information sufficiency gate, enhanced-retrieval requirement, and unfamiliar-domain pressure case.
- Pressure-case corpus expanded to 31 labeled cases across diverse fields.
- Source-audit corpus expanded to 10 labeled weak-citation cases.
- Added four additional source-audit spot checks for protein benchmarks, eDNA, flood datasets, and restoration soil carbon.

### Known Limits

- Source-audit evals check behavior structure; broad release still needs manual spot checks that cited sources support the attached claims.
- Field playbooks are useful first passes, not substitutes for domain expert review.
- The eval suite is still small relative to the range of real research messiness.
- The current corpus now satisfies the mature-release structural thresholds using provenance-labeled public-source real case notes; future releases should add user-anonymized cases from real usage.
