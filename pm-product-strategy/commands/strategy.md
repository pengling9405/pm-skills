description: 使用 9 部分 Strategy Canvas 创建完整 product strategy，从 vision 一直到 defensibility
argument-hint: "<产品或公司>"
---

# /策略 -- Product 策略 Canvas

使用 9 部分 Product Strategy Canvas 生成完整的 product strategy 文档，覆盖 vision、segments、value propositions、trade-offs、metrics、growth、capabilities 与 defensibility。

## 调用方式

```
/strategy AI-powered design tool for non-designers
/strategy [upload existing strategy doc, pitch deck, or business plan]
/strategy                    # asks about your product
```

## 工作流

### 步骤 1：理解产品

可接受的上下文来源：
- 产品描述（口头或文字）
- 上传文档（strategy deck、pitch deck、PRD、business plan）
- 已有的 strategy 文档，用于优化或挑战

关键问题：
- 这个产品做什么？为谁服务？
- 现在处于什么阶段？（idea、MVP、growth、mature）
- 商业模式是什么？
- 为什么现在需要 strategy 文档？（新产品、转向、年度规划、融资）

### 步骤 2：构建 策略 Canvas

调用 **product-strategy** 与 **product-vision** skill：

完整走过 Strategy Canvas 的 9 个部分：

1. **Vision**：能激励团队的北极星
2. **Target Segments**：你服务谁，以及明确不服务谁
3. **Pain Points & Value**：你在解决什么问题、创造什么价值
4. **Value Propositions**：针对每个 segment 的 JTBD 价值主张
5. **Strategic Trade-offs**：你主动选择不做什么，这和你要做什么一样重要
6. **Key Metrics**：你如何衡量成功
7. **Growth Engine**：你如何获取、激活并扩张用户
8. **Core Capabilities**：你需要构建并持续维持什么能力
9. **Defensibility**：为什么别人难以复制（network effects、data、brand、switching costs）

每一部分都要输出具体内容，而不是泛泛建议。

### 步骤 3：生成战略文档

```
## Product 策略: [Product Name]

**Date**: [today]
**Stage**: [idea / MVP / growth / mature]
**Author**: [user]

### 1. Vision
[鼓舞人心、可实现、有情感张力，最多 2 到 3 句话]

### 2. Target Segments
| Segment | Size | Pain Level | Current Alternative | Priority |
|---------|------|-----------|-------------------|----------|

**Primary segment**：[是谁，为什么先做]
**明确不服务**：[是谁，为什么不做]

### 3. Pain Points & Value Created
[对每个 segment 写出问题、当前代价与方案创造的价值]

### 4. Value Propositions
**For [Segment A]**: When [situation], they want [motivation], so they can [outcome]
**For [Segment B]**: When [situation], they want [motivation], so they can [outcome]

### 5. Strategic Trade-offs
| We Choose | Over | Because |
|-----------|------|---------|

### 6. Key Metrics
- **North Star**: [metric]
- **Input Metrics**: [3-5 levers]
- **Health Metrics**: [guardrails]

### 7. Growth Engine
[你如何获客、激活与扩张，写具体机制，不要泛化]

### 8. Core Capabilities
| Capability | Build / Buy / Partner | Investment Level | Timeline |
|-----------|---------------------|-----------------|----------|

### 9. Defensibility
[你的 moat 从哪里来，明确写出类型：network effects、data、brand、switching costs、economies of scale]

### Strategic Risks
[最可能让这套战略失效的 3 个风险]

### 下一步
[拿这份战略接下来要做什么：同步、验证、落地]
```

保存为 markdown。

### 步骤 4：提供后续动作

- “要不要我基于它继续做一版 **Lean Canvas** 或 **Business Model Canvas**？”
- “要不要我把它进一步转成与战略一致的 **roadmap**？”
- “要不要我做一次 **macro environment scan** 来压力测试假设？”
- “要不要我根据第 6 部分继续定义 **OKRs**？”

## 说明

- 好的 strategy 往往更体现在你对什么说 NO，而不是对什么说 YES，所以 trade-offs 要写得更狠一些
- Vision 应该有情感和记忆点，而不是公司式套话
- Defensibility 往往最难写，大多数产品暂时没有真正的 moat，承认这一点没有问题
- 如果产品还很早期，有些部分本来就是假设，明确标出来
- 给管理层看的版本应尽量控制在一页内，可以额外提供 condensed version
