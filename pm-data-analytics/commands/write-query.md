---
description: 根据自然语言问题生成 SQL 查询
argument-hint: "<分析问题>"
---

# /write-query -- SQL Query Generator

把业务问题翻译成可执行 SQL，并解释查询意图与假设。

## 调用方式

```text
/write-query 最近 30 天按注册周看留存
/write-query 找出使用新功能后 7 天内付费的用户
```

## 工作流

### 步骤 1: Understand the Question
### 步骤 2: Determine Schema
### 步骤 3: Generate Query
### 步骤 4: Present and Iterate

```markdown
## SQL Query: [What It Does]
### Query
### What This Returns
### Assumptions
### Notes
```

## Notes

- 不清楚 schema 时先问，不要硬猜
