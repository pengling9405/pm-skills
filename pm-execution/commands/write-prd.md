---
description: 根据功能想法或问题陈述创建一份完整的产品需求文档（PRD）
argument-hint: "<功能想法或问题描述>"
---

# /write-prd -- 产品需求文档生成器

将一个功能想法、问题陈述或研究材料整理成结构化 PRD，用于对齐干系人并指导后续开发。

## Invocation

```text
/write-prd 企业客户需要 SSO 支持
/write-prd 用户在 onboarding 第 3 步流失严重，需要修复
/write-prd [上传 brief、研究文档或策略 deck]
```

## Workflow

### Step 1: Understand the Feature

接受任意形式输入：
- 功能名（如 “SSO support”）
- 问题陈述（如 “企业客户反复要求集中式认证”）
- 用户请求（如 “用户希望导出 CSV”）
- 模糊想法（如 “我们需要处理 onboarding 流失”）
- 上传文档（brief、研究、Slack 讨论、邮件）

### Step 2: Gather Context

以对话方式补上下文，优先问最关键的问题：

1. **用户问题**：这解决什么问题？谁在经历？痛感有多强？
2. **目标用户**：服务哪个用户段？规模多大？当前替代方案是什么？
3. **成功指标**：如何判断这件事做成了？哪个指标会被拉动？
4. **约束条件**：技术、时间、合规、跨团队依赖有哪些？
5. **已有经验**：以前是否尝试过？市场上已有替代方案吗？
6. **范围偏好**：希望一次到位，还是分阶段推进？

如果用户已经给了背景文档，先提取已有信息，只针对缺口追问。

### Step 3: Generate the PRD

调用 **create-prd** skill，产出 8 部分 PRD：

```markdown
## Product Requirements Document: [功能名]

**Author**: [user]
**Date**: [today]
**Status**: Draft
**Stakeholders**: [如已知]

### 1. Executive Summary
[2-3 句：做什么、给谁做、为什么现在做]

### 2. Background & Context
[问题空间、已有研究、市场背景、触发原因]

### 3. Objectives & Success Metrics
**Goals**
1. [具体且可衡量]

**Non-Goals**
1. [明确不做什么]

**Success Metrics**
| Metric | Current | Target | Measurement |
|--------|---------|--------|-------------|

### 4. Target Users & Segments
[目标用户、画像、规模、约束]

### 5. User Stories & Requirements
P0 / P1 / P2 分层列出用户故事与验收标准

### 6. Solution Overview
[高层方案、关键设计选择、技术路径]

### 7. Open Questions
| Question | Owner | Deadline |
|----------|-------|----------|

### 8. Timeline & Phasing
[里程碑、依赖、分阶段发布]
```

### Step 4: Review and Iterate

生成后继续给用户下一步选项：
- “要不要我帮你**收紧范围**，把部分 P1 下调成 P2？”
- “要不要我基于这份 PRD 跑一个 **pre-mortem**？”
- “要不要我把它进一步拆成 **user stories**？”
- “要不要我帮你写一份 **stakeholder update**？”

如果产出较完整，保存为当前工作区中的 Markdown 文件。

## Notes

- 对范围要有判断，宁可紧，不要泛
- 如果想法过大，应主动建议分期，并先写 Phase 1
- Non-goals 与 goals 同样重要，它们能直接防止 scope creep
- 成功指标必须具体，不要写空泛目标
- Open Questions 只列真正未解决的问题
- 如果用户提供了研究材料，要在 Background 中吸收，并注明来源
