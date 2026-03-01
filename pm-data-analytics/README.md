# pm-data-analytics

Data analytics skills for PMs: SQL query generation and cohort analysis. Analyze user data, generate queries, and identify retention patterns.

## Overview

This plugin provides 3 skills and 3 commands for product managers.

## Skills

- **ab-test-analysis** — Analyze A/B test results with statistical significance, sample size validation, confidence intervals, and actionable ...
- **cohort-analysis** — Perform cohort analysis on user engagement data.
- **sql-queries** — Generate SQL queries from natural language descriptions.

## Commands

- `/pm-data-analytics:analyze-cohorts` — Perform cohort analysis on user data — retention curves, feature adoption, and engagement trends
- `/pm-data-analytics:analyze-test` — Analyze A/B test results — statistical significance, sample size validation, and ship/extend/stop recommendations
- `/pm-data-analytics:write-query` — Generate SQL queries from natural language — supports BigQuery, PostgreSQL, MySQL, and more

## Installation

```bash
/install pm-data-analytics
```

Or use directly:

```bash
cc --plugin-dir /path/to/pm-data-analytics
```

## Author

Paweł Huryn — [The Product Compass Newsletter](https://www.productcompass.pm)

## License

MIT
