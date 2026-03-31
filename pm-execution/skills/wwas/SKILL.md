name: wwas
description: "使用 Why-What-Acceptance 格式创建 product backlog items，确保条目独立、有价值、可测试，并带有战略背景。适用于编写结构化 backlog items、把功能拆成 work items，或使用 WWA 格式表达需求。"
---
# Why-What-Acceptance (WWA)

使用 Why-What-Acceptance 格式创建 product backlog items，输出独立、有价值、可测试，并且带有战略背景的工作项。

**适用场景：** 编写 backlog items、拆分 product increments、把功能切成 work items，或向团队传达战略意图。

**参数：**
- `$PRODUCT`: The product or system name
- `$FEATURE`: The new feature or capability
- `$DESIGN`: Link to design files (Figma, Miro, etc.)
- `$ASSUMPTIONS`: Key assumptions and strategic context

## 分步流程

1. **定义战略层面的 Why**：把这项工作与业务目标和团队目标连接起来
2. **描述 What**：保持简洁，并引用设计稿
3. **编写 Acceptance Criteria**：保持高层表达，而不是详细规格说明
4. **确保独立性**：每个 item 都应能独立开发
5. **保持可协商性**：它应引导团队讨论，而不是直接变成僵硬约束
6. **确保有价值**：每个 item 都应交付可衡量的用户或业务价值
7. **确保可测试**：结果必须可观察、可验证
8. **控制规模**：小到足够被一个 sprint 估算和完成

## 条目模板

**Title：** [要交付什么]

**Why：** [1-2 句话，把它与战略背景和团队目标连接起来]

**What：** [简短描述与设计链接。最多 1-2 段。它是讨论结果的提醒，不是详细规格说明。]

**Acceptance Criteria：**
- [可观察结果 1]
- [可观察结果 2]
- [可观察结果 3]
- [可观察结果 4]

## WWA 示例条目

**Title：** 实现实时支出跟踪器

**Why：** 用户需要即时看到支出反馈，才能做出更清醒的预算决策。这直接支持我们提升财务意识、减少超支的目标。

**What：** 添加一个实时支出跟踪器，在用户记录支出时即时更新。它会展示用户本周支出与预算的对比。设计稿见 [Figma link]。这里记录的是讨论结果摘要，详细规格将在团队开发讨论中继续补充。

**Acceptance Criteria：**
- 记录支出后 2 秒内更新总额
- 预算进度以进度条形式可视化展示
- 用户能一眼看到剩余预算
- 系统能正确处理多个支出分类

## 输出交付物

- 该功能对应的一整组 backlog items
- 每个 item 都包含 Why、What 与 Acceptance Criteria 三部分
- 条目彼此独立，可按任意顺序交付
- 条目规模适合在一个 sprint 内估算与完成
- 战略背景清晰，便于团队做决策
- 包含设计引用，便于实现

---

### 延伸阅读

- [How to Write User Stories: The Ultimate Guide](https://www.productcompass.pm/p/how-to-write-user-stories)
