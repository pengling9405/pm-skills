---
name: prioritize-features
description: "基于影响、投入、风险与战略一致性对功能 backlog 排序，并给出前 5 项推荐。适用于做优先级决策、裁剪范围或比较多个产品想法。"
---

## Prioritize Feature Backlog

对一组功能想法进行评估和排序，识别最值得优先推进的前 5 项。

### Context

你正在帮助用户为 **$ARGUMENTS** 做功能优先级判断。

如果用户提供了表格、backlog、机会评估或 PRD，请直接读取并分析。

### Domain Context

如果需要选择优先级框架，可参考 `prioritization-frameworks` skill。默认建议：

- **Opportunity Score**：适合评估“问题机会”本身
- **ICE**：适合快速对方案做轻量打分
- **RICE**：适合团队规模较大、需要显式考虑 reach 的场景

### Instructions

用户会描述产品目标、预期结果，并提供一组功能想法。请按以下步骤处理：

1. **Understand priorities**
   - 确认产品目标
   - 确认关键成功指标

2. **Evaluate each feature**
   - **Impact**：对目标结果的拉动有多大？
   - **Effort**：开发、设计、协调成本有多高？
   - **Risk**：不确定性多大？哪些假设尚未验证？
   - **Strategic alignment**：是否与当前战略方向一致？

3. **Recommend the top 5 features**
   - 明确排序（1-5）
   - 为每项提供简短理由
   - 说明关键 trade-off
   - 指出哪些项被降级，以及为什么

4. **Present as a prioritization table**
   - 如果有帮助，可用表格呈现

逐步思考，必要时保存为 Markdown。

---

### Further Reading

- [Kano Model: How to Delight Your Customers Without Becoming a Feature Factory](https://www.productcompass.pm/p/kano-model-how-to-delight-your-customers)
- [The Product Management Frameworks Compendium + Templates](https://www.productcompass.pm/p/the-product-frameworks-compendium)
- [Continuous Product Discovery Masterclass (CPDM)](https://www.productcompass.pm/p/cpdm)
