name: retro
description: "组织结构化的 sprint retrospective，沉淀做得好的地方、做得不好的地方，以及带 owner 和 deadline 的优先行动项。适用于执行 retrospective、复盘 sprint、根据团队反馈生成行动项，或学习如何做好 retro。"
---

## Sprint Retrospective 引导器

运行结构化 retrospective，提炼关键洞察，并产出可执行的改进动作。

### 背景

你正在为 **$ARGUMENTS** 组织 retrospective。

如果用户提供了文件（sprint 数据、velocity 图表、团队反馈或之前的 retro notes），先阅读这些内容。

### 操作要求

1. **按背景选择 retro 形式**（或者让用户自己选）：

   **Format A — Start / Stop / Continue**：
   - **Start**：我们应该开始做什么？
   - **Stop**：我们应该停止做什么？
   - **Continue**：哪些事情做得好，应该继续保持？

   **Format B — 4Ls（Liked / Learned / Lacked / Longed For）**：
   - **Liked**：团队喜欢什么？
   - **Learned**：学到了什么新东西？
   - **Lacked**：缺少了什么？
   - **Longed For**：我们希望拥有但没有的是什么？

   **Format C — Sailboat**：
   - **Wind（推动力）**：什么在推动我们前进？
   - **Anchor（阻力）**：什么在拖慢我们？
   - **Rocks（风险）**：前方有哪些危险？
   - **Island（目标）**：我们想抵达哪里？

2. **如果用户提供原始反馈**（例如便利贴、问卷回答、Slack 消息）：
   - 把相似内容归并为主题
   - 找出出现频率最高的话题
   - 注意情绪模式（挫败感、积极性、困惑等）

3. **分析 sprint 表现**：
   - Sprint goal 是否达成？
   - Velocity 与 commitment 是否匹配？（超量承诺还是承诺不足）
   - 遇到了哪些 blockers，后来如何处理？
   - 协作模式如何？哪些有效，哪些无效？

4. **生成有优先级的行动项**：

   | Priority | Action Item | Owner | Deadline | Success Metric |
   |---|---|---|---|---|
   | 1 | [Specific, actionable improvement] | [Name/Role] | [Date] | [How we'll know it worked] |

   - 最多保留 2 到 3 个行动项，太多通常不会真正执行
   - 每个行动项都必须具体、可分配、可衡量
   - 如有上一轮 retro 的行动项，也要回看是否真正完成

5. **生成 retro 摘要**：
   ```
   ## Sprint [X] Retrospective — [Date]

   ### Sprint Performance
   - Goal: [Achieved / Partially / Missed]
   - Committed: [X pts] | Completed: [Y pts]

   ### Key Themes
   1. [Theme] — [summary]

   ### Action Items
   1. [Action] — [Owner] — [By date]

   ### Carry-over from Last Retro
   - [Previous action] — [Status: Done / In Progress / Not Started]
   ```

保存为 markdown。整体语气要保持建设性，目标是改进，而不是归咎。
