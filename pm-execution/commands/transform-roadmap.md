description: 把 feature-based roadmap 转成 outcome-focused roadmap，更清楚地传达战略意图
argument-hint: "<以文本、文件或功能列表形式提供的 roadmap>"
---

# /transform-roadmap -- Outcome-Focused Roadmap

把待开发功能列表或以输出为中心的 roadmap，改写为以 outcome 为中心的 roadmap，让文档表达“为什么做”，而不是只写“做什么”。

## 调用方式

```
/transform-roadmap [paste your feature list or roadmap]
/transform-roadmap [upload a roadmap doc, spreadsheet, or screenshot]
```

## 工作流

### 步骤 1：接收当前 Roadmap

接受任意格式：
- Feature list 或 backlog items
- Roadmap 文档（Now/Next/Later、季度版、时间线版）
- 表格或 Gantt chart 导出内容
- roadmap 工具的截图

解析每个条目，提取：feature name、description、target date / timeframe 与相关上下文。

### 步骤 2：理解战略背景

询问：
- 当前周期的 product goals 或 OKRs 是什么？
- 这份 roadmap 的受众是谁？（execs、engineering、customers、board）
- 你偏好什么格式？（Now/Next/Later、quarterly、timeline）

### 步骤 3：转换每个条目

调用 **outcome-roadmap** skill：

对 roadmap 上的每个 feature / output：
1. 找出它要实现的 **user 或 business outcome**
2. 改写为 outcome statement：`[Verb] [metric/experience] for [user segment]`
3. 把服务同一 outcome 的多个 feature 归到一个 initiative 下
4. 为每个 outcome 补上 success metrics

**Before → After 示例：**
- "Build SSO integration" → "Reduce enterprise onboarding friction — target: 50% faster time-to-first-value for enterprise accounts"
- "Redesign dashboard" → "Help power users find insights faster — target: 30% reduction in time-to-insight"
- "Add CSV export" → "Enable teams to share data outside the product — target: 25% increase in report sharing"

### 步骤 4：生成转换后的 Roadmap

```
## Outcome-Focused Roadmap: [Product] — [Period]

**Strategic themes**: [2-3 high-level themes]

### Now (Current Quarter)
**Theme: [Strategic Theme]**
| Outcome | Success Metric | Key Initiatives | Status |
|---------|---------------|----------------|--------|

### Next (Next Quarter)
**Theme: [Strategic Theme]**
| Outcome | Success Metric | Key Initiatives | Confidence |
|---------|---------------|----------------|------------|

### Later (Future)
**Theme: [Strategic Theme]**
| Outcome | Success Metric | Key Initiatives | Dependencies |
|---------|---------------|----------------|-------------|

### Transformation Notes
| Original Feature | Transformed Outcome | Why This Framing |
|-----------------|--------------------|-----------------|

### What Changed
[总结 roadmap 叙事方式发生了什么变化]
```

保存为 markdown 文件。

### Step 5：复查与后续动作

提供后续动作：
- “要不要我为每个 outcome **补上 OKR alignment**？”
- “要不要我把这份 roadmap **整理成 stakeholder presentation**？”
- “要不要我为 `Now` 阶段的条目**识别风险**？”

## 说明

- Outcomes 必须可衡量，并且有清晰的“done”状态
- 多个 features 对应同一个 outcome 是正常现象，不是问题
- 如果某个 output 无法清楚对应一个 outcome，就应标出来，让用户决定是否保留或降级优先级
- 受众很重要：给 execs 的 roadmap 应更偏 outcome-only，给 engineering 的版本可以在 outcome 下补 deliverables
- `Later` 阶段应更模糊一些，只承诺 outcome，不必承诺具体 solution
