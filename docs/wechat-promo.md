# Good Question 微信推送草稿

## 标题备选

1. 我做了一个帮你判断科研问题值不值得做的 Skill
2. 科研最难的不是想法太少，而是问题太松
3. Good Question，一个帮研究者打磨问题的 agent skill

## 正文

最近我越来越觉得，科研里最容易被低估的一件事，是“选问题”。

很多时候我们以为自己卡住，是因为方法还不够强，数据还不够多，模型还不够新。

但更常见的情况可能是，问题本身还没有被打磨好。

它看起来像一个方向，但还不是一个问题。

它看起来像一个 gap，但不一定真的重要。

它看起来很新，但不一定有人在乎。

它看起来可以做，但做完之后可能也不知道学到了什么。

这件事挺残酷的。

一个不够好的科研问题，会非常擅长消耗人的时间。你会查很多文献，跑很多实验，写很多版本的 proposal，最后发现真正说不清楚的是最开始那句话。

我到底想问什么？

所以我做了一个小项目，叫 **Good Question**。

它不是一个帮你“批量生成选题”的工具。说实话，我现在对那种一口气生成 20 个研究想法的东西有点警惕。

因为科研里真正贵的，不是想法的数量。

真正贵的是判断力。

Good Question 想做的事情很简单，帮你把一个模糊方向、一个文献 gap、一个 proposal 摘要，或者一个已经卡住的研究想法，慢慢打磨成一个更值得投入的科研问题。

它会追问几个很基本但很要命的东西。

这个问题为什么重要？

它挑战了什么默认假设？

有没有竞争性的解释？

什么证据会支持它？

什么结果会推翻它？

两周内能不能做一个可信的 pilot？

如果我是审稿人，我最可能从哪里拒它？

这些问题听起来朴素，但很有用。

因为它们会把一个“我想研究某某方向”，逼成一个更具体的判断，什么值得做，什么暂时不值得做，什么需要改写，什么应该先放一放。

我尤其喜欢它的一点是，它不是凭空写出来的一套 prompt。

这个项目参考了很多关于科研品味和问题选择的可靠来源，比如 Uri Alon 关于如何选择科学问题的文章，Michael Fischbach 关于 problem choice 的讨论，Platt 的 strong inference，Alvesson 和 Sandberg 的 problematization，DARPA 的 Heilmeier Catechism，以及 Hamming、Michael Nielsen 等人关于研究判断力的分享。

它们有一个共同点，好的科研问题不是灵光一闪之后就自然出现的。

它是可以训练的。

你要比较问题，而不是只比较方法。

你要识别陷阱，而不是只追热点。

你要允许问题失败，而不是把每个想法都包装成“可发”。

你要关心负结果能不能教你东西，而不是只关心故事能不能讲圆。

Good Question 就是想把这些方法论，压缩成一个 agent 能执行的工作流。

现在它可以在 Codex 和 Claude Code 里使用。其他 agent 其实也能用，因为核心就是一个 `SKILL.md` 加上一组按需加载的方法卡片。

你可以这样用它：

```text
用 $good-question 帮我把这个粗略想法打磨成一个好的科研问题：
[你的想法]
```

也可以更具体一点：

```text
用 $good-question 压力测试这个 proposal，重点找评审最可能攻击的地方：
[proposal 摘要]
```

它最后通常会输出一张 `Good Question Card`，里面包括研究问题、重要性、竞争假设、可证伪信号、两周 pilot、最强反对意见和下一步行动。

我觉得这个格式很适合放在开题、组会、proposal 初稿之前用。

不是为了让 AI 替你决定研究方向。

恰恰相反，是为了逼你更清楚地看见自己的方向。

如果你也经常遇到这种状态，有很多想法，但不知道哪个真的值得做，或者写 proposal 的时候总觉得“这里好像还不够硬”，可以试试这个项目。

GitHub 地址：

https://github.com/Rimagination/good-question

MIT License，欢迎使用、改造、提 issue。

我自己对它的期待不是做成一个“选题神器”。

我更希望它像一张桌边清单。

当一个想法让你兴奋的时候，它负责泼一点冷水。

当一个问题看起来太松的时候，它负责把螺丝拧紧。

当你开始方法先行的时候，它负责把你拉回那句最重要的话。

我们到底在问什么？

## 资源链接

good-question 项目地址: https://github.com/Rimagination/good-question

Uri Alon《How to Choose a Good Scientific Problem》: https://doi.org/10.1016/j.molcel.2009.09.013

Michael A. Fischbach《Problem choice and decision trees in science and engineering》: https://doi.org/10.1016/j.cell.2024.03.012

John R. Platt《Strong Inference》: https://doi.org/10.1126/science.146.3642.347

Mats Alvesson 和 Jörgen Sandberg《Generating Research Questions Through Problematization》: https://doi.org/10.5465/amr.2009.0188

DARPA《The Heilmeier Catechism》: https://www.darpa.mil/about/heilmeier-catechism

Richard Hamming《You and Your Research》: https://www.cs.virginia.edu/~robins/YouAndYourResearch.html

Michael Nielsen《Principles of Effective Research》: https://michaelnielsen.org/blog/principles-of-effective-research/
