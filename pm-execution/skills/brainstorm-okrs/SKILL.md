---
name: brainstorm-okrs
description: "围绕公司目标头脑风暴 team-level OKRs，输出定性的 objectives 与可量化的 key results。适用于制定季度 OKRs、让团队目标对齐公司战略、起草 objectives，或学习如何写出高质量 OKRs。"
---

# 头脑风暴团队 OKRs

## 目的

你是一名资深产品负责人，需要为负责 $ARGUMENTS 的团队定义 Objectives and Key Results（OKRs）。这些 OKRs 必须有挑战、可测量，并且与公司战略清晰对齐。

## 背景

OKRs 通过把鼓舞人的定性 objectives 与可衡量的定量 key results 结合起来，连接 vision 与 execution。这个 skill 会生成三组备选 OKRs，用来促进战略讨论。

## 领域背景

**OKR**（Christina Wodtke，《Radical Focus》）：
- **Objective**（Why、What、When）：定性、有激励性、有时间边界的目标。通常按季度设置，应尽量符合 SMART 原则。
- **Key Results**（How much）：定量指标（通常 3 个左右）及其目标值。

**OKRs、KPIs 与 NSM 彼此相关，不是互斥选项。** 不要在没有解释关系的情况下简单列表对比：
- **Key Results** 一定是定量指标，其中有些本身可能也是 KPIs。
- **KPIs** = 一小组长期跟踪的关键量化指标。它们可以直接作为 Key Results，也可以作为 health metrics（用于平衡 OKRs），或者你也可以围绕 KPI 的输入指标再设置 Key Results。
- **North Star Metric** = 一个面向客户、能够领先反映业务成功的核心 KPI。Key Results 也可以用来表达 NSM 期望发生的变化。

OKRs 的本质是三件事：(1) 设定一个清晰且鼓舞人的目标；(2) 让团队自己决定最佳路径；(3) 持续监控进展、从失败中学习并改进。

## 操作要求

1. **Gather Context**：如果用户提供了公司目标、战略文档或团队背景文件，先完整阅读。如果用户提到公司战略，也可以结合 web search 了解行业基准和类似产品的最佳实践。

2. **理解框架**：OKRs 有两个部分：
   - **Objective**：描述方向意图的定性、激励型目标
   - **Key Results**：通常为 3 个量化指标，用来衡量目标进展

3. **逐步思考**：
   - 公司的战略重点是什么？
   - 团队最能影响的 3 到 5 个关键领域是什么？
   - 团队的努力如何承接到公司目标？
   - 对客户和业务来说，成功分别意味着什么？

4. **生成三组 OKRs**：为 $ARGUMENTS 团队生成三组不同、且有挑战性的 OKR 选项。每组都应：
   - 从一个清晰且鼓舞人的 Objective 开始
   - 精确定义 3 个 Key Results，要求：
     - 可测量（能用数字跟踪）
     - 可达成但有挑战（大致 60%-70% 的把握）
     - 与公司战略一致

5. **示例格式**：
   ```
   Objective: Delight new users with an effortless onboarding experience
   Key Results:
   - CSAT score >= 75% on onboarding survey
   - 66%+ of onboardings completed within two days
   - Average time-to-value (TTV) <= 20 minutes
   ```

6. **组织输出**：以同等权重展示三组 OKRs。每组都包含：
   - Objective（1 到 2 句话）
   - 三个 Key Results（包含具体指标和目标值）
   - 简短 rationale（说明它为什么对公司和团队重要）

7. **保存输出**：如果内容较完整，就保存为 markdown 文档：`OKRs-[team-name]-[quarter].md`

## 说明

- 确保每个 Key Result 都能独立测量
- 避免 output 型指标（例如 “launch 5 features”），要聚焦 outcomes
- 三组 OKRs 都应有可信度，不要故意让其中一组明显更差
- 对任何数据可得性假设都应主动标出来

---

### 延伸阅读

- [Objectives and Key Results (OKRs) 101](https://www.productcompass.pm/p/okrs-101-advanced-techniques)
- [OKR vs KPI: What's the Difference?](https://www.productcompass.pm/p/okr-vs-kpi-whats-the-difference)
- [Business Outcomes vs Product Outcomes vs Customer Outcomes](https://www.productcompass.pm/p/business-outcomes-vs-product-outcomes)
- [From Strategy to Objectives Masterclass](https://www.productcompass.pm/p/product-vision-strategy-objectives-course) (video course)
