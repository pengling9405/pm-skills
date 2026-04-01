description: 使用 6 部分 JTBD 模板设计 value proposition，包括 Who、Why、What before、How、What after、Alternatives
argument-hint: "<产品或功能>"
---

# /value-proposition -- Value Proposition 设计

使用 6 部分 JTBD 模板，为产品或功能设计清晰且有说服力的 value proposition。它可以作为 Strategyzer Value Proposition Canvas 的替代方案，更强调从客户出发并聚焦实际结果。

## 调用方式

```
/value-proposition AI writing tool for non-native English speakers
/value-proposition [upload pitch deck, PRD, or competitive analysis]
/value-proposition                    # asks about your product
```

## 工作流

### 步骤 1：理解产品与市场

可接受的上下文来源：
- 产品描述（口头或文字）
- 上传文档（pitch deck、PRD、竞争分析）
- 现有的 value proposition 文案，用于优化

关键问题：
- 产品做什么？为谁服务？
- 今天用户的替代方案或临时解决办法是什么？
- 你现在掌握了哪些客户洞察或研究？

### 步骤 2：构建 Value Proposition

调用 **value-proposition** skill，生成 6 部分模板：

```
## Value Proposition: [Product]

### For [Segment]:

1. **Who**: [target user profile and characteristics]
2. **Why**: [the job they're trying to do, desired outcomes]
3. **What Before**: [their current painful reality — existing tools, friction, workarounds]
4. **How**: [your solution — specific features and capabilities that deliver value]
5. **What After**: [the improved outcome — what becomes possible]
6. **Alternatives**: [what they'd use without you, and why you're better]

### Value Proposition Statement
[一句话版本：对于 [who] 这类有 [need] 需求的人，[product] 是一个能带来 [benefit] 的 [category]。不同于 [alternative]，我们在 [differentiator] 上更强。]

### 可复用的 Value Proposition 版本
- Marketing: [...]
- Sales: [...]
- Onboarding: [...]
```

如果用户有多个 segment，就为每个 segment 单独输出一版 value proposition。

### 步骤 3：保存并提供后续动作

保存为 markdown。并继续提供：
- “要不要我用 Value Curve 帮你**对比竞争对手**？”
- “要不要我围绕这份 value proposition 继续**搭一版完整 strategy**？”
- “要不要我基于它继续做 **Lean Canvas** 或 **Startup Canvas**？”
- “要不要我把这些 value prop statements 转成**营销信息表达**？”

## 说明

- 这个模板从客户出发（Who/Why），再推进到解决方案，不像 Strategyzer 的画布那样从产品侧开始
- 每个 value proposition 都是 segment-specific，不同人群需要不同版本
- 可以配合 Value Curve（Blue Ocean Strategy）从关键维度上可视化对比你和竞品
- Value Proposition 只是 product strategy 的一个部分，如果你要完整视图，应该继续用 `/strategy`
