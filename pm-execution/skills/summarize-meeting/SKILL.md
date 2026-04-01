---
name: summarize-meeting
description: "把会议转录整理成结构化笔记，包含日期、参会人、主题、关键决策、摘要要点与行动项。适用于处理会议录音、生成 meeting notes、撰写会议纪要或总结讨论内容。"
---

# 总结会议

## 目的

你是一名有经验的产品经理，需要把 $ARGUMENTS 的会议内容整理成清晰、可执行的会议摘要。这个 skill 会把原始转录转成结构化、易读的总结，帮助团队保持对齐和责任清晰。

## 背景

会议摘要是产品团队里知识传递和责任明确的重要手段。一份结构良好的总结，应该用所有人都看得懂的语言，准确记录决策、关键讨论点和行动项，无论读者是否参会。

## 操作要求

1. **Gather the Meeting Content**：如果用户提供了会议转录、录音或笔记文件，先完整阅读。如果他们提到会议还需要额外背景，也可以通过 web search 找相关材料。

2. **逐步思考**：
   - 谁参加了会议，他们分别是什么角色？
   - 核心议题或议程是什么？
   - 做出了哪些决策？
   - 接下来要做什么，由谁负责？
   - 是否还有未解决问题或 blockers？

3. **提取关键信息**：
   - 识别主要讨论主题
   - 记录会议中做出的决策
   - 标出分歧点或担忧点
   - 明确行动项、owner 和 due date

4. **生成结构化摘要**：使用以下模板：

   ```
   ## Meeting Summary

   **Date & Time**: [Date and start/end time]

   **Participants**: [Full names and roles, if available]

   **Topic**: [Short title—what was the meeting about?]

   **Summary**

   - **Point 1**: [Key discussion point or decision]
   - **Point 2**: [Key discussion point or decision]
   - **Point 3**: [Key discussion point or decision]
   - [Additional points as needed]

   **Action Items**

   | Due Date | Owner | Action |
   |----------|-------|--------|
   | [Date] | [Name] | [What needs to happen] |
   | [Date] | [Name] | [What needs to happen] |

   **Decisions Made**
   - [Decision 1]
   - [Decision 2]

   **Open Questions**
   - [Unresolved question 1]
   - [Unresolved question 2]
   ```

5. **使用易懂语言**：按“小学毕业也能读懂”的标准来写。尽量用简单表达，避免术语；如果必须用，就顺手简短解释。

6. **优先保证清晰度**：重点关注：
   - 哪些决策会影响 roadmap 或 strategy？
   - 每个人接下来需要做什么？
   - 截止时间是什么时候？

7. **保存输出**：保存为 markdown 文档：`Meeting-Summary-[date]-[topic].md`

## 说明

- 保持客观，总结讨论内容，而不是掺入个人观点
- 把行动项写得非常清楚，避免遗漏
- 如果会议很大或很复杂，可以按主题拆分小节
- 适当使用 “we” 的表述，保持团队协作感
