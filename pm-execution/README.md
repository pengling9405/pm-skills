# pm-execution

Execution and product management skills: PRDs, OKRs, roadmaps, sprints, pre-mortems, stakeholder maps, user stories, prioritization frameworks, and more.

## Overview

This plugin provides 15 skills and 10 commands for product managers.

## Skills

- **brainstorm-okrs** — Brainstorm team-level OKRs aligned with company objectives.
- **create-prd** — Create a Product Requirements Document using a comprehensive 8-section template.
- **dummy-dataset** — Generate realistic dummy datasets for testing with customizable columns, constraints, and output formats.
- **job-stories** — Create job stories using the 'When [situation], I want to [motivation], so I can [outcome]' format.
- **outcome-roadmap** — Transform an output-focused roadmap into an outcome-focused one.
- **pre-mortem** — Run a pre-mortem analysis on a PRD.
- **prioritization-frameworks** — Reference guide to 9 prioritization frameworks with formulas, when-to-use guidance, and templates.
- **release-notes** — Generate user-facing release notes from tickets, PRDs, or changelogs.
- **retro** — Facilitate a structured sprint retrospective.
- **sprint-plan** — Plan a sprint with capacity estimation, story selection, dependency mapping, and risk identification.
- **stakeholder-map** — Build a stakeholder map using a power/interest grid with communication strategies.
- **summarize-meeting** — Summarize a meeting transcript into structured notes with decisions and action items.
- **test-scenarios** — Create comprehensive test scenarios from user stories.
- **user-stories** — Create user stories following the 3 C's and INVEST criteria.
- **wwas** — Create product backlog items in Why-What-Acceptance format.

## Commands

- `/pm-execution:generate-data` — Generate realistic dummy datasets for testing
- `/pm-execution:meeting-notes` — Summarize a meeting transcript into structured notes with decisions, action items, and follow-ups
- `/pm-execution:plan-okrs` — Brainstorm team-level OKRs aligned with company objectives
- `/pm-execution:pre-mortem` — Run a pre-mortem risk analysis on a PRD, launch plan, or feature
- `/pm-execution:sprint` — Sprint lifecycle — plan a sprint, run a retrospective, or generate release notes
- `/pm-execution:stakeholder-map` — Map stakeholders on a Power × Interest grid and create a tailored communication plan
- `/pm-execution:test-scenarios` — Generate comprehensive test scenarios from user stories or feature specs
- `/pm-execution:transform-roadmap` — Convert a feature-based roadmap into an outcome-focused roadmap
- `/pm-execution:write-prd` — Create a comprehensive Product Requirements Document from a feature idea or problem statement
- `/pm-execution:write-stories` — Break a feature into backlog items — user stories, job stories, or WWA format

## Installation

```bash
/install pm-execution
```

Or use directly:

```bash
cc --plugin-dir /path/to/pm-execution
```

## Author

Paweł Huryn — [The Product Compass Newsletter](https://www.productcompass.pm)

## License

MIT
