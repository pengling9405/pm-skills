# pm-product-discovery

Product discovery skills for PMs: ideation, experiments, assumption testing, feature prioritization, and customer interview synthesis.

## Overview

This plugin provides 12 skills and 5 commands for product managers.

## Skills

- **analyze-feature-requests** — Analyze and prioritize a list of feature requests by theme, strategic alignment, impact, effort, and risk.
- **brainstorm-experiments-existing** — Design experiments to test assumptions for an existing product.
- **brainstorm-experiments-new** — Design lean startup experiments (pretotypes) for a new product.
- **brainstorm-ideas-existing** — Brainstorm product ideas for an existing product using multi-perspective ideation (PM, Designer, Engineer).
- **brainstorm-ideas-new** — Brainstorm feature ideas for a new product in initial discovery.
- **identify-assumptions-existing** — Identify risky assumptions for a feature idea in an existing product across Value, Usability, Viability, and Feasibil...
- **identify-assumptions-new** — Identify risky assumptions for a new product idea across Value, Usability, Viability, Feasibility, and Go-to-Market.
- **interview-script** — Create a structured customer interview script with JTBD probing questions, warm-up, core exploration, and wrap-up sec...
- **metrics-dashboard** — Define and design a product metrics dashboard with key metrics, data sources, visualization types, and alert thresholds.
- **prioritize-assumptions** — Prioritize assumptions using an Impact × Risk matrix and suggest experiments for each.
- **prioritize-features** — Prioritize a backlog of feature ideas based on impact, effort, risk, and strategic alignment.
- **summarize-interview** — Summarize a customer interview transcript into a structured template with JTBD, satisfaction signals, and action items.

## Commands

- `/pm-product-discovery:brainstorm` — Brainstorm product ideas or experiments from PM, Designer, and Engineer perspectives — for existing or new products
- `/pm-product-discovery:discover` — Run a full product discovery cycle — from ideation through assumption mapping to experiment design
- `/pm-product-discovery:interview` — Prepare a customer interview script or summarize an interview transcript into structured insights
- `/pm-product-discovery:setup-metrics` — Design a product metrics dashboard with North Star metric, input metrics, health metrics, and alert thresholds
- `/pm-product-discovery:triage-requests` — Analyze, categorize, and prioritize a batch of feature requests from customers or stakeholders

## Installation

```bash
/install pm-product-discovery
```

Or use directly:

```bash
cc --plugin-dir /path/to/pm-product-discovery
```

## Author

Paweł Huryn — [The Product Compass Newsletter](https://www.productcompass.pm)

## License

MIT
