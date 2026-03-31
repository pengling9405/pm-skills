---
description: 为产品或功能设计指标体系与 dashboard 规格
argument-hint: "<产品、功能或目标>"
---

# /setup-metrics -- Product Metrics Dashboard Design

这个命令用于定义指标体系、预警阈值与 dashboard 结构。

## Invocation

```text
/setup-metrics 新用户激活
/setup-metrics 付费转化漏斗
/setup-metrics AI 搜索体验
```

## Workflow

### Step 1: Understand What to Measure

先问清：
- 想追踪哪个产品目标
- 指标要支撑什么决策
- 当前是否已有埋点或数据源

### Step 2: Define the Metrics Framework

划分：
- 输入指标
- 健康指标
- 反向指标
- 北极星 / 核心结果指标

### Step 3: Design Alert Thresholds

为关键指标定义：
- 正常范围
- 异常阈值
- 需要人工关注的触发条件

### Step 4: Create Dashboard Spec

```markdown
## Metrics Dashboard: [Product/Feature]

### Input Metrics
### Health Metrics
### Counter-Metrics
### Metrics Tree
### Implementation Notes
### Review Cadence
```

### Step 5: Offer Next Steps

- 补 tracking plan
- 设计埋点事件
- 补 AB test 评估指标

## Notes

- 指标应服务决策，而不是为了“看起来全面”
- 尽量避免 vanity metrics
- counter-metrics 用于防止单一优化带来副作用
