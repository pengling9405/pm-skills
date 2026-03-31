description: 从 user stories 或 feature specs 生成完整 test scenarios，覆盖 happy path、edge cases 与 error handling
argument-hint: "<user stories、feature spec 或功能描述>"
---

# /test-scenarios -- 测试场景生成器

把 user stories 或功能描述转成 QA 可以直接执行的完整测试场景，覆盖 happy paths、edge cases、error handling，以及跨浏览器/设备考虑。

## 调用方式

```
/test-scenarios [paste user stories or acceptance criteria]
/test-scenarios [upload a PRD or feature spec]
/test-scenarios User can reset their password via email link
```

## 工作流

### Step 1：接收输入

接受：user stories、acceptance criteria、PRD 片段、功能描述，或任何对预期行为的说明。

### Step 2：生成测试场景

调用 **test-scenarios** skill：

针对每个 user story 或 requirement，生成：

**Happy Path Scenarios**：预期用户流程正常工作
**Edge Cases**：边界条件、异常输入、并发情况
**Error Scenarios**：出现错误时系统如何表现
**Security Scenarios**：如适用，覆盖 auth、permissions、data access
**Performance Scenarios**：如适用，覆盖 load、timeout、大数据量

### Step 3：整理输出

```
## Test Scenarios: [Feature]

**Source**: [user stories / PRD / description]
**Total scenarios**: [count]
**Coverage**: [happy path / edge cases / errors / security / performance]

### Scenario 1: [Title]
**Tests**: [对应哪条 story 或 requirement]
**Preconditions**: [所需前置条件]
**User role**: [执行该测试的是谁]

| Step | Action | Expected Result |
|------|--------|----------------|
| 1 | [user action] | [expected system response] |
| 2 | [user action] | [expected system response] |

**Postconditions**: [完成后的系统状态]
**Priority**: [Critical / High / Medium / Low]

---
[Repeat for each scenario]

### Coverage Matrix
| Requirement | Happy Path | Edge Cases | Error Handling | Notes |
|------------|-----------|-----------|---------------|-------|

### Test Data Requirements
[执行这些场景所需的测试数据]
```

保存为 markdown。

### Step 4：提供后续动作

- “要不要我为这些场景**生成测试数据**？”
- “要不要我为某些特定场景**补更多 edge cases**？”
- “要不要我把这些场景反向整理成**user stories**？”

## 说明

- 先写 happy paths，再补 edge cases，先确保基本流程成立，再测试边界
- 原始 story 中的每条 acceptance criterion 都至少应该映射到一个 test scenario
- 同时覆盖正向测试（能正常工作）和反向测试（能优雅失败）
- 对 API 场景，要覆盖 rate limiting、timeout、malformed requests 与 auth failures
- 如果某些场景需要特定测试环境或第三方服务 mocking，要明确标出来
