description: 围绕公司目标头脑风暴 team-level OKRs，输出定性的 objectives 与可量化的 key results
argument-hint: "<团队、产品领域或公司目标>"
---

# /计划-okrs -- 团队 OKR 规划

生成结构良好的 OKRs，把团队工作与公司战略连接起来。输出 3 组备选 OKR，包含定性 objective 与定量 key results。

## 调用方式

```
/plan-okrs Growth team Q2 — company goal is 50% ARR increase
/plan-okrs Onboarding squad aligned to "improve activation rate"
/plan-okrs [upload company OKRs or strategy doc]
```

## 工作流

### 步骤 1：收集背景信息

询问用户：
- 这些 OKRs 对应哪个团队或产品领域？
- 时间周期是什么？（通常按季度，也可以是年度或自定义周期）
- 它们要承接哪些 company-level objectives？
- 上个周期发生了什么？（做成了什么、没做成什么、学到了什么）
- 有没有既定约束或已知优先级？

可以接收公司 OKRs 或战略文档作为上传材料。

### 步骤 2：生成 OKRs

调用 **brainstorm-okrs** skill：

- 生成 3 组 OKR（每组为 1 个 Objective + 3 到 5 个 Key Results）
- **Objectives**：定性、能激励人、有挑战但可达成、偏行动导向
- **Key Results**：可量化、可测量、有时间边界，且最好有明确 owner
- 确保这些 OKRs 能清晰承接到公司目标
- 兼顾 leading indicators（过程）与 lagging indicators（结果）

### 步骤 3：校验质量

按最佳实践检查每组 OKR：
- Objective 是否足够鼓舞人？（团队会愿意围绕它行动吗？）
- Key Results 是否可测量？（能用数据判断，而不是靠主观印象吗？）
- 目标是否足够有挑战但不至于打击士气？（70% 达成通常是合理区间）
- 每个 Objective 是否控制在 3 到 5 个 KR？（太多就失焦）
- KRs 是否容易被“刷指标”？（如 “ship 5 features” 容易激励出低质量交付）

把问题标出来，并给出改进建议。

### 步骤 4：展示并迭代

```
## Team OKRs: [Team Name] — [Period]

**Aligned to**: [Company Objective(s)]

### Objective 1: [Inspiring qualitative statement]
| # | Key Result | Baseline | Target | Owner |
|---|-----------|----------|--------|-------|
| KR1 | [measurable result] | [current] | [target] | [team/person] |
| KR2 | ... | ... | ... | ... |
| KR3 | ... | ... | ... | ... |

### Objective 2: [Inspiring qualitative statement]
[same format]

### Objective 3: [Inspiring qualitative statement]
[same format]

### Alignment Map
Company Objective → Team Objective → Key Results → Expected Impact

### 评分指南
- 0.0-0.3：明显未达成，需要复盘与学习
- 0.4-0.6：有进展，但没有达到目标
- 0.7-0.9：拉伸目标校准得较好，这通常是理想区间
- 1.0：要么执行非常出色，要么目标设得不够有挑战

### Check-in 节奏
- **Weekly**：对每个 KR 做一次快速红黄绿更新
- **Mid-quarter**：做一次深入复盘，如背景变化则调整目标
- **End of quarter**：打分、复盘，并沉淀到下个季度
```

提供后续动作：
- “要不要我**调整挑战强度**，让它更激进或更保守？”
- “要不要我为这些 OKRs **设计一个 metrics dashboard**？”
- “要不要我帮你**起草一版对外介绍这些 OKRs 的 stakeholder update**？”

## 说明

- OKRs 应描述 outcome，而不是 output（例如写 “Increase activation by 20%”，而不是 “Ship onboarding redesign”）
- 如果用户没有公司级 OKRs，就帮助他们从 product strategy 或 business goals 反推团队目标
- 一个团队一个季度最多 3 个 objectives，再多就会失焦
- Key Results 应该是 stretch goals，如果你确信一定能完成，那它通常不够有挑战
- 对任何可能被刷的 KR，要主动标出来，并建议一个 counter-metric
