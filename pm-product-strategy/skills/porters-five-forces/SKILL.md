name: porters-five-forces
description: "执行 Porter's Five Forces analysis，覆盖 competitive rivalry、supplier power、buyer power、threat of substitutes 与 threat of new entrants。适用于分析行业结构、竞争力量和市场吸引力。"
---
# Porter's Five Forces

## 元数据
- **名称**：porters-five-forces
- **描述**：执行 Porter's Five Forces analysis，评估 competitive rivalry、supplier power、buyer power、threat of substitutes 与 threat of new entrants。
- **触发词**：Porter's five forces、competitive forces、industry analysis、market forces、competitive dynamics

## 说明

你是一名竞争战略顾问，需要为 $ARGUMENTS 执行 Porter's Five Forces analysis。

你的任务是评估行业的结构性吸引力，并识别决定盈利能力的竞争力量。

## 输入要求
- 行业或市场定义
- 当前竞争对手与竞争定位
- 供应商与客户格局
- 潜在替代品与新进入者
- 产品或服务的具体情况

## Porter's Five Forces 框架

### 1. Competitive Rivalry（竞争有多激烈？）
衡量公司为了市场份额与客户而直接竞争的程度。

**竞争激烈的常见特征：**
- Many competitors of similar size and strength
- Slow industry growth (zero-sum competition)
- Low product differentiation (commoditized)
- High fixed costs (pressure to maintain volume)
- Exit barriers are high (expensive to leave)
- Price competition is intense
- Rivals have diverse strategies and goals
- Emotional or strategic commitments keep rivals fighting

**竞争较弱的常见特征：**
- Few competitors
- High growth market
- High differentiation (less price-sensitive)
- Low fixed costs
- Low switching costs for competitors
- Industry leader has clear dominance
- Rivals are cooperative or have compatible goals

**战略含义：**
- Assess competitive positioning and differentiation
- Define defensible competitive advantages
- Monitor competitor moves and market consolidation
- Invest in differentiation or cost leadership

---

### 2. Supplier Power（供应商有多大议价能力？）
衡量供应商提价或降低质量并影响你利润的能力。

**供应商议价能力强时常见特征：**
- Few suppliers or concentrated supplier base
- Switching costs are high (changing suppliers is expensive)
- Backward integration threat (suppliers become competitors)
- Suppliers' product is critical or unique
- Suppliers have strong bargaining position
- No substitutes for supplier offerings
- Suppliers sell to many industries (less dependent on you)

**供应商议价能力弱时常见特征：**
- Many suppliers available
- Low switching costs
- Suppliers depend on your business
- Commodity products (interchangeable suppliers)
- Threat of forward integration (you become your own supplier)
- Available substitutes for supplier offerings
- You have significant bargaining leverage

**战略含义：**
- Diversify supplier base to reduce dependency
- Build strong supplier relationships
- Consider vertical integration or alternatives
- Negotiate long-term contracts with favorable terms
- Invest in suppliers' success (partnerships)

---

### 3. Buyer Power（客户有多大议价能力？）
衡量客户压价或要求更高质量，从而影响你利润空间的能力。

**客户议价能力强时常见特征：**
- Few large customers (concentrated demand)
- Buyers switch easily and often (low switching costs)
- Backwards integration threat (customers become competitors)
- Product is undifferentiated (commoditized)
- Buyers have price sensitivity or tight budgets
- Buyers have full information about alternatives
- Customers can bypass you entirely

**客户议价能力弱时常见特征：**
- Many fragmented customers
- High switching costs (lock-in, integration, training)
- High product differentiation (fewer alternatives)
- Customers depend on your product
- You have strong brand or reputation
- Switching to alternatives involves risk
- Customers lack information about alternatives

**战略含义：**
- Build strong customer relationships and loyalty
- Create switching costs through integration
- Invest in brand and differentiation
- Develop customer success programs
- Create network effects or communities
- Segment customers by willingness to pay

---

### 4. Threat of Substitutes（是否存在替代方案？）
衡量客户转向其他能解决同类问题方案的风险。

**替代威胁高时常见特征：**
- Good substitutes exist and are easily accessible
- Substitutes have similar performance or better value
- Switching costs to substitutes are low
- Customers are willing to try alternatives
- Substitutes are improving faster than your product
- Price-to-performance of substitutes is attractive
- Substitute technology is disruptive or emerging

**替代威胁低时常见特征：**
- No good substitutes exist
- Substitutes are more expensive or inferior
- Switching costs are high
- Your product is deeply integrated into customer workflows
- Customer preference and loyalty are strong
- Barrier to substitute entry are high
- Your product solves the problem uniquely

**战略含义：**
- Monitor emerging substitutes and disruptive technologies
- Build customer stickiness through integration and loyalty
- Invest in product innovation and improvement
- Create switching costs through ecosystem or community
- Diversify into adjacent or complementary products
- Defend through brand, service, or convenience

---

### 5. Threat of New Entrants（新竞争者是否容易进入？）
衡量新进入者切入市场并抢占份额的风险。

**新进入威胁高时常见特征：**
- Low barriers to entry (capital, expertise, licensing)
- Attractive industry margins and growth
- Incumbents are vulnerable or complacent
- Distribution or channel access is available
- Economies of scale are limited
- Network effects are weak or absent
- Regulation is permissive
- New technologies enable disruption

**新进入威胁低时常见特征：**
- High barriers to entry (capital, IP, expertise, relationships)
- Entrenched incumbents with scale advantages
- Strong network effects or switching costs
- Brand loyalty is high
- Regulatory or licensing barriers exist
- Economies of scale create cost advantage
- Control of critical resources or distribution
- Retaliation by incumbents is credible

**战略含义：**
- Build defensible barriers (IP, brand, network effects)
- Establish cost leadership and scale advantages
- Create switching costs and customer lock-in
- Invest in brand and customer relationships
- Monitor startups and disruptors in your space
- Build alliances and control key resources

---

## 输出流程
1. 对五种力量分别做出 High / Medium / Low 判断
2. 评估行业吸引力（竞争越激烈、力量越强，通常越不吸引人）
3. 对每种力量说明：
   - 当前状态与趋势（在增强还是减弱）
   - 关键角色或动态
   - 对盈利能力的影响
4. 找出对当前战略最关键的 2 到 3 股力量
5. 制定应对策略：
   - 如何削弱强势力量带来的威胁？
   - 如何利用较弱力量形成优势？
6. 识别可能的竞争定位机会
7. 输出与该分析一致的战略动作

## 行业吸引力判断
- **Attractive**：竞争弱、supplier/buyer power 弱、替代品少、进入壁垒高
- **Unattractive**：竞争强、supplier/buyer power 强、替代品多、进入壁垒低
- **Moderate**：力量混合，需要依靠清晰差异化才能赢

## 说明
- 没有任何行业对所有公司都绝对有吸引力，关键在于你的位置
- 同一个行业，对不同公司可能意味着完全不同的吸引力
- 五种力量会变化，应随市场变化重新评估
- 最好与 SWOT 和 PESTLE 结合使用，形成更完整的分析
- 战略动作应该直接回应最强的威胁力量

---

### 延伸阅读

- [The Product Management Frameworks Compendium + Templates](https://www.productcompass.pm/p/the-product-frameworks-compendium)
