---
name: sprint-plan
description: "通过容量估算、story 选择、依赖映射和风险识别来规划 sprint。适用于准备 sprint planning、估算团队容量、挑选 stories，或平衡 sprint scope 与 velocity。"
---

## Sprint Planning

通过估算团队容量、选择并排序 stories、识别风险来规划 sprint。

### 背景

你正在帮助 **$ARGUMENTS** 规划一个 sprint。

如果用户提供了文件（backlogs、velocity 数据、团队名单或之前的 sprint 报告），先阅读这些内容。

### 操作要求

1. **估算团队容量**：
   - 统计团队人数及每个人的可用性（PTO、会议、on-call）
   - 参考历史 velocity（最近 3 个 sprint 的平均 story points）
   - 预留 15%-20% buffer 给临时工作、bug 与 tech debt
   - 计算可用容量（story points 或 ideal hours）

2. **审阅并选择 stories**：
   - 从已排序的 backlog 中挑选（优先级高的先选）
   - 检查每条 story 是否满足 Definition of Ready（AC 清晰、已估点、无明显 blocker）
   - 标出仍需 refinement 的 story，不要直接承诺
   - 容量达到上限后停止继续添加

3. **映射依赖关系**：
   - 找出依赖其他 stories 或外部团队的条目
   - 以合理顺序安排存在依赖的 stories
   - 标出外部依赖及其 owner
   - 识别 critical path

4. **识别风险与缓解措施**：
   - 高不确定性或高复杂度的 stories
   - 可能延误的外部依赖
   - 知识过度集中（只有一个人会做）
   - 为每个风险给出缓解建议

5. **生成 sprint plan 摘要**：

   ```
   Sprint Goal: [One sentence describing what success looks like]
   Duration: [2 weeks / 1 week / etc.]
   Team Capacity: [X story points]
   Committed Stories: [Y story points across Z stories]
   Buffer: [remaining capacity]

   Stories:
   1. [Story title] — [points] — [owner] — [dependencies]
   ...

   Risks:
   - [Risk] → [Mitigation]
   ```

6. **定义 sprint goal**：用一句清晰的话概括这个 sprint 最核心的价值交付。

逐步思考，并保存为 markdown。

---

### 延伸阅读

- [Product Owner vs Product Manager: What's the difference?](https://www.productcompass.pm/p/product-manager-vs-product-owner)
