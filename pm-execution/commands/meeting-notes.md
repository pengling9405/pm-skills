description: 将会议记录整理为结构化笔记，包含决策、行动项与后续跟进
argument-hint: "<会议转录或会议笔记>"
---

# /meeting-notes -- 会议摘要

把原始会议转录或零散笔记整理为清晰、结构化的会议纪要，明确记录决策与行动项归属。

## 调用方式

```
/meeting-notes [paste transcript]
/meeting-notes [upload transcript file, audio summary, or notes]
```

## 工作流

### 步骤 1：接收会议内容

接受任意格式：
- 完整转录（来自 Otter、Fireflies、Google Meet、Zoom 等）
- 会议中的手写或粗略笔记
- 转录工具生成的语音摘要或 recap
- 多种输入组合（例如 transcript + 用户自己的笔记）

如果输入信息不完整，就基于现有内容整理，并明确指出缺失之处。

### 步骤 2：提取并结构化整理

调用 **summarize-meeting** skill：

从内容中识别：
- **Participants**：谁参加了会议（通过自我介绍、发言标签或提及判断）
- **Topics discussed**：主要议题或讨论主线
- **Decisions made**：已经达成的明确结论
- **Action items**：分配出去的任务，如有则包含 owner 与 deadline
- **Open questions**：尚未解决、需要继续跟进的问题
- **Key quotes**：值得原文保留的重要表述
- **Context**：会议类型、项目背景与上下文

### 步骤 3：生成会议摘要

```
## Meeting 摘要

**Date**: [date if known]
**Participants**: [names/roles]
**Meeting type**: [standup, planning, review, 1:1, stakeholder, etc.]
**Topic**: [primary subject]

### 摘要
[用 3 到 5 句话概括讨论内容与最终结论]

### Key Decisions
1. **[Decision]** — [背景与原因]
2. ...

### Action Items
| # | Action | Owner | Deadline | Status |
|---|--------|-------|----------|--------|

### Discussion Highlights
**[Topic 1]**: [key points, different perspectives, conclusion]
**[Topic 2]**: [key points, different perspectives, conclusion]

### Open Questions
- [问题] — 需要 [person/team] 提供输入

### 下一步
- [接下来做什么]
- Next meeting: [如有提及]
```

保存为 markdown。

### 步骤 4：提供后续动作

- “要不要我把这些纪要**整理成邮件**发给参会人？”
- “要不要我把这些 action items **转成 tickets**？”
- “要不要我基于这次决策**起草一版 stakeholder update**？”

## 说明

- 决策是最有价值的输出，务必确保每个决策都被清楚记录
- 没有 owner 的 action item 基本没用，如果内容中没写 owner，要明确标出来
- 摘要要简洁，让没参会的人也能在 30 秒内抓住重点
- 如果 transcript 很长（如 60 分钟以上），优先给 TL;DR，再给完整版
- 一定区分“讨论过”与“决定了”，很多话题只讨论但并未下结论
