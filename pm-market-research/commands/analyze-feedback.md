---
description: 对用户反馈做情绪、主题、分群与行动建议分析
argument-hint: "<反馈数据、评论、调查或支持工单>"
---

# /analyze-feedback -- User Feedback Analysis

把用户反馈转成可执行洞察，而不是只做情绪概括。

## Invocation

```text
/analyze-feedback [上传评论、问卷、客服记录]
/analyze-feedback 最近 100 条 App Store 评论
```

## Workflow

### Step 1: Accept Feedback Data

接受：
- 评论
- 调查结果
- 支持工单
- NPS 开放题
- 客服或销售访谈摘录

### Step 2: Analyze

从以下维度分析：
- 情绪倾向
- 高频主题
- 用户分群差异
- 关键 quote
- 时间变化趋势

### Step 3: Generate Analysis Report

```markdown
## Feedback Analysis Report
### Overall Sentiment
### Top Themes
### Theme Deep-Dive
### Segment Analysis
### Notable Quotes
### Trends Over Time
### Actionable Insights
### Gaps
```

### Step 4: Offer Next Steps

- 提炼 personas
- 形成 feature request triage
- 补 research report

## Notes

- 高频反馈不一定代表最大机会
- 要区分“情绪强烈”与“商业价值高”
