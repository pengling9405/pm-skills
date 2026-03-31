---
description: 分析 A/B test 结果，检查样本量、显著性与业务影响
argument-hint: "<实验数据或实验说明>"
---

# /analyze-test -- A/B Test Analysis

对实验结果做结构化分析，输出是否应 ship、extend 或 stop。

## Invocation

```text
/analyze-test [上传实验结果]
/analyze-test onboarding 文案实验
```

## Workflow

### Step 1: Accept Test Data
### Step 2: Validate Test Design
### Step 3: Analyze Results
### Step 4: Generate Analysis

```markdown
## A/B Test Analysis: [Test Name]
### Results Summary
### Statistical Analysis
### Sample Size Check
### Decision
### Business Impact Estimate
### Caveats
### Follow-Up
```

### Step 5: Offer Next Steps

- 继续设计 follow-up 实验
- 写 release notes / decision memo

## Notes

- 不要只看 uplift，还要看样本量与业务意义
