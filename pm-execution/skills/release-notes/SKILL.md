name: release-notes
description: "根据 tickets、PRDs 或 changelogs 生成面向用户的 release notes，按 new features、improvements、fixes 等类别输出清晰、可读的总结。适用于撰写 release notes、changelog、发布公告，或概括本次上线内容。"
---

## Release Notes 生成器

把技术 tickets、PRDs 或内部 changelogs 转换成更成熟、面向用户的 release notes。

### 背景

你正在为 **$ARGUMENTS** 编写 release notes。

如果用户提供了文件（JIRA 导出、Linear tickets、PRDs、Git logs 或内部 changelogs），先读取这些内容。如果用户提到产品 URL，也可以用 web search 了解产品与目标受众。

### 操作要求

1. **收集原始材料**：读取用户提供的 tickets、changelogs 或描述，提取：
   - 改了什么（feature、improvement 或 fix）
   - 影响谁（哪个用户群）
   - 为什么重要（对用户的收益）

2. **给变更分类**：
   - **New Features**：全新能力
   - **Improvements**：对现有能力的增强
   - **Bug Fixes**：已修复的问题
   - **Breaking Changes**：需要用户采取行动的变更（迁移、API 变化等）
   - **Deprecations**：即将下线的能力

3. **按以下原则写每一条内容**：
   - 先写用户收益，而不是技术实现
   - 使用直白语言，避免术语、内部代号或 ticket 编号
   - 每一条控制在 1 到 3 句话
   - 如果用户提供了图或截图，可以一并引用

   **示例转换**：
   - Technical："Implemented Redis caching layer for dashboard API endpoints"
   - User-facing："Dashboards now load up to 3× faster, so you spend less time waiting and more time analyzing."

   - Technical："Fixed race condition in concurrent checkout flow"
   - User-facing："Fixed an issue where some orders could fail during high-traffic periods."

4. **组织 release notes**：

   ```
   # [Product Name] — [Version / Date]

   ## New Features
   - **[Feature name]**: [1-2 sentence description of what it does and why it matters]

   ## Improvements
   - **[Area]**: [What got better and how it helps]

   ## Bug Fixes
   - Fixed [issue description in user terms]

   ## Breaking Changes (if any)
   - **Action required**: [What users need to do]
   ```

5. **调整语气**，使其符合产品风格：B2B 更专业，consumer 产品更亲切，API 产品更偏开发者导向。

保存为 markdown 文档。如果用户需要 HTML 或其他格式，再继续转换。
