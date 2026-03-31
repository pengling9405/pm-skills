description: 把 stakeholders 映射到 Power × Interest 网格中，并生成有针对性的沟通计划
argument-hint: "<项目、计划或发布>"
---

# /stakeholder-map -- Stakeholder Mapping 与沟通计划

识别一个项目中的全部 stakeholders，按影响力与关注度完成映射，并生成沟通计划，确保合适的人在合适时间收到合适信息。

## 调用方式

```
/stakeholder-map New analytics platform launch
/stakeholder-map Pricing model change affecting all customers
/stakeholder-map [upload a project brief or org chart]
```

## 工作流

### Step 1：理解事项背景

询问：
- 这是哪个项目或计划？
- 当前处于哪个阶段？（planning、building、launching、post-launch）
- 你已经知道哪些明显的 stakeholders？
- 有没有需要注意的政治性或敏感组织关系？

### Step 2：识别 Stakeholders

补充用户可能没想到的 stakeholders：
- **Internal**：Engineering、Design、QA、Data、Legal、Finance、Marketing、Sales、Support、Leadership
- **External**：Customers、partners、vendors、regulators、board members
- **常被忽略**：相邻团队、on-call engineers、customer success、documentation team

### Step 3：映射到 Power × Interest Grid

调用 **stakeholder-map** skill：

把每个 stakeholder 放进一个象限：

```
                    HIGH INTEREST
                         │
    KEEP SATISFIED       │      MANAGE CLOSELY
    (High Power,         │      (High Power,
     Low Interest)       │       High Interest)
                         │
   ──────────────────────┼──────────────────────
                         │
    MONITOR              │      KEEP INFORMED
    (Low Power,          │      (Low Power,
     Low Interest)       │       High Interest)
                         │
                    LOW INTEREST
```

### Step 4：生成沟通计划

```
## Stakeholder Map: [Initiative]

### Stakeholder Grid
| Stakeholder | Role | Power | Interest | Quadrant | Stance |
|------------|------|-------|----------|----------|--------|

### Communication Plan

#### Manage Closely (High Power, High Interest)
| Stakeholder | Channel | Frequency | Content | Owner |
|------------|---------|-----------|---------|-------|

#### Keep Satisfied (High Power, Low Interest)
| Stakeholder | Channel | Frequency | Content | Owner |
|------------|---------|-----------|---------|-------|

#### Keep Informed (Low Power, High Interest)
| Stakeholder | Channel | Frequency | Content | Owner |
|------------|---------|-----------|---------|-------|

#### Monitor (Low Power, Low Interest)
[Minimal communication — include in broad updates only]

### Potential Conflicts
[哪些 stakeholder 的诉求可能冲突，并给出缓解方式]

### Escalation Path
[当决策被卡住时，应该向谁升级]

### RACI Matrix
| Decision Area | Responsible | Accountable | Consulted | Informed |
|--------------|-------------|-------------|-----------|----------|
```

保存为 markdown。

### Step 5：提供后续动作

- “要不要我为 `Manage Closely` 这组人**起草第一版 stakeholder update**？”
- “要不要我为关键 stakeholder 会话**准备一份 meeting prep brief**？”
- “要不要我把这个沟通节奏**整理成 recurring checklist**？”

## 说明

- `Manage Closely` 象限通常是 PM 最消耗政治资本的区域，关系处理好坏影响很大
- `Stance`（supportive、neutral、resistant）有助于判断关系建设的投入优先级
- 不要忘记下游 stakeholders：support、docs、sales enablement 往往最容易被发布“突然影响”
- 随着项目推进及时更新这张图，因为 stakeholder 的 interest 会随着阶段变化
