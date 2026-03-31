name: outcome-roadmap
description: "把 output-focused roadmap 转成 outcome-focused roadmap，更清楚地传达战略意图。会把 initiatives 改写成体现用户与业务影响的 outcome statements。适用于把 roadmap 从功能导向转成结果导向，或把 feature list 改写成 outcomes。"
---

# 将 Roadmap 转换为 Outcome-Focused 格式

## 目的

你是一名有经验的产品经理，需要帮助 $ARGUMENTS 从 output-focused roadmap（强调功能）转向 outcome-focused roadmap（强调客户与业务影响）。这个 skill 会把 initiatives 改写成更有指导意义、也更可衡量的 outcome statements。

## 背景

以输出为中心的 roadmap 容易制造“精确幻觉”，让团队围绕功能而不是结果对齐。Outcome-focused roadmap 则会更清楚地说明在解决什么客户问题、预期带来什么业务价值，从而支持更灵活的执行和更清晰的战略思考。

## 操作要求

1. **Gather Information**：如果用户提供了当前 roadmap，先仔细阅读。如果用户提到战略文档或公司目标，也可以结合 web search 来理解 roadmap 应该如何对齐更高层目标。

2. **逐步思考**：
   - 对每个 initiative 都问一句：“我们到底想实现什么 outcome？”
   - 我们在解决什么客户问题？
   - 哪个业务指标会因此改善？
   - 这会如何影响客户体验或业务表现？
   - 有没有其他更好的方式也能达到同样 outcome？

3. **转换流程**：对 roadmap 上的每个 initiative：
   - **识别 Output**：计划做的 feature 或项目是什么？
   - **挖出 Outcome**：为什么做它？客户或业务会发生什么变化？
   - **改写为 Outcome Statement**：使用以下格式：
     ```
     Enable [customer segment] to [desired customer outcome] so that [business impact]
     ```

4. **转换示例**：
   - **Output（旧）**：Q2：Build advanced search filters，implement AI recommendations，redesign dashboard
   - **Outcome（新）**：
     - Q2：Enable customers to find products 50% faster through intuitive discovery
     - Q2：Increase average order value by 20% through personalized AI recommendations
     - Q2：Help operators monitor all systems with 80% reduction in dashboard load time

5. **组织输出**：输出转换后的 roadmap，包含：
   - 按季度/阶段排列的原始 initiatives
   - 每个 initiative 对应的 outcome statements
   - 用于衡量成功的关键指标
   - 依赖关系或顺序说明

6. **补充战略背景**：对整体 roadmap，再增加：
   - outcomes 如何与公司战略对齐
   - 关于客户需求的关键假设
   - 更灵活的发布时间窗口（按季度，而不是具体日期）

7. **保存输出**：如果内容较完整，保存为 markdown 文档：`Outcome-Roadmap-[year].md`

## 说明

- outcome 必须是可验证、可衡量的
- 多个 outputs 指向同一个 outcome 很常见，关注点应放在 outcome，而不是 feature list
- outcome roadmaps 对变化更有韧性，因此要接受一定的灵活性
- 如果不确定某个 feature 对应什么 outcome，就持续追问 “So what?”，直到找到真实的客户或业务价值

---

### 延伸阅读

- [Product Vision vs Strategy vs Objectives vs Roadmap: The Advanced Edition](https://www.productcompass.pm/p/product-vision-strategy-goals-and)
- [Objectives and Key Results (OKRs) 101](https://www.productcompass.pm/p/okrs-101-advanced-techniques)
- [Business Outcomes vs Product Outcomes vs Customer Outcomes](https://www.productcompass.pm/p/business-outcomes-vs-product-outcomes)
