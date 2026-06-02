# Worked Examples

## Example 1: Method-First Remote Sensing

**Raw input:** I want to use a transformer model on satellite images to estimate crop yield. Nobody has applied the newest model to my region yet.

**Diagnosis:** Method-first idea with a novelty-only risk.

**Required moves:** Rewrite the method into the uncertainty it resolves; compare against simpler baselines; add a falsifier where the complex model fails to add evidence.

**Stronger question:** Under which crop, season, or stress conditions do transformer-based image features improve yield forecasts beyond weather, NDVI, and management-history baselines, and when is that improvement large enough to change an agricultural decision?

**Good output signals:** names ground-truth limits, scale mismatch, leakage risk, baseline models, and a two-week pilot using one season or one crop subset.

## Example 2: 中文博士开题

**原始输入：** 我有三年的样地土壤水分、植物功能性状和无人机影像，想做博士开题，但问题还很散。

**诊断：** 已有数据但问题不清楚；适合导师模式和合作者模式。

**必要动作：** 把资源转成可比较问题，而不是直接包装题目；明确哪些问题能被现有数据支持，哪些需要补采样。

**更强问题：** 在年度水分波动下，植物功能性状能否解释无人机光谱信号与群落生产力关系的失效边界？如果能，哪些性状组合提供了比单纯光谱指数更稳定的跨年预测？

**好输出信号：** 给出中文好问题卡，包含竞争解释、两周 pilot、推翻条件和最强评审质疑。

## Example 3: Grant Grandiosity

**Raw input:** My grant will build an AI platform to revolutionize ecological forecasting and support climate adaptation decisions.

**Diagnosis:** Proposal pitch with inflated impact and unclear decision path.

**Required moves:** Use grant/reviewer mode; shrink the claim to a measurable forecast or decision failure; name users, milestones, success criteria, and kill criteria.

**Stronger question:** Can uncertainty-calibrated ecological forecasts improve one named adaptation decision compared with the current baseline forecast, and which forecast failure modes still prevent use by decision-makers?

**Good output signals:** separates scientific risk from implementation risk, names a decision owner, defines a pilot, and states what result would stop the platform work.
