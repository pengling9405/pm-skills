---
description: Explore business models using Lean Canvas, Business Model Canvas, or Value Proposition frameworks
argument-hint: "[lean|full|value-prop] <product or business>"
---

# /business-model -- Business Model Exploration

Build and analyze business models using three complementary frameworks. Choose one or run all three for a complete picture.

## Invocation

```
/business-model lean Marketplace connecting freelance PMs with startups
/business-model full Enterprise analytics platform
/business-model value-prop AI writing tool for non-native English speakers
/business-model all SaaS onboarding tool        # runs all three
/business-model                                   # asks what you need
```

## Modes

---

### Lean Canvas Mode

Best for: Early-stage ideas, startups, new product lines.

Apply the **lean-canvas** skill to produce a complete Lean Canvas:

```
## Lean Canvas: [Product]

| Problem (Top 3) | Solution | Unique Value Proposition |
|-----------------|----------|------------------------|
| 1. [problem]    | [solution to each] | [single clear message] |
| 2. [problem]    |          |                        |
| 3. [problem]    |          |                        |

| Key Metrics | Unfair Advantage |
|------------|-----------------|
| [what you measure] | [what can't be copied] |

| Channels | Customer Segments |
|---------|------------------|
| [how you reach them] | [who, early adopters first] |

| Cost Structure | Revenue Streams |
|---------------|----------------|
| [fixed + variable] | [how you make money] |

### Riskiest Assumptions
[What must be true for this to work — prioritized by risk]

### Experiments to Run
[How to validate the riskiest assumptions cheaply]
```

---

### Full Business Model Canvas Mode

Best for: Established products, strategic planning, investor materials.

Apply the **business-model** skill to produce all 9 building blocks:

```
## Business Model Canvas: [Product]

| Key Partners | Key Activities | Value Propositions | Customer Relationships | Customer Segments |
|-------------|---------------|-------------------|----------------------|------------------|
| [who helps you] | [core actions] | [why customers choose you] | [how you interact] | [who you serve] |

| Key Resources | | Channels | |
|-------------|---|---------|---|
| [what you need] | | [how you deliver] | |

| Cost Structure | Revenue Streams |
|---------------|----------------|
| [your costs] | [your revenue] |

### Analysis
[Strengths and weaknesses of this model]
[How the pieces reinforce each other]
[Vulnerabilities and dependencies]
```

---

### Value Proposition Mode

Best for: Refining messaging, understanding user value, product-market fit analysis.

Apply the **value-proposition** skill to produce a JTBD-framed value proposition:

```
## Value Proposition: [Product]

### For [Segment]:
1. **Who**: [target user profile]
2. **Why**: [the job they're trying to do]
3. **What Before**: [their current painful reality]
4. **How**: [your solution approach]
5. **What After**: [their improved reality]
6. **Alternatives**: [what they'd use without you, and why you're better]

### Value Proposition Statement
[One sentence: For [who] who [need], [product] is a [category] that [benefit]. Unlike [alternative], we [differentiator].]
```

---

### All Mode

Runs all three frameworks and adds a synthesis section comparing insights across frameworks.

## Workflow (All Modes)

### Step 1: Gather Context

Ask:
- What is the product or business idea?
- What stage? (idea, validated, scaling)
- Any existing business model to refine?
- Who is the target customer?

### Step 2: Generate the Selected Framework(s)

Apply the relevant skill(s) as described above.

### Step 3: Save and Iterate

Save as markdown. Offer:
- "Want me to **stress-test this model** with a SWOT or PESTLE analysis?"
- "Should I **design a pricing strategy** for the revenue streams?"
- "Want me to **build a strategy canvas** around this model?"
- "Should I **identify the beachhead segment**?"

## Notes

- Lean Canvas is best for speed and hypothesis testing — don't overthink it
- BMC is better for mature businesses that need to articulate how everything connects
- Value Proposition is the sharpest tool for product-market fit conversations
- In "all" mode, highlight where frameworks agree (strong signal) and where they diverge (needs investigation)
