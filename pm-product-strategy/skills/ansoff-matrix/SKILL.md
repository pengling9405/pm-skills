name: ansoff-matrix
description: "生成 Ansoff Matrix 分析，覆盖 market penetration、market development、product development 与 diversification 四类增长路径。适用于评估增长选项、规划市场扩张或比较不同增长策略。"
---
# Ansoff Matrix

## 元数据
- **名称**：ansoff-matrix
- **描述**：生成 Ansoff Matrix 分析，梳理 market penetration、market development、product development 与 diversification 四种增长策略。
- **触发词**：Ansoff matrix、growth matrix、market expansion、growth strategy options

## 说明

你是一名增长战略顾问，需要针对 $ARGUMENTS 用 Ansoff Matrix 分析扩张机会。

你的任务是从产品与市场两个维度评估增长选项，并为每个象限提出具体策略。

## 输入要求
- 当前产品及其市场定义
- 目前的 market penetration 与表现
- 客户洞察与市场机会
- 公司能力与约束
- 增长目标与时间线
- 竞争格局

## Ansoff Matrix 框架

### 2x2 矩阵：Products vs. Markets

|  | Current Market | New Market |
|---|---|---|
| **Current Product** | Market Penetration | Market Development |
| **New Product** | Product Development | Diversification |

---

### 1. Market Penetration（当前产品 + 当前市场）
通过提升现有市场中的使用频率或销量来增长收入。

**可选策略：**
- 提高产品使用频率
- 在现有客户群内扩展更多 use cases
- 抢占竞争对手客户
- 降低 churn、提升留存
- 对现有客户做 upsell 与 cross-sell
- 通过降价覆盖价格敏感人群
- 增强营销与品牌认知
- 改善客户体验，促进转介绍

**示例：**
- Netflix adding games to increase engagement
- Starbucks encouraging multiple visits per week
- Adobe expanding Adobe Creative Cloud subscriptions

**风险等级：** Low（市场、产品、能力都相对熟悉）

**典型周期：** 6-12 个月

---

### 2. Market Development（当前产品 + 新市场）
通过把现有产品卖给新的客户群体或新地区来实现增长。

**可选策略：**
- Expand into new geographies or regions
- Target new customer segments or personas
- Sell through new channels or partnerships
- Adapt product for new use cases
- Partner with complementary companies
- Localize product for new markets
- Build brand awareness in new markets

**示例：**
- Facebook expanding internationally
- Uber moving into new cities and countries
- Slack selling to non-tech industries

**风险等级：** Medium（市场是新的，但产品已被验证）

**典型周期：** 12-24 个月

---

### 3. Product Development（新产品 + 当前市场）
通过向现有客户推出新产品或新功能来实现增长。

**可选策略：**
- Add new features to existing product
- Create adjacent product lines
- Bundle products for greater value
- Develop premium/lite versions
- Integrate adjacent capabilities
- Create complementary products
- Upgrade product experience or performance

**示例：**
- Spotify adding podcasts
- Amazon Prime expanding services (video, music, grocery)
- Figma adding prototyping and FigJam

**风险等级：** Medium（客户已知，但产品是新的）

**典型周期：** 12-18 个月

---

### 4. Diversification（新产品 + 新市场）
通过新产品进入全新的市场来获得增长。

**可选策略：**
- Related diversification: leveraging existing competencies
- Unrelated diversification: entering new domains
- Acquire companies in new markets/products
- Strategic partnerships or joint ventures
- Build new business units
- Apply capabilities to adjacent problems

**示例：**
- Amazon expanding from books to cloud services (AWS)
- Apple expanding from computers to phones, wearables, services
- Microsoft moving from software to cloud (Azure) and gaming (Xbox)

**风险等级：** High（新市场、新产品、新能力）

**典型周期：** 24 个月以上，通常需要较大投入

---

## 输出流程
1. 清晰定义当前市场与当前产品
2. 逐个分析四个象限：
   - 每个象限识别 2 到 3 个具体机会
   - 评估市场规模与增长潜力
   - 估算所需资源与投入
   - 判断竞争态势
   - 定义成功指标
3. 按以下维度对机会排序：
   - 与公司 vision 的战略匹配度
   - 收入潜力与增长速度
   - 资源要求与可行性
   - 竞争优势与 defensibility
   - 达到盈利的时间
4. 为优先级最高的 2 到 3 个机会制定 go-to-market 策略
5. 给出分阶段 roadmap 与里程碑
6. 识别风险与缓解方案
7. 定义成功指标与领先指标

## 关键战略问题
- 哪个象限的风险回报比最好？
- 我们现有能力在哪些地方真正构成竞争优势？
- 哪些机会与我们的 vision 和 values 最一致？
- 哪些合作或收购可以加速增长？
- 每个选项会如何影响品牌与定位？

## 说明
- Market penetration 风险最低，diversification 风险最高
- 大多数公司应该先在一个象限做深，再考虑扩展
- 避免同时在四个象限全面铺开，容易分散资源
- 可以考虑顺序型策略：先 penetration，再 market development
- 建议每年，或在市场明显变化时，重新评估一次 Ansoff Matrix

---

### 延伸阅读

- [The Product Management Frameworks Compendium + Templates](https://www.productcompass.pm/p/the-product-frameworks-compendium)
