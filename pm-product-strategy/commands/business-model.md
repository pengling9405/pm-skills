description: 使用 Lean Canvas、Business Model Canvas、Startup Canvas 或 Value Proposition 框架探索商业模式
argument-hint: "[lean|full|startup|value-prop] <产品或业务>"
---

# /business-model -- 商业模式探索

使用四个互补框架构建并分析商业模式。你可以选择其中一个，也可以全部运行以获得完整视图。

## 调用方式

```
/business-model lean Marketplace connecting freelance PMs with startups
/business-model full Enterprise analytics platform
/business-model startup AI writing tool for non-native English speakers
/business-model value-prop SaaS onboarding tool
/business-model all SaaS onboarding tool        # runs all four
/business-model                                   # asks what you need
```

## 模式

---

### Lean Canvas 模式

适合：早期想法、创业项目、新产品线。

使用 **lean-canvas** skill 生成完整的 Lean Canvas：

```
## Lean Canvas: [Product]

| Problem (Top 3) | Solution | Unique Value Proposition |
|-----------------|----------|------------------------|
| 1. [problem]    | [solution to each] | [single clear message] |
| 2. [problem]    |          |                        |
| 3. [problem]    |          |                        |

| Key Metrics | Unfair Advantage |
|------------|-----------------|
| [what you measure] | [what can't be copied] |

| Channels | Customer Segments |
|---------|------------------|
| [how you reach them] | [who, early adopters first] |

| Cost Structure | Revenue Streams |
|---------------|----------------|
| [fixed + variable] | [how you make money] |

### 风险最高的假设
[要让这件事成立，哪些条件必须为真，并按风险排序]

### 待执行实验
[如何用低成本验证最关键的高风险假设]
```

---

### 完整 Business Model Canvas 模式

适合：成熟产品、战略规划、投资人材料。

使用 **business-model** skill 生成包含 9 个模块的完整画布：

```
## Business Model Canvas: [Product]

| Key Partners | Key Activities | Value Propositions | Customer Relationships | Customer Segments |
|-------------|---------------|-------------------|----------------------|------------------|
| [who helps you] | [core actions] | [why customers choose you] | [how you interact] | [who you serve] |

| Key Resources | | Channels | |
|-------------|---|---------|---|
| [what you need] | | [how you deliver] | |

| Cost Structure | Revenue Streams |
|---------------|----------------|
| [your costs] | [your revenue] |

### 分析
[该模式的优势与弱点]
[各部分如何彼此强化]
[脆弱点与依赖关系]
```

---

### Startup Canvas 模式

适合：需要把战略与商业模式整合到一个文档中的新产品和创业项目。对于新产品，优先推荐它而不是 Lean Canvas 和 BMC。

使用 **startup-canvas** skill 生成包含 9 个战略部分与商业模式部分的 Startup Canvas：

```
## Startup Canvas: [Product]

### Part 1：产品战略

| Vision | Market Segments | Relative Costs |
|--------|----------------|---------------|
| [inspiring why] | [JTBD, first segment] | [low cost vs unique value] |

| Value Proposition | Trade-offs | Key Metrics |
|------------------|-----------|------------|
| [What before → How → What after → Alternatives] | [what you won't do] | [North Star + OMTM] |

| Growth | Capabilities | Can't/Won't |
|--------|-------------|------------|
| [PLG vs Sales-Led, channels] | [build vs partner] | [why competitors can't copy] |

### Part 2：商业模式

| Cost Structure | Revenue Streams |
|---------------|----------------|
| [fixed + variable, how they scale] | [pricing model, revenue per channel] |

### 战略一致性检查
[所有要素是否相互强化？]

### 风险最高的假设
[哪些条件必须为真，以及如何验证]
```

---

### Value Proposition 模式

适合：打磨信息表达、理解用户价值、分析 product-market fit。

使用 **value-proposition** skill 生成基于 JTBD 结构的价值主张：

```
## Value Proposition: [Product]

### For [Segment]:
1. **Who**: [target user profile]
2. **Why**: [the job they're trying to do]
3. **What Before**: [their current painful reality]
4. **How**: [your solution approach]
5. **What After**: [their improved reality]
6. **Alternatives**: [what they'd use without you, and why you're better]

### 价值主张陈述
[一句话版本：对于 [who] 这类有 [need] 需求的人，[product] 是一个能够提供 [benefit] 的 [category]。不同于 [alternative]，我们在 [differentiator] 上更强。]
```

---

### all 模式

运行四个框架，并额外输出一个综合部分，用来比较各框架得到的结论。

## 工作流（所有模式通用）

### 步骤 1：收集上下文

询问：
- 产品或商业想法是什么？
- 当前处于什么阶段？（idea、validated、scaling）
- 是否已有商业模式需要优化？
- 目标客户是谁？

### 步骤 2：生成所选框架

按上面的说明调用对应的 skill。

### 步骤 3：保存并继续迭代

保存为 markdown。并继续提供后续动作：
- “要不要我用 SWOT 或 PESTLE 来**压力测试这个模型**？”
- “要不要我针对这些收入来源**设计定价策略**？”
- “要不要我基于这个模型**搭一个 strategy canvas**？”
- “要不要我帮你**识别 beachhead segment**？”

## 说明

- **Startup Canvas** 是新产品最推荐的起点，它把战略和商业模式拆开，并补上了 BMC 与 Lean Canvas 缺失的内容（vision、trade-offs、metrics、Can't/Won't）
- **Lean Canvas** 适合快速推演与假设验证，不要过度打磨，但要注意它把战略和商业模式混在同一个文档里
- **BMC** 更适合成熟业务，用来表达各部分如何联动，但缺少 vision、trade-offs、metrics 等战略部分
- **Value Proposition** 是讨论 product-market fit 时最锋利的工具
- 在 `all` 模式下，重点标出各框架结论一致的地方（强信号）和彼此分歧的地方（值得继续调查）
