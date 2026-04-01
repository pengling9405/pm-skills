---
description: 对功能请求做主题归类、分析与优先级判断
argument-hint: "<功能请求列表或相关文档>"
---

# /triage-requests -- 功能 Request Triage

对一组 feature requests 做结构化分类与优先级判断，帮助你从杂乱需求里提炼行动建议。

## 调用方式

```text
/triage-requests [上传反馈表]
/triage-requests 把最近 30 条客户功能请求整理一下
```

## 工作流

### 步骤 1: Accept 功能 Requests

输入可以是：
- 原始需求列表
- 工单系统导出
- 客户反馈汇总
- 销售 / 客服整理内容

### 步骤 2: Gather Prioritization 背景

补充：
- 当前产品目标
- 当前阶段重点
- 已知约束
- 是否已有 roadmap 或战略方向

### 步骤 3: Categorize and Analyze

- 按主题聚类
- 区分问题、功能建议、误解、支持请求
- 识别重复模式与高频信号

### 步骤 4: Prioritize

按影响、紧急度、战略一致性与证据强度排序。

### Step 5: Generate Triage 报告

```markdown
## 功能 Request Triage 报告
### Theme 摘要
### Priority 1: Act Now
### Priority 2: 计划 Next
### Priority 3: Collect More Signal
### Priority 4: Decline or Defer
### Notable Individual Requests
### Patterns and Insights
```

### Step 6: Offer 下一步

- 继续拆成 PRD
- 生成优先级表
- 形成 stakeholder summary

## Notes

- 高频不等于高价值
- 单一大客户声音不应自动主导优先级
- 要把“真实问题”与“用户提议的解决方案”分开看
