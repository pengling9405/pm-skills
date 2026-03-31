description: 综合宏观环境分析，一次完成 SWOT、PESTLE、Porter's Five Forces 与 Ansoff Matrix
argument-hint: "<产品、市场或行业>"
---

# /market-scan -- 宏观环境分析

运行多个战略分析框架，理解你的竞争环境与宏观环境。该命令会把 SWOT、PESTLE、Porter's Five Forces 和 Ansoff Matrix 整合成一份统一的战略总览。

## 调用方式

```
/market-scan EdTech market for corporate learning
/market-scan [upload a market brief or strategy doc]
/market-scan Our fintech product — preparing for board strategy review
```

## 工作流

### Step 1：理解背景

询问：
- 你在分析什么产品、公司或市场？
- 这次分析的目的是什么？（战略规划、进入市场、投前准备、年度复盘）
- 有没有特别想聚焦的框架？还是四个都跑？
- 你当前在这个市场中的位置是什么？

### Step 2：执行分析

按顺序运行四个 skill，后一个基于前一个的发现继续推进：

**SWOT Analysis**（调用 **swot-analysis** skill）：
- 内部：Strengths 与 Weaknesses
- 外部：Opportunities 与 Threats
- 为每个象限给出可执行建议

**PESTLE Analysis**（调用 **pestle-analysis** skill）：
- Political、Economic、Social、Technological、Legal、Environmental 六类因素
- 为每个因素评估影响与时间跨度

**Porter's Five Forces**（调用 **porters-five-forces** skill）：
- competitive rivalry、supplier power、buyer power、threat of substitutes、threat of new entrants
- 对行业吸引力做总体评价

**Ansoff Matrix**（调用 **ansoff-matrix** skill）：
- market penetration、market development、product development、diversification
- 识别经过风险校正后的增长机会

### Step 3：综合归纳

交叉对照四个框架的发现，识别：
- **Converging signals**：多个框架都指向的共同结论
- **Strategic imperatives**：在多项分析中都显得关键的动作
- **Key risks**：需要重点化解的威胁与力量
- **Growth opportunities**：风险收益比最好的增长机会

### Step 4：生成报告

```
## Strategic Market Scan: [Market/Product]

**Date**: [today]
**Purpose**: [strategic planning / market entry / etc.]

### 执行摘要
[用 5 到 7 句话总结战略处境与关键建议]

### SWOT Analysis
| Strengths | Weaknesses |
|-----------|-----------|
| [internal positives] | [internal negatives] |

| Opportunities | Threats |
|-------------|---------|
| [external positives] | [external negatives] |

**SWOT 行动建议**：[如何放大 S+O，如何缓解 W+T]

### PESTLE Analysis
| Factor | Current State | Impact | Trend | Timeframe |
|--------|-------------|--------|-------|-----------|

### Porter's Five Forces
| Force | Intensity | Key Drivers | Implications |
|-------|----------|------------|-------------|

**行业吸引力**：[High / Medium / Low]

### Ansoff Growth Matrix
| Strategy | Opportunity | Risk Level | Investment | Priority |
|----------|-----------|-----------|-----------|----------|
| Market Penetration | [specifics] | Low | [est.] | [H/M/L] |
| Market Development | [specifics] | Medium | [est.] | [H/M/L] |
| Product Development | [specifics] | Medium | [est.] | [H/M/L] |
| Diversification | [specifics] | High | [est.] | [H/M/L] |

### Cross-Framework Synthesis
**Converging signals**：[各框架共同指向什么]
**Strategic imperatives**：[必须优先执行的动作]
**Key risks**：[优先级最高的风险]
**Best opportunities**：[风险调整后最优的增长机会]

### Strategic Recommendations
1. [附带多框架证据支持的建议]
2. ...
3. ...

### Monitoring Plan
| Signal | What to Watch | Source | Check Frequency |
|--------|-------------|--------|----------------|
```

保存为 markdown。

### Step 5：提供后续动作

- “要不要我基于这些发现**制定 product strategy**？”
- “要不要我继续**分析 Porter's 里识别出的具体竞争对手**？”
- “要不要我针对这个 market penetration 机会**设计定价策略**？”

## 说明

- 尽量用 web research 让分析建立在当前市场数据之上，而不是泛泛而谈
- PESTLE 应包含具体法规、市场数据和趋势信号，而不是泛泛观察
- Porter's Five Forces 的价值在于指出*具体*力量来自哪里，而不只是抽象打分
- Ansoff 应该给出具体机会，不要停留在“进入新市场”这种泛化表述
- 综合部分是最有价值的，因为真正的洞察来自框架之间的相互验证
