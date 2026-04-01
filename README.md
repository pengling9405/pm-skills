# PM 技能市场中文版

> 说明：这是 `pm-skills` 的中文整理版入口文档，方便中文读者快速理解这套 PM 技能市场的结构与用法。英文原文保持不变。

## 这是什么

`pm-skills` 是一套面向产品经理与创始人的 AI 工作系统，围绕产品决策而不是单纯文档生成来设计。

它的核心不是“让 AI 多写几页字”，而是把成熟的 PM 框架编码成技能与工作流，让你在以下环节更有结构：

- 需求发现
- 产品战略
- 市场研究
- GTM
- 执行落地
- 数据分析
- 营销 / 增长
- toolkit 类通用能力

当前仓库包含：

- 65 个技能
- 36 条链式工作流
- 8 个插件目录

## 为什么有价值

通用 AI 往往只能给你一段看似合理的文字。  
`pm-skills` 的价值在于：它把一整套 PM 方法论以 skill 的形式固定下来，让你在日常工作中直接调用。

典型用途包括：

- 把模糊点子跑成结构化需求发现
- 把功能想法变成 PRD、用户故事、测试场景
- 用 strategy / canvas / pricing 框架看清方向
- 做市场研究、竞争分析、用户画像、细分市场分析
- 做 GTM、growth、North Star、content / positioning 相关工作

## 从哪里开始

仓库建议的几个入口命令是：

- 新想法：`/discover`
- 想理清战略：`/strategy`
- 写 PRD：`/write-prd`
- 规划发布：`/plan-launch`
- 定义指标：`/north-star`

## 它是怎么组织的

### 技能

技能是基础能力单元。每个技能负责一个 PM 任务、分析框架或引导式工作流。

### 命令

命令是由用户显式触发的链式流程，会把多个技能串起来，形成端到端工作流。

### 插件

仓库把不同 PM 领域拆成 8 个插件：

- `pm-product-discovery`
- `pm-product-strategy`
- `pm-market-research`
- `pm-go-to-market`
- `pm-marketing-growth`
- `pm-data-analytics`
- `pm-execution`
- `pm-toolkit`

每个插件既有技能，也有命令。

## 安装方式

### Claude Cowork

1. 打开 `Customize`
2. 进入 `Browse plugins`
3. 选择 `Personal` → `+`
4. 选择从 GitHub 添加 marketplace
5. 输入：`phuryn/pm-skills`

### Claude Code (CLI)

```bash
# 添加 marketplace
claude plugin marketplace add phuryn/pm-skills

# 安装各插件
claude plugin install pm-toolkit@pm-skills
claude plugin install pm-product-strategy@pm-skills
claude plugin install pm-product-discovery@pm-skills
claude plugin install pm-market-research@pm-skills
claude plugin install pm-data-analytics@pm-skills
claude plugin install pm-marketing-growth@pm-skills
claude plugin install pm-go-to-market@pm-skills
claude plugin install pm-execution@pm-skills
```

### Codex

这个仓库已经提供了 Codex 所需的插件元数据与安装脚本。

推荐先用非破坏性安装脚本：

```bash
./scripts/install_codex.sh
./scripts/install_codex.sh --scope global
./scripts/install_codex.sh --scope both
./scripts/install_codex.sh --dry-run
```

也可以手动把 skills 拷到 `.codex/skills/`，把 commands 拷到 `.codex/prompts/`。

### 其他 AI 助手

对于只支持 skills 的工具，也可以直接复用 `skills/*/SKILL.md`：

- Gemini CLI
- OpenCode
- Cursor
- Kiro

## 插件一览

### 1. `pm-product-discovery`

负责点子、实验、假设、访谈、需求优先级、指标等 discovery 工作。

### 2. `pm-product-strategy`

负责愿景、价值主张、商业模式、市场扫描、定价与增长战略。

### 3. `pm-market-research`

负责用户画像、细分市场、情绪分析、竞品研究、客户旅程地图等。

### 4. `pm-go-to-market`

负责 ICP、beachhead segment、GTM motions、growth loops、launch plan。

### 5. `pm-marketing-growth`

负责 positioning、营销点子、North Star、命名、价值主张表达。

### 6. `pm-data-analytics`

负责 SQL、A/B test 分析、cohort analysis 等数据分析工作。

### 7. `pm-execution`

负责 PRD、OKR、roadmap、retro、stories、stakeholder map、test scenarios 等执行层能力。

### 8. `pm-toolkit`

负责 NDA、隐私政策、简历审阅、语法检查等辅助工具。

## 推荐用法

如果你是 founder 或 solo builder，推荐优先从这几块开始：

- `pm-product-discovery`
- `pm-product-strategy`
- `pm-go-to-market`
- `pm-marketing-growth`
- `pm-execution`

如果你是偏数据驱动 PM，再补：

- `pm-data-analytics`
- `pm-market-research`

## 中文整理范围

本分支已新增：

- 根 README 中文版
- 各插件 README 中文版

后续如果你需要，我还可以继续把高价值 skill 进一步做中文化。

## 相关文件

- 英文原文：[README.md](/Users/zhanyu/projects/pm-skills/README.md)
- 发现类插件：[pm-product-discovery/README.md](/Users/zhanyu/projects/pm-skills/pm-product-discovery/README.md)
- 执行类插件：[pm-execution/README.md](/Users/zhanyu/projects/pm-skills/pm-execution/README.md)
