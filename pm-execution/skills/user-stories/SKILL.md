---
name: user-stories
description: "按照 3C（Card、Conversation、Confirmation）与 INVEST 标准创建 用户 stories，并附带描述、设计链接和验收标准。适用于编写用户故事、拆分功能需求和定义验收条件。"
---
# 用户 Stories

按照 3C 与 INVEST 标准创建 user stories，输出标题、描述、设计引用与验收标准。

**Use when：**
- 编写 user stories
- 把功能拆成 backlog items
- 细化验收标准

**Arguments：**
- `$PRODUCT`：产品或系统名
- `$FEATURE`：要拆分的功能
- `$DESIGN`：设计稿或原型链接
- `$ASSUMPTIONS`：关键前提与背景

## Step-by-Step Process

1. **Analyze the feature**
   - 先基于设计稿与上下文理解功能

2. **Identify user roles**
   - 明确主要用户角色与关键旅程

3. **Apply 3 C's**
   - Card：一句话说明
   - Conversation：说明背景与意图
   - Confirmation：写清验收标准

4. **Respect INVEST**
   - Independent
   - Negotiable
   - Valuable
   - Estimable
   - Small
   - Testable

5. **Use plain language**
   - 用清晰、直接的语言表达

6. **Link to design files**
   - 有设计稿时应建立引用关系

7. **Output stories**
   - 用结构化格式输出

## Story Template

**Title:** [功能短标题]

**Description:** As a [user role], I want to [action], so that [benefit].

**Design:** [设计链接]

**Acceptance Criteria:**
1. [清晰、可测试]
2. [用户可观察]
3. [系统验证正确]
4. [边界情况处理]
5. [性能或可访问性要求]
6. [必要集成点]

## 示例 用户 Story

**Title:** Recently Viewed Section

**Description:** As an online shopper, I want to see a "Recently viewed" section on the product page, so that I can quickly revisit products I considered.

**Design:** [Figma link]

**Acceptance Criteria:**
1. 对看过至少 1 个商品的用户显示该模块
2. 首次访问商品页的用户不显示
3. 当前商品不应出现在列表中
4. 卡片需展示图片、标题与价格
5. 支持“5 分钟前查看”这类时间提示
6. 点击卡片可进入对应商品页

## Output Deliverables

- 功能对应的一整组 user stories
- 每条 story 包含标题、描述、设计链接与 4-6 条验收标准
- stories 彼此尽量独立
- 大小适合一个 sprint 周期
- 能关联相关设计资料

---

### Further Reading

- [How to Write User Stories: The Ultimate Guide](https://www.productcompass.pm/p/how-to-write-user-stories)
