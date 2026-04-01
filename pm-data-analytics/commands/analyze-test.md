---
description: 分析 A/B 测试 结果，检查样本量、显著性与业务影响
argument-hint: "<实验数据或实验说明>"
---

# /analyze-测试 -- A/B 测试 Analysis

对实验结果做结构化分析，输出是否应 ship、extend 或 stop。

## 调用方式

```text
/analyze-test [上传实验结果]
/analyze-test onboarding 文案实验
```

## 工作流

### 步骤 1: Accept 测试 Data
### 步骤 2: Validate 测试 设计
### 步骤 3: Analyze Results
### 步骤 4: Generate Analysis

```markdown
## A/B 测试 Analysis: [测试 Name]
### Results 摘要
### Statistical Analysis
### Sample Size Check
### Decision
### Business 影响 Estimate
### Caveats
### Follow-Up
```

### Step 5: Offer 下一步

- 继续设计 follow-up 实验
- 写 release notes / decision memo

## Notes

- 不要只看 uplift，还要看样本量与业务意义
