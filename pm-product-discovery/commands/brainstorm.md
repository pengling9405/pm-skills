---
description: 围绕产品或功能主题做多视角头脑风暴，可输出想法或实验方案
argument-hint: "<产品、功能或机会空间>"
---

# /brainstorm -- Multi-Perspective Ideation

用结构化方式从 PM、设计、工程等不同视角发散想法，适合在 discovery 早期快速铺开选项。

## 调用方式

```text
/brainstorm 新用户激活流程
/brainstorm 现有用户的付费转化
/brainstorm 新产品：面向独立开发者的 AI 研究助手
```

## 工作流

### 步骤 1: Determine 模式

先判断当前是：
- 需要**想法**，还是
- 需要**实验方案**

### 步骤 2: Gather 背景

补充以下上下文：
- 目标产品 / 功能是什么
- 面向谁
- 已知痛点、限制、现有数据
- 希望推动什么结果

### 步骤 3: Generate Output

如果是想法模式：
- 从 PM、Designer、Engineer 三个视角各给出候选方向
- 汇总为一组优先建议

如果是实验模式：
- 先提出关键假设
- 再设计低成本验证方式

### 步骤 4: Deepen and Iterate

生成首轮结果后继续：
- 收紧范围
- 合并相近想法
- 指出高风险项
- 给出最值得先验证的 3-5 个方向

## 输出格式

### For Ideas:

```markdown
## Brainstorm: [Product/功能 Area]

### PM 视角
- ...

### 设计师视角
- ...

### 工程师视角
- ...

### 前 5 条建议
1. ...

### 下一步
- ...
```

### For Experiments:

```markdown
## Experiment 设计: [Product/功能 Area]

### Hypotheses
- ...

### 推荐实验
- ...

### 实验细节
- ...
```

## Notes

- 先发散，再收敛
- 优先给出小而可验证的方向
- 如果上下文很少，也要先把假设显式写出来
