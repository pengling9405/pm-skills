description: 对 PRD、发布计划或功能做 pre-mortem 风险分析，在问题真正发生前识别出潜在失败点
argument-hint: "<PRD、计划或功能描述>"
---

# /pre-mortem -- 发布前风险分析

先假设这次发布已经失败，再反向推理失败原因。这个命令会使用 Tigers / Paper Tigers / Elephants 框架识别真实风险，并形成缓解计划。

## 调用方式

```
/pre-mortem [paste or upload a PRD, launch plan, or feature spec]
/pre-mortem We're launching a self-serve billing portal next month
```

## 工作流

### 步骤 1：接收计划内容

接受任意格式：PRD、feature spec、launch plan、project brief 或口头描述。输入越具体，风险分析就越有价值。

### 步骤 2：识别风险

调用 **pre-mortem** skill：

假设产品已经上线并失败，按类别生成风险：
- **Technical**：性能、扩展性、集成失败、数据问题
- **User**：采用障碍、可用性问题、预期落空
- **Business**：收入影响、竞品反应、市场时机
- **Operational**：支持压力、文档缺口、培训需求
- **Dependencies**：第三方服务、跨团队交接、监管依赖

### 步骤 3：分类风险

对每个风险分类：

**Tigers** —— 真实且实质性的风险，足以导致失败
- 继续按严重性划分：Launch-blocking / Fast-follow / Track
- 对 launch-blocking Tigers：必须立刻缓解
- 对 fast-follow Tigers：安排在上线后第一个 sprint 内处理
- 对 track Tigers：持续监控，但不一定要因此延后上线

**Paper Tigers** —— 看起来吓人，但实际被放大的风险
- 说明为什么这个担忧是可控的
- 补充在什么条件变化下，它才会变成真正的 Tiger

**Elephants** —— 团队心里有数，但没人愿意正面讨论的风险
- 主动把政治性、组织性或令人不舒服的问题抬出来
- 用建设性的方式表达，并给出建议的讨论切口

### 步骤 4：生成 Pre-Mortem 报告

```
## Pre-Mortem: [功能/Launch]

**Date**: [today]
**Status**: [Draft / Reviewed]

### 风险概览
- **Tigers**: [count] ([launch-blocking], [fast-follow], [track])
- **Paper Tigers**: [count]
- **Elephants**: [count]

### Launch-Blocking Tigers
| # | Risk | Likelihood | Impact | Mitigation | Owner | Deadline |
|---|------|-----------|--------|-----------|-------|----------|

### Fast-Follow Tigers
| # | Risk | Likelihood | Impact | Planned Response | Owner |
|---|------|-----------|--------|-----------------|-------|

### Track Tigers
[上线后需要持续监控并设置触发条件的风险]

### Paper Tigers
[看起来很大但实际上可控的担忧，并说明原因]

### Elephants in the Room
[团队应该正面讨论但当前被回避的问题]

### Go/No-Go Checklist
- [ ] All launch-blocking Tigers mitigated
- [ ] Fast-follow plan documented and assigned
- [ ] Monitoring in place for Track Tigers
- [ ] Rollback plan defined
- [ ] Support team briefed
```

保存为 markdown。

### Step 5：提供后续动作

- “要不要我把这些缓解措施**补回 PRD**？”
- “要不要我为风险最高的区域**生成 test scenarios**？”
- “要不要我基于这些发现**起草一份 launch checklist**？”

## 说明

- 最好的 pre-mortem 通常发生在计划完成约 80% 时，此时既有足够内容，又仍有调整空间
- 不要停留在显而易见的风险，最危险的往往是没人提的风险
- Elephants 是最高价值的输出，因为它揭示了团队正在回避的话题
- 每个 Tiger 的缓解动作都应具体且可分配，不能只是“注意点”
- 如果 pre-mortem 暴露出太多 launch-blocking Tigers，就应该建议延期或分阶段上线
