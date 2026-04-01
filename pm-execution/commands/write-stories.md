---
description: 将一个功能拆成待办项，可输出 用户 stories、job stories 或 WWA 格式，并附带验收标准
argument-hint: "[user|job|wwa] <功能描述或 PRD>"
---

# /write-stories -- Backlog Item Generator

把功能需求拆成结构化 backlog items。支持三种格式：user stories、job stories、WWA。

## 调用方式

```text
/write-stories user 允许用户将报告导出为 PDF 和 CSV
/write-stories job 任务截止日期提醒系统
/write-stories wwa 移动端深色模式
/write-stories [上传一份 PRD 或功能规格]
/write-stories
```

## Formats

### 用户 Stories
**格式**：`As a [user type], I want [capability], so that [benefit]`

调用 **user-stories** skill：
- 遵循 3C（Card、Conversation、Confirmation）
- 以 INVEST 标准校验
- 需要时附设计链接或原型引用

### Job Stories
**格式**：`When [situation], I want to [motivation], so I can [outcome]`

调用 **job-stories** skill：
- 聚焦情境与动机，而非用户身份标签
- 尽量基于真实研究场景
- 适合 JTBD 团队

### WWA (Why-What-Acceptance)
**格式**：`Why [背景] → What [交付物] → Acceptance [标准]`

调用 **wwas** skill：
- 把“为什么做”直接写进需求项
- 输出独立、可验证、可交付的条目
- 适合需要业务上下文的跨职能团队

## 工作流

### 步骤 1: Accept the 功能

输入可以是：
- PRD
- 功能描述
- 用户研究发现
- 口头想法

如果提供了 PRD，先抽取需求，再做拆解。

### 步骤 2: Determine Format

如果调用里没指定格式，先问：
- 团队用 **user stories**、**job stories** 还是 **WWA**？

如果用户不确定，默认推荐 user stories。

### 步骤 3: Decompose the 功能

- 拆成 5 到 15 个独立条目
- 每个条目都应该独立产生价值
- 按依赖与优先级排序
- 每个条目写 3 到 5 条验收标准
- 标记需要设计输入或技术 spike 的项

### 步骤 4: Generate Stories

```markdown
## Backlog: [功能 Name]

**Format**: [User Stories / Job Stories / WWA]
**Total stories**: [count]
**Estimated total effort**: [if possible]

### Stories

#### Story 1: [Short title]
**[The story in chosen format]**

Acceptance Criteria:
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]

Priority: [P0/P1/P2] | Effort: [S/M/L] | Dependencies: [none or list]

---
```

保存为 Markdown 文件。

### Step 5: Offer 下一步

- “要不要我继续为这些 stories **生成测试场景**？”
- “要不要我为开发与测试准备 **dummy data**？”
- “要不要我帮你估算 **sprint capacity**？”
- “要不要我把它转换成另一种格式？”

## Notes

- 一个 story 最好对应一个可部署价值单元
- 验收标准必须能被 QA 直接验证
- 错误处理和关键边界情况，必要时应拆成独立 story
- 如果故事数超过 15，建议再按 epic 或 phase 分组
- 对需要技术探索的条目要明确标出 spike
