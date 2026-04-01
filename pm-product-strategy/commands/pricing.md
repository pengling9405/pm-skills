description: 设计定价策略，包括定价模型、竞品分析、支付意愿估算与定价实验
argument-hint: "<产品或定价问题>"
---

# /pricing -- 定价策略设计

从第一性原理构建定价策略：分析定价模型、估算支付意愿、对标竞品，并设计定价实验。

## 调用方式

```
/pricing SaaS project management tool moving from free to paid
/pricing Should we switch from per-seat to usage-based pricing?
/pricing [upload competitor 定价页s or current pricing data]
```

## 工作流

### 步骤 1：理解定价背景

询问：
- 这是什么产品？它交付的核心价值是什么？
- 当前定价是什么（如果已有）？包括模型、价格点与套餐结构
- 这次为什么要讨论定价？（新产品、调价、竞争压力、增长停滞）
- 目标客户画像以及他们的预算环境
- 有没有限制条件？（合同约束、市场预期、竞争定位）

### 步骤 2：分析定价模型

调用 **pricing-strategy** 与 **monetization-strategy** skill：

评估适用模型：
- **Flat-rate**：简单、可预期，适合标准化产品
- **Per-seat/user**：随着采用人数增长，适合协作类工具
- **Usage-based**：成本与价值更一致，适合基础设施与 API 产品
- **Tiered**：覆盖不同支付意愿，适合分层市场
- **Freemium**：推动采用，适合有网络效应的产品
- **Hybrid**：组合多种模型，适合有多重价值杠杆的复杂产品

对每个相关模型说明：优点、缺点、与产品的匹配度、收入预测方式。

### 步骤 3：竞品定价分析

结合 web research：
- 对标 3 到 5 个竞争对手的价格
- 识别品类中的常见定价模式
- 记录定价趋势（例如 B2B SaaS 从 per-seat 转向 usage-based）
- 收集定价页截图与关键数据点

### 步骤 4：支付意愿估算

如果用户有问卷数据或客户反馈：
- 应用 Van Westendorp 分析（前提是数据足够）
- 按用户类型拆分支付意愿

如果没有数据：
- 基于交付价值、竞品锚点与市场惯例做估算
- 设计一个可以执行的支付意愿调研

### Step 5：输出定价建议

```
## Pricing 策略: [Product]

**Date**: [today]
**Current pricing**: [if applicable]

### Recommended Model: [Model Name]

**为何采用该模型**：[与产品价值交付方式相绑定的理由]

### Pricing Structure
| Tier | Price | Includes | Target Segment | Key Limit |
|------|-------|---------|---------------|-----------|

### 免费 / 试用策略
[哪些免费、哪些需要付费、转化触发点是什么]

### Competitive Benchmark
| Competitor | Model | Price Range | Positioning |
|-----------|-------|-----------|------------|

### Revenue Projections
| Scenario | Assumptions | Year 1 ARR | Year 2 ARR |
|----------|-----------|-----------|-----------|
| Conservative | [X] | [Y] | [Z] |
| Expected | [X] | [Y] | [Z] |
| Optimistic | [X] | [Y] | [Z] |

### 迁移方案
[如果需要调价，如何迁移现有客户]
- Grandfathering approach
- Communication plan
- Timeline

### Pricing Experiments
| Experiment | What We're Testing | Method | Duration |
|-----------|-------------------|--------|----------|

### Risks and Mitigations
| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|

### 需要跟踪的关键指标
- Conversion rate by tier
- Average revenue per user (ARPU)
- Upgrade/downgrade rates
- Churn by price sensitivity
- Price elasticity signals
```

保存为 markdown。

### Step 6：提供后续动作

- “要不要我补一版**monetization strategy**，把其他收入模型也列出来？”
- “要不要我跑一个 **market scan**，验证定价假设是否成立？”
- “要不要我帮你起草这次调价的**客户沟通文案**？”
- “要不要我为这些定价实验**设计 A/B test**？”

## 说明

- 定价通常是收入增长最强的杠杆，1% 的定价优化，影响往往是 1% 获客优化的 3 到 4 倍
- Value-based pricing 基本总是优于 cost-plus，要从客户感知价值出发，而不是从你的成本出发
- 最好的定价应当对客户简单易懂、可预期
- Freemium 只有在免费用户也能带来价值时才成立，例如网络效应、口碑传播、市场流动性
- 一定要为老客户设计迁移路径，粗暴调价会直接伤害信任
