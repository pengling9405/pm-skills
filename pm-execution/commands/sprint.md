description: Sprint 全周期工作流，可用于 sprint planning、retrospective 或生成 release notes
argument-hint: "[plan|retro|release-notes] <上下文>"
---

# /sprint -- Sprint 全周期

这个命令提供覆盖 sprint 全周期的三个模式：**plan** 用于 sprint planning，**retro** 用于 retrospective，**release-notes** 用于发布沟通。

## 调用方式

```
/sprint plan 2-week sprint, 4 engineers, focus on checkout improvements
/sprint retro [paste team feedback or sprint data]
/sprint release-notes [paste tickets, changelog, or PRD]
/sprint                    # asks which phase you're in
```

## 模式

---

### Plan 模式

通过容量估算、story 选择与风险识别，帮助完成 sprint planning。

#### 工作流

**Step 1：收集 Sprint 背景**
- Sprint 时长（1 周或 2 周）
- 团队构成（engineers、designers、QA 及各自可用性）
- Sprint goal 或重点方向
- 待考虑的 backlog items（粘贴、上传或描述）
- 上个 sprint 是否有遗留项
- 已知打断因素（节假日、on-call、会议）

**Step 2：估算容量**

调用 **sprint-plan** skill：

- 扣除会议、on-call、PTO 之后，计算可用工程工时或 story points
- 结合历史 velocity（如有）或通用经验值（理论容量的 70%）做修正
- 按成员展示容量拆分

**Step 3：选择并排序 Stories**

- 推荐哪些 stories 能放进当前容量
- 标出依赖链（例如 A 必须先于 B 完成）
- 识别风险：描述不清、依赖外部团队、需要设计输入等
- 平衡 quick wins 与大项任务
- 确保每个 story 都有 acceptance criteria

**Step 4：生成 Sprint Plan**

```
## Sprint Plan: [Sprint Name/Number]

**Duration**: [dates]
**Sprint Goal**: [one sentence]
**Team**: [members and availability]

### Capacity
| Member | Available Days | Points/Hours | Notes |
|--------|--------------|-------------|-------|

**Total capacity**: [X] points/hours
**Recommended commitment**: [Y] points/hours (with buffer)

### Selected Stories
| # | Story | Points | Owner | Dependencies | Risk |
|---|-------|--------|-------|-------------|------|

### Sprint Risks
1. [Risk] — Mitigation: [action]

### Definition of Done
- [ ] Code reviewed
- [ ] Tests passing
- [ ] Deployed to staging
- [ ] QA approved
- [ ] Documentation updated (if applicable)
```

---

### Retro 模式

组织结构化 retrospective，并产出可执行的改进动作。

#### 工作流

**Step 1：收集 Sprint 反馈**

可接受的输入包括：
- 团队反馈（来自问卷、Slack 或协作文档）
- Sprint 指标（velocity、bugs、incidents）
- 用户自己的观察

询问：“你偏好哪种 retro 形式？”
- **Start/Stop/Continue**（简单、快速）
- **4Ls**（Liked、Learned、Lacked、Longed for）
- **Sailboat**（Wind = 推进因素，Anchor = 拖慢因素，Rocks = 风险，Island = 目标）

**Step 2：分析并结构化整理**

调用 **retro** skill：

- 按所选框架归类反馈
- 找出主题与模式
- 区分表面症状与根因
- 标出值得庆祝的亮点

**Step 3：生成 Retro Summary**

```
## Sprint Retrospective: [Sprint Name]

**Date**: [today]
**Format**: [Start/Stop/Continue | 4Ls | Sailboat]
**Participants**: [if known]

### What Went Well
[Grouped themes with supporting evidence]

### What Didn't Go Well
[Grouped themes with root cause analysis]

### Key Insights
[2-3 patterns that emerged]

### Action Items
| # | Action | Owner | Deadline | Priority |
|---|--------|-------|----------|----------|

### Metrics This Sprint
| Metric | This Sprint | Last Sprint | Trend |
|--------|-----------|------------|-------|
```

---

### Release Notes 模式

把技术资料转换成面向用户的 release notes。

#### 工作流

**Step 1：接收发布内容**

接受以下任一输入：
- Jira/Linear tickets 或 changelog
- PRD 或 feature specs
- Git commit messages 或 PR 描述
- 团队内部对已发布内容的总结

**Step 2：转换内容**

调用 **release-notes** skill：

- 把技术语言翻译成用户收益
- 分类为：New Features、Improvements、Bug Fixes
- 按产品语气写作（若语气不明确则先问）
- 优先突出影响最大的变化

**Step 3：生成 Release Notes**

```
## What's New — [Version/Date]

### Highlights
[1-2 sentence summary of the most important change]

### New Features
- **[Feature Name]** — [user-facing benefit in plain language]

### Improvements
- **[Improvement]** — [what's better now]

### Bug Fixes
- Fixed [issue] that caused [user impact]

### Coming Soon
[Optional teaser for next release]
```

保存为 markdown，并可继续适配成不同渠道格式（blog post、in-app、email、Slack announcement）。

## 说明

- 对 plan 模式：至少保留 20% buffer 给未计划工作，按 100% 容量排满的团队通常都会超载
- 对 retro 模式：聚焦 2 到 3 个高影响 action items，不要列 10 个没人会做的事项
- 对 release notes：始终用用户收益来表达，而不是技术实现细节
- 三个模式可以串起来使用：plan →（sprint 执行）→ retro → release-notes
