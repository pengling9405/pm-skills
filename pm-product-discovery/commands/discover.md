---
description: 运行完整 discovery 流程，从想法发散到假设映射，再到实验设计
argument-hint: "<产品或功能想法>"
---

# /discover -- Full Discovery Cycle

运行一套完整的产品 discovery 流程，从发散思考走到聚焦验证。这个命令会把多个 skill 串成一条端到端工作流。

## 调用方式

```text
/discover 我们的项目管理工具需要一个智能提醒系统
/discover 新产品：给非母语用户的 AI 写作助手
/discover
```

## 工作流

### 步骤 1: Understand the Discovery 背景

先判断是：
- **Existing product**：在已有产品上做持续 discovery
- **New product**：针对新概念做初始 discovery

补充问题：
- 你在探索什么？
- 已经知道什么？
- 这次 discovery 要支撑什么决策？

可以接受研究材料、PRD、访谈纪要、数据、链接等上下文。

### 步骤 2: Brainstorm Ideas (Divergent Phase)

调用：
- `brainstorm-ideas-existing` 或
- `brainstorm-ideas-new`

输出一组候选方向，并要求用户选择值得继续推进的 3-5 个。

### 步骤 3: Identify Assumptions (Critical Thinking Phase)

对选中的方向调用：
- `identify-assumptions-existing` 或
- `identify-assumptions-new`

识别风险假设：
- Value
- Usability
- Feasibility
- Viability
- Go-to-Market（新产品时）

### 步骤 4: Prioritize Assumptions (Focus Phase)

调用 `prioritize-assumptions`：
- 用 Impact × Risk 矩阵排序
- 找出 leap-of-faith assumptions
- 明确最先要验证什么

### Step 5: 设计 Experiments (Validation Phase)

调用：
- `brainstorm-experiments-existing` 或
- `brainstorm-experiments-new`

为高优先级假设设计验证实验，并说明：
- 方法
- 成功标准
- 时间
- 成本 / 工作量

### Step 6: Create Discovery 计划

整理成一份 discovery plan：

```markdown
## Discovery 计划: [Topic]

### Ideas Explored
### Selected Ideas for Validation
### Critical Assumptions
### Validation Experiments
### 实验细节
### Discovery Timeline
### Decision Framework
```

保存为 Markdown 文件。

### Step 7: Offer 下一步

- 继续产出 PRD
- 补 interview script
- 建 metrics dashboard
- 拆 MVP stories

## Notes

- 这是一个 15-30 分钟的结构化流程
- 每个 checkpoint 用户都可以改方向、跳步或深入
- 新产品优先验证 desirability
- 已有产品优先结合真实使用数据
