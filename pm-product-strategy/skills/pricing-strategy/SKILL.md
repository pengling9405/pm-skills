name: pricing-strategy
description: "分析并设计定价策略，包括 pricing model、竞品定价分析、支付意愿估算与价格弹性。适用于制定价格、评估定价模型、准备调价，或比较 freemium 与 paid 方案。"
---

## Pricing Strategy

围绕价值交付、竞争定位与支付意愿设计定价策略。

### 背景

你需要为 **$ARGUMENTS** 制定一套 pricing strategy。

如果用户提供了文件（如竞品价格、问卷数据、财务模型或使用数据），先阅读这些材料。必要时也可以通过 web search 补充竞品价格信息。

### 操作要求

1. **先理解产品交付的价值**：
   - 核心 value proposition 是什么？
   - 客户当前的替代方案是什么？成本是多少？
   - 产品能带来哪些可量化结果？（节省时间、增加收入、降低成本）
   - 基于这些价值，客户的支付意愿大概在哪里？

2. **评估 pricing model**，并推荐最匹配的一种：

   | Model | Best For | Example |
   |---|---|---|
   | **Flat-rate** | Simple products, predictable costs | Basecamp ($99/mo flat) |
   | **Per-seat** | Collaboration tools, team products | Slack, Figma |
   | **Usage-based** | Infrastructure, API products | AWS, Twilio |
   | **Tiered** | Products with distinct user segments | Most SaaS (Free/Pro/Enterprise) |
   | **Freemium** | Products with viral/network effects | Spotify, Notion |
   | **Freemium + usage** | Platform products | Vercel, OpenAI API |
   | **Value-based** | High-impact enterprise tools | Salesforce, Palantir |

3. **分析竞品定价**：
   - 梳理竞品的 pricing tiers 与包含内容
   - 判断你的产品更接近 premium、mid-market 还是 budget
   - 找出价格空档与机会点
   - 记录行业内常见定价惯例

4. **设计定价结构**：
   - **Tiers**：定义 2 到 4 个差异明确的层级
   - **Feature gating**：哪些功能放在哪一层？优先按 value metric，而不是拍脑袋设限制
   - **Value metric**：你到底按什么收费？（users、events、storage、API calls）
   - **Anchor pricing**：让“主推层”看起来像最合理的默认选择
   - **Annual discount**：年付通常比月付低 15% 到 20%

5. **估算价格敏感度**：
   - 如果有调研数据，可以使用 Van Westendorp Price Sensitivity Meter：
     - Too cheap → 用户会怀疑质量
     - Cheap → 用户感到划算
     - Expensive → 用户开始犹豫
     - Too expensive → 用户不买
   - 如果没有数据，就结合竞品价格与产品价值做估算

6. **规划定价实验**：
   - 对 pricing page 做 A/B test（价格点、tier 命名、功能打包）
   - 通过 founder-led sales conversation 测试支付意愿
   - 用不同 price anchor 做 landing page 测试
   - 按价格点做 cohort analysis，观察转化差异

7. **输出定价建议**：
   ```
   Recommended Model: [Model type]
   Value Metric: [What you charge on]

   | Tier | Price | Target Segment | Key Features | Positioning |
   |---|---|---|---|---|

   关键假设：
   - [Assumption] → [How to test]

   风险：
   - [Risk] → [Mitigation]
   ```

逐步思考并保存为 markdown。在正式上线前，把所有需要验证的假设明确标出来。

---

### 延伸阅读

- [Product Pricing Strategies 101](https://www.productcompass.pm/p/product-pricing-strategies-101)
- [The AI Product Pricing Masterclass: OpenAI Product Lead on Why SaaS Pricing Fails in AI (and How to Fix It)](https://www.productcompass.pm/p/ai-product-pricing) (video course)
