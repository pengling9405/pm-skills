---
name: dummy-dataset
description: "生成真实感较强的 dummy datasets，用于测试，并支持自定义字段、约束与输出格式（CSV、JSON、SQL、Python script）。适用于创建测试数据、搭建 mock datasets，或为开发和演示生成样例数据。"
---
# Dummy Dataset 生成

生成真实感较强的测试数据集，支持自定义字段、约束和输出格式（CSV、JSON、SQL、Python script）。可以直接产出可执行脚本或可立即使用的数据文件。

**适用场景：** 创建测试数据、生成样例数据集、为开发构造真实感 mock data，或填充测试环境。

**参数：**
- `$PRODUCT`: The product or system name
- `$DATASET_TYPE`: Type of data (e.g., customer feedback, transactions, user profiles)
- `$ROWS`: Number of rows to generate (default: 100)
- `$COLUMNS`: Specific columns or fields to include
- `$FORMAT`: Output format (CSV, JSON, SQL, Python script)
- `$CONSTRAINTS`: Additional constraints or business rules

## 分步流程

1. **识别数据集类型**：理解数据所属领域
2. **定义字段规格**：名称、数据类型、取值范围
3. **确定数据量**：需要多少条样例记录
4. **选择输出格式**：CSV、JSON、SQL INSERT 或 Python script
5. **应用真实模式**：确保数据看起来合理可信
6. **加入业务约束**：遵守业务逻辑与关联关系
7. **生成数据或脚本**：输出可直接执行的结果
8. **校验结果**：确保数据质量与完整性

## 模板：Python Script 输出

```python
import csv
import json
from datetime import datetime, timedelta
import random

# 配置
ROWS = $ROWS
FILENAME = "$DATASET_TYPE.csv"

# 字段定义与真实值生成器
columns = {
    "id": "auto-increment",
    "name": "first_last_name",
    "email": "email",
    "created_at": "timestamp",
    # Add more columns...
}

def generate_dataset():
    """生成具有真实感的 dummy dataset"""
    data = []
    for i in range(1, ROWS + 1):
        record = {
            "id": f"U{i:06d}",
            # Generate values based on column definitions
        }
        data.append(record)
    return data

def save_as_csv(data, filename):
    """将数据集保存为 CSV"""
    with open(filename, 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=data[0].keys())
        writer.writeheader()
        writer.writerows(data)

if __name__ == "__main__":
    dataset = generate_dataset()
    save_as_csv(dataset, FILENAME)
    print(f"Generated {len(dataset)} records in {FILENAME}")
```

## 示例数据集规格

**数据集类型：** Customer Feedback

**字段：**
- feedback_id（自增，U001、U002...）
- customer_name（真实感姓名）
- email（有效 email 格式）
- feedback_date（过去 90 天内的日期）
- rating（1-5 星）
- category（Bug、Feature Request、Complaint、Praise）
- text（真实感反馈内容）
- product（electronics、clothing、home）

**约束：**
- 评分分布偏斜：40% 为 5 星，30% 为 4 星，20% 为 3 星，10% 为 1-2 星
- Bug 类别只出现在 1-3 星评分中
- Feature requests 只出现在 3-5 星评分中
- Email 域名应真实感较强（gmail、yahoo、company.com）

## 输出交付物

- 可直接执行的 Python script 或直接生成的数据文件
- 带有正确表头与格式的 CSV 文件
- 结构与类型合法的 JSON 文件
- 可直接填充数据库的 SQL INSERT 语句
- 满足校验与业务约束的数据结果
- 真实且符合业务语境的字段值
- 数据生成逻辑说明
- 快速使用说明

## 输出格式

**CSV：** 扁平表格格式，方便导入表格工具和数据库

**JSON：** 嵌套结构，适合 API 与 NoSQL 场景

**SQL：** INSERT 语句，可直接在关系型数据库中执行

**Python Script：** 适合自定义或大规模数据生成的可执行脚本
