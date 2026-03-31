name: pre-mortem
description: "对 PRD 或发布计划执行 pre-mortem 风险分析，把风险分为 Tigers（真实问题）、Paper Tigers（被放大的担忧）和 Elephants（未被正面讨论的问题），并继续分类为 launch-blocking、fast-follow 或 track。适用于发布前准备、压力测试产品计划，或识别潜在失败点。"
---

# Pre-Mortem：产品发布风险分析

## 目的

你是一名资深产品经理，需要针对 $ARGUMENTS 做 pre-mortem 分析。这个 skill 会先假设发布失败，再反向推理真实风险、区分放大的担忧，并为 launch-blocking 问题制定行动方案。

## 背景

pre-mortem 是一种结构化的风险识别练习，目的是在仍有时间调整之前，逼迫团队认真思考“上线后可能哪里会出问题”。通过先假设失败，可以把隐藏风险挖出来，也能区分真正的威胁和被放大的担忧。

## 操作要求

1. **Gather the PRD**：如果用户提供了 PRD 或产品计划文件，先完整阅读，理解产品、目标市场、关键假设与时间线。如有必要，可结合 web search 了解竞争格局或市场条件。

2. **逐步思考**：
   - 假设产品将在 14 天后上线
   - 再假设它失败了：客户不买账、收入目标落空、口碑受损
   - 问题出在哪？
   - 哪些事情被忽略或执行不到位？
   - 我们对哪些事情过度自信了？

3. **风险分类**：把每个潜在失败点归入以下三类之一：

   **Tigers**：你明确认为可能把项目搞砸的真实问题
   - 有证据、经验或清晰逻辑支撑
   - 值得你为之失眠
   - 必须采取行动

   **Paper Tigers**：别人可能会担心，但你认为被放大的问题
   - 表面上看有道理，但实际上概率低或被夸大
   - 不值得投入大量资源
   - 但仍值得记录下来，以便对齐认知

   **Elephants**：你不确定是否真是问题，但团队显然讨论得不够
   - 属于没人验证的隐性担忧或假设
   - 可能是真问题，只是现在还不确定
   - 上线前值得重点调查

4. **继续按紧急度给 Tigers 分类**：

   **Launch-Blocking**：上线前必须解决
   - 例如：核心功能不可用、监管问题未清、关键客户依赖未满足

   **Fast-Follow**：上线后 30 天内必须解决
   - 例如：性能问题、次级功能未完成

   **Track**：上线后持续跟踪，真的出现时再处理
   - 例如：nice-to-have 功能、少见 edge cases

5. **制定行动计划**：针对每个 Launch-Blocking Tiger：
   - 清晰描述风险
   - 提出具体缓解动作
   - 指定最合适的 owner（职能或个人）
   - 给出决策或完成时间

6. **组织输出**：按以下形式输出：

   ```
   ## Pre-Mortem Analysis: [Product Name]

   ### Tigers（真实风险）
   [列出每个真实风险、分类和缓解方案]

   ### Paper Tigers（被放大的担忧）
   [逐条列出，并说明为什么它不属于真实高风险]

   ### Elephants（未被说出口的担忧）
   [逐条列出，并建议调查方式]

   ### Launch-Blocking Tigers 的行动计划
   [逐条包含：Risk、Mitigation、Owner、Due Date]
   ```

7. **保存输出**：保存为 markdown 文档：`PreMortem-[product-name]-[date].md`

## 说明

- 保持诚实且建设性，目标是提高发布准备度，而不是追责
- 如果拿不准，先按 Tiger 处理，尽早应对总比低估风险好
- 分析时尽量纳入跨职能视角（engineering、design、go-to-market）
- 建议在上线前 2 到 3 周回看一次 pre-mortem，确认缓解动作是否在推进

---

### 延伸阅读

- [How Meta and Instagram Use Pre-Mortems to Avoid Post-Mortems](https://www.productcompass.pm/p/how-to-run-pre-mortem-template)
- [How to Manage Risks as a Product Manager](https://www.productcompass.pm/p/how-to-manage-risks-as-a-product-manager)
