description: 为测试生成真实感较强的 dummy datasets，可输出为 CSV、JSON、SQL inserts 或 Python 脚本
argument-hint: "<你需要的数据描述>"
---

# /generate-data -- 测试数据生成器

为开发、测试、演示或原型验证生成具有真实感的 dummy datasets，并以你需要的格式直接输出可用文件。

## 调用方式

```
/generate-data 1000 users with names, emails, plan tier, signup date, and activity score
/generate-data E-commerce orders dataset: products, customers, timestamps, amounts
/generate-data Sample data matching this schema: [paste table definition]
```

## 工作流

### 步骤 1：定义数据集

需要明确：
- 有哪些实体？（users、orders、events、products 等）
- 有哪些字段？（含数据类型与约束）
- 需要多少行？
- 表之间有没有关系？
- 是否需要特定分布？（例如“80% 用户应处于 free plan”）
- 是否有现实约束？（如 email 必须唯一，日期必须按时间顺序）

### 步骤 2：生成数据

调用 **dummy-dataset** skill：

- 生成一个用于创建数据集的 Python 脚本
- 使用真实感较强的数据，而不是随机字符串：真实姓名格式、有效 email、看起来合理的日期
- 遵守约束：唯一 ID、外键关系、时间顺序
- 应用指定的数据分布
- 执行脚本并产出结果文件

### 步骤 3：交付结果

按用户要求输出（如果未指定就主动询问）：
- **CSV**：最通用，兼容性最好
- **JSON**：适合 API 测试或前端开发
- **SQL INSERT**：适合直接填充测试数据库
- **Python script**：适合可重复生成，用户也能自行调整重跑

```
## Generated Dataset: [描述]

**Rows**: [count]
**Columns**: [list]
**Format**: [CSV / JSON / SQL / Python]

### Schema
| Column | Type | Constraints | Distribution |
|--------|------|-----------|-------------|

### 样例（前 5 行）
[数据预览]

### 文件
- [数据文件]
- [生成脚本，如适用]
```

把数据文件与生成脚本保存到用户工作区。

### 步骤 4：提供后续动作

- “要不要我**增加字段**或**扩大数据量**？”
- “要不要我继续**生成关联表**（比如这些用户对应的 orders）？”
- “要不要我基于这批数据**编写 test scenarios**？”
- “要不要我**写 SQL queries** 来分析这份数据集？”

## 说明

- 始终提供生成脚本，方便用户换参数后重新生成
- 演示数据最好能讲故事，例如季节性波动、留存问题、power user 分层
- 尊重真实基数关系，例如 1000 个用户通常不会对应 1000 个唯一城市
- 金融类数据要采用合理的价格分布，不要用均匀随机
- 绝不要包含真实个人数据，所有姓名、邮箱和标识都必须是虚构的
