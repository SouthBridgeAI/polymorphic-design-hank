# Understand Intent

Your job is to deeply understand what needs to be built and WHY — then capture that understanding in the greenprint.

## What You Have

Read everything in `read_only_data_source/`:
- `instruction.md` — The user's request (could be a single line)
- `design-pack/` — Brand assets and aesthetic references (if provided). A pre-generated inventory is at `workspace/design-pack-inventory.md` — read it first to see what's available. Then look at every **image** in detail (these communicate taste). For fonts, note what families are provided but don't open every variant file.
- `context/` — Raw data the output needs to work with (papers, datasets, specs)

## What You Must Do

**Use your thinking to work through ALL SEVEN steps below.** Do not skim. Do not summarize. Actually reason through each one. Make commitments. Be specific.

### Step 1: Functional Intent

Ask: **What is the core job-to-be-done?**

Not the surface task ("display data," "show an invoice") but the underlying purpose. A dashboard doesn't "show metrics" — it enables decision-making under time pressure. A form doesn't "collect information" — it guides someone through a commitment. An invoice doesn't "list charges" — it creates trust between two parties in a financial relationship.

Name the real job.

### Step 2: Emotional Intent

Ask: **What emotional state should this produce?**

Every interface has an emotional register, whether you design for it or not. Be explicit:
- Should this feel calm or energizing?
- Playful or serious?
- Dense and powerful or spacious and focused?
- Should it invite exploration or guide linearly?
- What should the user feel *after* using it?

Push past "professional" or "clean" — those are non-commitments. Find the specific feeling. "Calm authority — like a cockpit instrument, not a spreadsheet" is a commitment.

### Step 3: Reference Archaeology

Ask: **What existing designs — from any domain — have solved for similar function + feeling?**

Don't limit yourself to direct competitors. A medical monitoring interface might inform a financial dashboard. A video game inventory system might inform a file manager. A cockpit might inform a synthesizer.

Find 3-5 references. For each, identify: what specifically works, and what principle underlies it.

### Step 4: Constraint Mapping

Ask: **What are the hard constraints?**

- **Device context:** Mobile-first? Desktop? Both?
- **Information density:** How much data must be visible simultaneously?
- **Interaction model:** Touch? Mouse? Keyboard-heavy?
- **Accessibility requirements:** WCAG level? Specific accommodations?
- **Technical constraints:** Framework limitations? Performance budgets?
- **Brand constraints:** Existing design language from the design-pack?

Constraints are generative. They eliminate options and force specificity.

### Step 5: Principle Synthesis

From steps 1-4, extract 3-5 design principles specific to THIS project.

These should be actionable and falsifiable — you should be able to look at a design decision and ask "does this follow the principle?"

Bad: "Clean and modern"
Good: "The primary metric should be comprehensible in under 2 seconds from any viewport"

Bad: "User-friendly"
Good: "Progressive disclosure — show only what's needed for the current task, reveal complexity on demand"

### Step 6: Content Architecture

Before any visual decisions — **what is the story shape?**

Analyze the raw data/content deeply. Not a summary — a narrative map:
- What is the emotional arc? Where's the tension? Where's the release?
- What are the dramatic moments worth amplifying visually? (A number, a turning point, a contrast)
- What structure serves the content? (Linear narrative? Explorable chapters? Dashboard? Timeline?)
- Is there data that would be more powerful as interactive visualization than as text?
- Where should the reader feel something — wonder, surprise, understanding?

Write a Content Architecture section with the narrative structure: what comes first, what builds, what the climax is, what resolves. Think of it like chapters, not sections.

### Step 7: Technical Direction

Decide:
- **Color temperature:** Warm grays? Cool grays? Neutral? Why?
- **Light or dark mode?** This is a content decision, not a preference. Dark mode creates focus and drama — right for narratives, immersive experiences, content that should feel like an event. Light mode creates openness and trust — right for tools, documents, transactional interfaces. **Choose based on the emotional intent, not convention.**
- **Typography direction:** What kind of font matches the emotional intent? Geometric precision? Humanist warmth? Editorial authority?
- **Spacing density:** Generous and spacious? Dense and information-rich?
- **Output format:** The output is a single self-contained HTML file. HTML with inline CSS and JavaScript is powerful — you can build interactive Canvas/SVG visualizations, animated transitions, step-through controls, and scroll-triggered reveals all within a single `.html` file using vanilla JS. Do not underestimate what's possible without a framework.

### Step 8: Punctuation Mapping

Identify 3-5 moments where the design should deviate from system to create meaning:
- Where is the emotional peak of the user journey?
- What is the signature element that makes this ownable?
- What should empty, error, and completion states convey?
- Where can motion create understanding rather than decoration?

The signature element is the ONE thing that will make this design memorable. If you removed all labels and branding, would someone recognize this design? That's what the signature element does.

## Checkpoint: Are You Ready?

Before writing the greenprint, confirm you can answer:
1. In one sentence, what is this thing for?
2. In three words, how should it feel?
3. What are three specific reference products and what you're taking from each?
4. What's the primary device/context constraint?
5. What are your 3-5 project-specific principles?
6. What's the narrative arc — the chapters of this content?
7. What's your color temperature, mode (dark/light), typography direction, and spacing density?
8. What's the one signature element?
9. What interactive elements (Canvas/SVG visualizations, step-through controls, scroll reveals) would enhance the content?

If you cannot answer these specifically, go back and decide.

## Output

Write everything to `workspace/greenprint.md`. Structure it clearly:

```markdown
# Greenprint: [Project Name]

## Intent
### Functional Intent
[The real job-to-be-done]

### Emotional Intent
[The specific feeling — not "clean" or "professional"]

### Audience & Context
[Who uses this, when, why, what's their state of mind]

## References
[3-5 specific references with what you're taking from each]

## Design Principles
[3-5 actionable, falsifiable principles for this project]

## Visual Direction
### Color
[Temperature, reasoning, initial palette direction]

### Typography
[Direction, pairing reasoning, scale]

### Spacing & Density
[How dense, what grid, why]

## Content Architecture
### Narrative Arc
[The story shape — what comes first, what builds, what's the climax, what resolves]

### Dramatic Moments
[Specific data points, numbers, turning points worth amplifying visually]

### Interactivity Candidates
[Content that would be more powerful as interactive visualization than as text]

## Signature Element
[The ONE distinctive thing — described specifically]

## Punctuation Moments
[3-5 moments where the design breaks from system to create meaning]

## Interactivity Plan
[What interactive elements to build: Canvas/SVG visualizations, step-through controls, scroll reveals, explorable data — and what they add to the experience]

## Constraints
[All hard constraints from Step 4]

## Design Pack Analysis
[What brand assets exist and what they communicate]
[What aesthetic references suggest about the user's taste]
[Font direction from provided references]

## Raw Data Summary
[Key takeaways from context/ that shape what needs to be built]
```

**Be specific. Be committed. Every vague sentence in the greenprint produces generic output downstream.**
