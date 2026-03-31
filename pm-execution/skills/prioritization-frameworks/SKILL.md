name: prioritization-frameworks
description: "9 种 prioritization frameworks 的参考指南，包含公式、适用场景与模板，如 RICE、ICE、Kano、MoSCoW、Opportunity Score 等。适用于选择优先级方法、比较不同框架，或学习它们的使用方式。"
---

## Prioritization Frameworks 参考

这是一份帮助你根据实际情境选择并应用合适 prioritization framework 的参考指南。

### 核心原则

不要让客户替你设计解决方案。优先排序的对象应该是 **problems（opportunities）**，而不是 features。

### Opportunity Score（Dan Olsen，《The Lean Product Playbook》）

这是最推荐用于排序客户问题的框架。

对每个需求，让客户分别打 **Importance** 和 **Satisfaction** 分数（建议归一化到 0–1）。

三个相关公式：
- **Current value** = Importance × Satisfaction
- **Opportunity Score** = Importance × (1 − Satisfaction)
- **Customer value created** = Importance × (S2 − S1)，其中 S1 是改进前满意度，S2 是改进后满意度

高 Importance + 低 Satisfaction = 更高的 Opportunity Score = 更值得优先解决的问题。可以画在 Importance vs Satisfaction 图上，左上区域通常是最值得投入的位置。这个方法优先排序的是客户问题，不是解决方案。

### ICE Framework

适合给 initiatives 和 ideas 排优先级。不只看价值，也把风险和经济性纳入考虑。

- **I**（Impact）= Opportunity Score × 受影响客户数量
- **C**（Confidence）= 我们有多确定？（1-10），用于反映风险
- **E**（Ease）= 实施有多容易？（1-10），用于反映经济成本

**Score** = I × C × E。分数越高，越值得优先做。

### RICE Framework

把 ICE 中的 Impact 拆成两个因素，更适合需要更细颗粒度的大团队。

- **R** (Reach) = Number of customers affected
- **I** (Impact) = Opportunity Score (value per customer)
- **C** (Confidence) = How confident are we? (0-100%)
- **E** (Effort) = How much effort to implement? (person-months)

**Score** = (R × I × C) / E

### 9 种框架概览

| Framework | Best For | Key Insight |
|-----------|----------|-------------|
| Eisenhower Matrix | Personal tasks | Urgent vs Important — for individual PM task management |
| Impact vs Effort | Tasks/initiatives | Simple 2×2 — quick triage, not rigorous for strategic decisions |
| Risk vs Reward | Initiatives | Like Impact vs Effort but accounts for uncertainty |
| **Opportunity Score** | Customer problems | **Recommended.** Importance × (1 − Satisfaction). Normalize to 0–1. |
| Kano Model | Understanding expectations | Must-be, Performance, Attractive, Indifferent, Reverse. For understanding, not prioritizing. |
| Weighted Decision Matrix | Multi-factor decisions | Assign weights to criteria, score each option. Useful for stakeholder buy-in. |
| **ICE** | Ideas/initiatives | Impact × Confidence × Ease. Recommended for quick prioritization. |
| **RICE** | Ideas at scale | (Reach × Impact × Confidence) / Effort. Adds Reach to ICE. |
| MoSCoW | Requirements | Must/Should/Could/Won't. Caution: project management origin. |

### 模板

- [Opportunity Score intro (PDF)](https://drive.google.com/file/d/1ENbYPmk1i1AKO7UnfyTuULL5GucTVufW/view)
- [Importance vs Satisfaction Template — Dan Olsen (Google Slides)](https://docs.google.com/presentation/d/1jg-LuF_3QHsf6f1nE1f98i4C0aulnRNMOO1jftgti8M/edit#slide=id.g796641d975_0_3)
- [ICE Template (Google Sheets)](https://docs.google.com/spreadsheets/d/1LUfnsPolhZgm7X2oij-7EUe0CJT-Dwr-/edit?usp=share_link&ouid=111307342557889008106&rtpof=true&sd=true)
- [RICE Template (Google Sheets)](https://docs.google.com/spreadsheets/d/1S-6QpyOz5MCrV7B67LUWdZkAzn38Eahv/edit?usp=sharing&ouid=111307342557889008106&rtpof=true&sd=true)

---

### 延伸阅读

- [The Product Management Frameworks Compendium + Templates](https://www.productcompass.pm/p/the-product-frameworks-compendium)
- [Kano Model: How to Delight Your Customers Without Becoming a Feature Factory](https://www.productcompass.pm/p/kano-model-how-to-delight-your-customers)
- [Continuous Product Discovery Masterclass (CPDM)](https://www.productcompass.pm/p/cpdm) (video course)
