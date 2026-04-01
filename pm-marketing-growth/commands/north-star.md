---
description: 定义产品的 North Star Metric 及其 supporting metrics
argument-hint: "<产品或功能>"
---

# /north-star -- North Star Metric Definition

为产品定义 North Star Metric，以及一组真正驱动它的输入指标。

## 调用方式

```text
/north-star 团队协作产品
/north-star AI 搜索功能
```

## 工作流

### 步骤 1: Understand the Product

先了解：
- 产品核心价值
- 用户获得价值的关键时刻
- 商业模式与阶段

### 步骤 2: Classify the Business Game

判断业务更偏向：
- Attention
- Transaction
- Productivity

### 步骤 3: Define the North Star

提出候选 NSM，并验证它是否：
- 反映用户价值
- 可持续
- 可衡量
- 不易被 vanity metrics 误导

### 步骤 4: Define Input Metrics

补一组 supporting metrics，解释哪些行为驱动 NSM。

### Step 5: Generate Metrics Framework

```markdown
## North Star Framework: [Product]
### North Star Metric
### Validation
### Input Metrics
### Metrics Constellation
### Counter-Metrics
### Anti-Patterns Avoided
```

### Step 6: Offer 下一步

- 继续设计 dashboard
- 写 tracking plan
- 将指标接入实验方案

## Notes

- NSM 不应只是“最大的数字”
- 一个好的 NSM 应该同时贴近用户价值与业务成长
