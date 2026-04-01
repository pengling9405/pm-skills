---
description: 为客户访谈做准备，或对已有访谈记录做总结
argument-hint: "[prep|summarize] <研究主题或访谈记录>"
---

# /interview -- Customer Interview Prep & 摘要

这个命令支持两种模式：访谈准备和访谈总结。

## 调用方式

```text
/interview prep 新用户 onboarding 体验
/interview summarize [上传访谈记录]
```

## Modes

---

### Prep 模式

#### 工作流

- 明确研究主题与访谈目标
- 识别受访者类型
- 生成结构化访谈提纲
- 补充记录模板和注意事项

```markdown
## Interview Script: [Research Topic]

### Warm-up (3-5 min)
### Core Exploration (15-40 min)
### Specific Topics (5-10 min)
### Wrap-up (3-5 min)
### Note-Taking Template
### Red Flags to Watch For
```

---

### Summarize 模式

#### 工作流

- 读取访谈原始记录
- 提炼关键洞察
- 提炼 JTBD、痛点、现有流程与满意度信号
- 输出后续行动建议

```markdown
## Interview 摘要
### Key Insights
### Jobs to Be Done
### Current 工作流
### Pain Points
### Satisfaction Signals
### Notable Quotes
### Assumptions Validated / Invalidated
### Action Items
### Raw Notes
```

## Notes

- 问题要围绕真实行为，不要引导用户“想象未来”
- 对 quote、pain point、workaround 要单独留痕
- 总结时区分“事实”“解释”“推测”
