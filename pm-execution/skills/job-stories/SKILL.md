---
name: job-stories
description: "使用 'When [situation], I want to [motivation], so I can [outcome]' 格式创建 job stories，并附带详细验收标准。适用于 JTBD 风格需求拆解与表达用户情境和动机。"
---
# Job Stories

使用 `When... I want to... so I can...` 格式创建 job stories，强调用户所处情境、动机与期望结果。

**Use when：**
- 编写 job stories
- 采用 JTBD 风格拆解需求
- 想突出用户情境而不是角色

**Arguments：**
- `$PRODUCT`：产品或系统名
- `$FEATURE`：要拆分的功能
- `$DESIGN`：设计稿链接
- `$CONTEXT`：用户情境或典型任务场景

## Step-by-Step Process

1. **Identify user situations**
   - 找出会触发需求的真实情境

2. **Define motivations**
   - 说明行为背后的动机

3. **Clarify outcomes**
   - 明确用户想实现的结果

4. **Apply JTBD**
   - 聚焦用户要完成的“任务”，而不是身份标签

5. **Create acceptance criteria**
   - 以“结果是否达成”为标准来写验收项

6. **Use measurable language**
   - 采用可观察、可验证的表达

7. **Link to design**
   - 有原型或设计稿时建立引用

8. **Output job stories**
   - 以结构化格式输出

## Story Template

**Title:** [结果或任务标题]

**Description:** When [situation], I want to [motivation], so I can [outcome].

**Design:** [Link to design files]

**Acceptance Criteria:**
1. [系统识别情境]
2. [支持用户动机]
3. [过程反馈清晰]
4. [结果高效达成]
5. [边界情况处理合理]
6. [相关集成与通知可用]

## Example Job Story

**Title:** Track Weekly Snack Spending

**Description:** When I'm planning my weekly snack budget, I want to quickly see how much I've spent so far, so I can avoid running out of money before the weekend.

**Design:** [Figma link]

**Acceptance Criteria:**
1. 显示每周支出概览
2. 新支出记账后实时更新
3. 展示预算进度条
4. 明显标出剩余预算
5. 提供按类别分解的支出记录
6. 在接近预算上限时提供提醒

## Output Deliverables

- 功能对应的一整组 job stories
- 每条 story 均采用 `When / I want / so I can` 格式
- 6-8 条面向结果的验收标准
- 强调用户情境与动机
- 可关联设计稿与原型

---

### Further Reading

- [Jobs-to-be-Done Masterclass with Tony Ulwick and Sabeen Sattar](https://www.productcompass.pm/p/jobs-to-be-done-masterclass-with)
