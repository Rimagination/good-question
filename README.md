# Good Question

<picture>
  <source srcset="assets/good-question-integrated-banner-1280.webp" type="image/webp">
  <img src="assets/good-question-integrated-banner-1280.png" alt="Good Question hero" width="1280">
</picture>

<p align="center">
  <img alt="License MIT" src="https://img.shields.io/badge/License-MIT-1F5E4A?style=for-the-badge">
  <img alt="Hosts Codex and Claude Code" src="https://img.shields.io/badge/Hosts-Codex%20%7C%20Claude%20Code-D9A441?style=for-the-badge">
  <img alt="Status Active Development" src="https://img.shields.io/badge/Status-Active%20Development-6B8F71?style=for-the-badge">
</p>

<p align="center">
  <a href="#zh-cn">中文</a> | <a href="#english">English</a>
</p>

<a id="zh-cn"></a>

## 中文

`good-question` 是一个帮助研究者打磨科研问题的 agent skill。

它适合这样的时刻：你有一个方向、一个文献 gap、一个 proposal 摘要，或者一堆看起来都能做的想法，但还不确定哪个问题真正值得投入。它不会只给你一串灵感，而是逼近一个更好的研究问题：为什么重要，怎么被证据触及，哪些解释在竞争，什么结果会推翻它，下一步该做什么。

### 你可以用它做什么

| 你的状态 | 它会帮你做什么 |
|---|---|
| 只有一个模糊兴趣 | 把兴趣拆成可比较的候选问题 |
| 找到了文献 gap | 判断这个 gap 是否真的有理论或实践价值 |
| 已经有一个想法 | 检查重要性、可行性、可证伪性和两周 pilot |
| 想做机制解释 | 拆出竞争性假设和关键判别实验 |
| 准备 proposal 或基金 | 模拟评审会攻击哪里，并给出修补方式 |
| 方向依赖近期进展 | 先做公开来源的 domain brief，再定制问题 |
| 项目卡住了 | 用边界条件、失败信号和条件变化重新定位问题 |

### 它会输出什么

通常会得到一张或几张 `Good Question Card`。中文用户默认会得到类似这样的本地化卡片：

```markdown
**暂定题目：** ...
**核心研究问题：** ...
**为什么值得做：** ...
**它挑战了什么默认假设：** ...
**竞争性解释：** ...
**关键判别证据或实验：** ...
**什么结果会推翻它：** ...
**两周内可做的 pilot：** ...
**最强评审质疑：** ...
**下一步动作：** ...
```

重点不是把话说漂亮，而是让你能判断：这个问题值不值得继续推进。

### 安装

Codex:

```bash
git clone https://github.com/Rimagination/good-question.git ~/.codex/skills/good-question
```

Claude Code:

```bash
git clone https://github.com/Rimagination/good-question.git ~/.claude/skills/good-question
```

其他 agent 也可以使用：把 `SKILL.md` 当作主流程，把 `references/` 当作按需加载的方法卡即可。

### 快速开始

最简单的用法：

```text
用 $good-question 帮我把这个粗略想法打磨成一个好的科研问题：
[你的想法]
```

如果你愿意提供更多上下文，效果会更好：

```text
领域：
当前想法或困惑：
已有数据 / 方法 / 资源：
时间限制：
目标：论文 / 开题 / 基金 / pilot / rebuttal
我最担心的问题：
```

更多常用入口：

```text
用 $good-question 压力测试这个 proposal，重点找评审最可能攻击的地方：
[proposal 摘要]
```

```text
用 $good-question 把这个文献 gap 改写成更有理论贡献的问题：
[gap 描述]
```

```text
用 $good-question 先做一个基于公开来源的 domain brief，再帮我形成候选问题：
[领域或方向]
```

```text
用 $good-question 先做 Source Audit，检查这些文献是否真的支持我的 gap 和贡献声明：
[你的 gap / 关键声明 / 文献列表]
```

### 不同领域怎么用

如果你来自生态、遥感、AI4Science、社会科学、生物医学、人文解释型研究或工程系统，先看 [`docs/field-playbooks.md`](docs/field-playbooks.md)。

它不是给 agent 的方法卡，而是给研究者的使用指南：每个领域应该提供什么上下文、常见弱问题是什么、好问题通常长什么样、评审最容易攻击哪里，以及该选择导师/评审/合作者/基金哪种模式。

### 它如何工作

`good-question` 的流程很简单，但会比较严格：

1. 先判断你现在处在什么状态：模糊兴趣、文献 gap、已有想法、proposal，还是卡住的项目。
2. 根据语境切换导师、评审、合作者或基金模式。
3. 如果需要领域定制，就先做 compact domain brief，区分来源证据、推断和未知。
4. 对生态、遥感、AI4Science、社会科学、生物医学等场景，按需加载轻量领域适配器。
5. 用结构化 lenses 生成候选问题，但不把候选问题当成答案。
6. 用重要性、可行性、可证伪性、证据杠杆和负结果价值来收敛。
7. 把 topic、method、gap 这类弱形式改写成真正的问题。
8. 用 editor-desk reject gate 做最后压力测试：如果评审会拒，先修到能站住。

### 什么是好问题

在这个项目里，一个 good question 至少要通过七个检查：

1. **It matters.** 回答它会改变理论、方法、实践、政策或下一步研究。
2. **It is specific.** 它不是一个宽泛主题，而是一个可被证据触及的问题。
3. **It has rivals.** 至少存在两个或三个可能解释，而不是只有一个偏爱的假设。
4. **It can fail.** 有结果会削弱、修正或杀死它。
5. **It is feasible enough.** 研究者能在现实约束下启动一个可信 pilot。
6. **It teaches even when negative.** 即使主要假设不成立，也能产生有价值的边界、机制或方法信息。
7. **It is grounded when context matters.** 如果问题依赖当前领域状态，它必须能追溯到公开来源，或明确标注为推断。

### 方法来源

这个 skill 不是凭空写出来的一套 prompt。它把一些可靠来源中的科研思维动作沉淀成可复用流程：

| 来源线索 | 这个项目吸收了什么 |
|---|---|
| Alon, Fischbach, Stanford Engineering [1][2][3] | 选问题是一种可训练能力，要比较问题、识别陷阱，不要方法先行 |
| Platt [4] | 好问题应该能产生竞争性假设和判别实验 |
| Alvesson & Sandberg [5] | 不要只找 gap，要挑战文献背后的默认假设 |
| Heilmeier Catechism [6] | proposal 必须说清楚目标、受众、风险、成功标准和失败标准 |
| Hamming, Nielsen [7][8] | 科研品味来自长期维护重要问题清单和可攻击机会 |
| Peters [9] | 好问题常常来自对文献、不确定性和约束的反复重写 |
| Orchestra Research [10] | 用结构化 lenses 发散，再用严格标准收束 |

### 质量与发布门禁

这个项目把问题打磨当成可测试的流程，而不是一次性 prompt。发布前请看 [`docs/release-checklist.md`](docs/release-checklist.md)；贡献案例、领域指南或 source-audit eval 前请看 [`CONTRIBUTING.md`](CONTRIBUTING.md)。

大范围发布至少应通过两类检查：`evals/pressure-cases.md` 检查是否能抵抗方法先行、gap 先行、空泛 impact 等常见失败；`evals/source-audit-cases.md` 检查引用是否真的支持对应 claim。

发布前可以先运行结构门禁：

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level broad
```

### 能力边界

`good-question` 可以帮你把问题变尖，但它不是全知百科，不会替你编造领域共识。需要当前领域信息或本地知识不足时，它应该显式进入增强检索，先基于公开来源形成 brief，再明确哪些判断来自证据，哪些只是推断。
它不会把“我没查到”写成“没人做过”，也不会在没有来源时声称某个 gap、共识或最新趋势已经成立。

它也不会把每个想法都包装成“可做”。如果一个问题只有 novelty、没有受众、无法证伪，或者负结果学不到东西，它会建议重写、搁置或放弃。

<p align="right"><a href="#good-question">回到顶部</a> | <a href="#english">English</a></p>

<a id="english"></a>

## English

`good-question` is a portable agent skill for sharpening research questions.

Use it when you have a direction, a literature gap, a proposal sketch, or several possible ideas, but you are not sure which question is worth real work. It does not simply list ideas. It helps turn a rough direction into a question with stakes, rivals, falsifiers, a feasible pilot, and a clear next move.

### What It Helps With

| Your situation | What it helps you do |
|---|---|
| Broad interest | Turn it into comparable candidate questions |
| Literature gap | Decide whether the gap has real theoretical or practical value |
| Early idea | Test importance, feasibility, falsifiability, and a two-week pilot |
| Mechanism question | Build rival hypotheses and discriminating tests |
| Proposal or grant | Find reviewer objections and repair the weak points |
| Field depends on recent work | Build a public-source domain brief before question generation |
| Stalled project | Reframe through boundaries, failure signals, and changed conditions |

### What You Get

The usual output is one or more `Good Question Card`s:

```markdown
**Working title:** ...
**Research question:** ...
**Why it matters:** ...
**Core assumption challenged:** ...
**Competing hypotheses:** ...
**Discriminating observation or experiment:** ...
**What would falsify it:** ...
**Two-week pilot:** ...
**Strongest reviewer objection:** ...
**Best next action:** ...
```

The goal is not prettier wording. The goal is a better decision about whether the question deserves your time.

### Installation

Codex:

```bash
git clone https://github.com/Rimagination/good-question.git ~/.codex/skills/good-question
```

Claude Code:

```bash
git clone https://github.com/Rimagination/good-question.git ~/.claude/skills/good-question
```

Other agents can use `SKILL.md` as the main workflow and `references/` as on-demand method cards.

### Quick Start

Basic use:

```text
Use $good-question to sharpen this rough idea into a strong research question:
[your idea]
```

Better input:

```text
Field:
Current idea or confusion:
Available data / methods / resources:
Time constraint:
Target: paper / thesis proposal / grant / pilot / rebuttal
My biggest concern:
```

Other useful prompts:

```text
Use $good-question to stress-test this proposal and identify the objections reviewers are most likely to raise:
[proposal summary]
```

```text
Use $good-question to turn this literature gap into a question with stronger theoretical contribution:
[gap description]
```

```text
Use $good-question to first build a public-source domain brief, then generate candidate questions:
[field or direction]
```

```text
Use $good-question to run a Source Audit before accepting this literature gap and contribution claim:
[your gap / key claims / source list]
```

### Field Playbooks

If you work in ecology, remote sensing, AI4Science, social science, biomedicine, humanities, or engineering systems, start with [`docs/field-playbooks.md`](docs/field-playbooks.md).

It is a human-facing guide, not an agent method card. It shows what context to provide, common weak questions in each field, what stronger questions usually look like, likely reviewer objections, and which mode to choose.

### How It Works

The workflow is simple, but strict:

1. Diagnose the starting point: broad interest, gap, idea, proposal, or stalled project.
2. Infer the working mode: mentor, reviewer, collaborator, or grant.
3. If field context matters, build a compact domain brief and label claims as source-backed, inference, or unknown.
4. Load a lightweight domain adapter when ecology, remote sensing, AI4Science, social science, or biomedicine evidence norms matter.
5. Generate candidates with structured lenses, but do not treat raw ideas as answers.
6. Converge using importance, feasibility, falsifiability, evidence leverage, and downside learning.
7. Rewrite weak forms such as topics, methods, benchmarks, and gaps into actual questions.
8. Run an editor-desk reject gate before recommending finalists.

### What Counts As A Good Question

In this project, a good question should pass at least seven checks:

1. **It matters.** Answering it changes theory, method, practice, policy, or the next research step.
2. **It is specific.** It is not just a broad topic; evidence can touch it.
3. **It has rivals.** At least two plausible explanations could compete.
4. **It can fail.** Some result could weaken, revise, or kill the idea.
5. **It is feasible enough.** A credible pilot can start under real constraints.
6. **It teaches even when negative.** Failure still clarifies a boundary, mechanism, or method.
7. **It is grounded when context matters.** If the question depends on the current state of a field, it traces back to public sources or is clearly labeled as inference.

### Method Sources

This is not just a prompt bundle. It turns research-method advice from reliable sources into reusable agent workflow:

| Source line | What this project uses |
|---|---|
| Alon, Fischbach, Stanford Engineering [1][2][3] | Problem choice is trainable: compare questions, surface traps, and avoid method-first projects |
| Platt [4] | Strong questions create rival hypotheses and discriminating tests |
| Alvesson & Sandberg [5] | Move beyond gap-spotting by challenging assumptions |
| Heilmeier Catechism [6] | Proposals need clear goals, audience, risks, success criteria, and failure criteria |
| Hamming, Nielsen [7][8] | Research taste comes from important-problems lists and attackable openings |
| Peters [9] | Good questions often emerge through iterative rewriting of literature, uncertainty, and constraints |
| Orchestra Research [10] | Diverge with structured lenses, then converge with strict standards |

### Quality Gates

This project treats question-sharpening as a testable workflow, not a one-off prompt. Before releasing, use [`docs/release-checklist.md`](docs/release-checklist.md). Before contributing cases, field guidance, or source-audit tests, use [`CONTRIBUTING.md`](CONTRIBUTING.md).

Broad releases should pass both `evals/pressure-cases.md`, which checks resistance to method-first, gap-first, and vague-impact failures, and `evals/source-audit-cases.md`, which checks whether citations support the claims attached to them.

Before release, run the structural gate:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level broad
```

Mature-product work has a stricter operating model:

- Read [`docs/mature-release-operating-model.md`](docs/mature-release-operating-model.md) before calling the skill mature.
- Record the readiness decision with [`evals/mature-release-run-template.md`](evals/mature-release-run-template.md).
- Run `powershell -ExecutionPolicy Bypass -File scripts/verify-release.ps1 -Level mature`; if the gate fails, keep the release labeled broad/public beta.

### Limits

`good-question` can make a question sharper, but it is not an omniscient encyclopedia and should not invent field consensus. When current field context matters or local knowledge is insufficient, it should explicitly enter enhanced retrieval, build a public-source brief first, and label what is evidence versus inference.
It should not turn "I did not find work on X" into "nobody has studied X", and it should not assert a literature gap, consensus, or latest trend without sources.

It also should not make every idea look viable. If a candidate is only novel, has no audience, cannot fail, or teaches nothing when negative, it should be rewritten, parked, or discarded.

<p align="right"><a href="#good-question">Back to top</a> | <a href="#zh-cn">中文</a></p>

## References / 参考文献

The references below are cited as methodological sources for the skill, not as decoration.

1. Alon, U. (2009). How to choose a good scientific problem. *Molecular Cell, 35*(6), 726-728. https://doi.org/10.1016/j.molcel.2009.09.013
2. Fischbach, M. A. (2024). Problem choice and decision trees in science and engineering. *Cell, 187*(10), 2363-2367. https://doi.org/10.1016/j.cell.2024.03.012
3. Stanford Engineering. (2024, October 23). How to pick and solve the next great problem. https://engineering.stanford.edu/news/how-pick-and-solve-next-great-problem
4. Platt, J. R. (1964). Strong inference. *Science, 146*(3642), 347-353. https://doi.org/10.1126/science.146.3642.347
5. Alvesson, M., & Sandberg, J. (2011). Generating research questions through problematization. *Academy of Management Review, 36*(2), 247-271. https://doi.org/10.5465/amr.2009.0188
6. DARPA. (n.d.). The Heilmeier Catechism. Retrieved June 1, 2026, from https://www.darpa.mil/about/heilmeier-catechism
7. Hamming, R. W. (1986). You and your research. Bell Communications Research colloquium. https://www.cs.virginia.edu/~robins/YouAndYourResearch.html
8. Nielsen, M. (2004). Principles of effective research. https://michaelnielsen.org/blog/principles-of-effective-research/
9. Peters, M. A. K. (2025). How to develop good research questions. *Nature Human Behaviour*. https://doi.org/10.1038/s41562-025-02292-5
10. Orchestra Research. (n.d.). Research Idea Brainstorming. *AI-Research-SKILLs*. Retrieved June 1, 2026, from https://github.com/Orchestra-Research/AI-Research-SKILLs/blob/main/21-research-ideation/brainstorming-research-ideas/SKILL.md
