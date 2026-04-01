name: test-scenarios
description: "根据 user stories 生成完整的 test scenarios，包含测试目标、起始条件、用户角色、逐步操作与预期结果。适用于编写 QA test cases、创建测试计划、定义 acceptance tests，或准备功能验证。"
---
# 测试 Scenarios

根据 user stories 生成完整的 test scenarios，包含测试目标、起始条件、用户角色、逐步测试动作与预期结果。

**适用场景：** 编写 QA test cases、创建测试计划、定义 acceptance test scenarios，或验证 user story 的实现是否符合预期。

**参数：**
- `$PRODUCT`: The product or system name
- `$USER_STORY`: The user story to test (title and acceptance criteria)
- `$CONTEXT`: Additional testing context or constraints

## 分步流程

1. **审阅 user story** 与 acceptance criteria
2. **定义测试目标**：明确要验证什么行为
3. **建立起始条件**：系统状态、数据准备、配置要求
4. **识别用户角色**：由谁执行测试动作
5. **编写测试步骤**：把交互拆成逐步动作
6. **定义预期结果**：每一步之后应该观察到什么
7. **考虑 edge cases**：无效输入、边界情况等
8. **输出完整测试场景**：让 QA 可以直接执行

## 场景模板

**Test Scenario：** [清晰的场景名称]

**Test Objective：** [本测试要验证什么]

**Starting Conditions：**
- [需要的系统状态]
- [需要的数据或配置]
- [需要的用户设置或权限]

**User Role：** [由谁执行该测试]

**Test Steps：**
1. [第一步动作以及预期结果]
2. [第二步动作以及可观察到的结果]
3. [第三步动作以及系统行为]
4. [完成动作以及最终状态]

**Expected Outcomes：**
- [可观察结果 1]
- [可观察结果 2]
- [可观察结果 3]

## 示例测试场景

**Test Scenario：** 查看商品页上的 Recently Viewed Products

**Test Objective：** 验证 `Recently viewed` 区域正确显示，并且不包含当前商品。

**Starting Conditions：**
- 用户已登录，或浏览器允许记录历史
- 用户在当前会话中至少浏览过 2 个商品
- 当前所在商品页与此前浏览过的商品不同

**User Role：** Online Shopper

**Test Steps：**
1. 打开任意商品页 → 页面底部应出现 previously viewed items 区域
2. 向下滚动到底部 → `Recently viewed` 区域可见，并显示商品卡片
3. 检查商品缩略图 → 图片、标题和价格显示正确
4. 检查当前商品 → 当前商品不应出现在 recently viewed 列表中
5. 点击任一商品卡片 → 用户跳转到对应商品页

**Expected Outcomes：**
- 用户至少浏览过 1 个先前商品后，Recently viewed 区域才会出现
- 区域中展示 4 到 8 张商品卡片，信息完整
- 当前商品不会出现在列表中
- 每张卡片显示 “Viewed X minutes/hours ago” 之类时间戳
- 点击卡片会跳转到正确商品页
- 性能要求：该区域应在 2 秒内加载完成

## 输出交付物

- 针对每条 acceptance criterion 的完整测试场景
- 与 user story 意图一致的清晰测试目标
- 逐步、具体的测试动作
- 每一步之后可观察的预期结果
- 对 edge cases 和 error scenarios 的覆盖
- 可直接交给 QA 团队执行和归档的文档
