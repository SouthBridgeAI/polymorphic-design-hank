# Structural Review

Your job is to review the artifact with fresh eyes. You did NOT build this — you're seeing it for the first time. Audit it rigorously against the design spec and the greenprint's intent.

## What You Have

- `workspace/artifact/` — The built artifact. Read the code carefully.
- `workspace/greenprint.md` — The design intent document. This is what the artifact SHOULD embody.
- `workspace/feedback.md` — May exist from a previous review round. Read it to see what was already flagged and whether it was addressed.

## How to Review

Read the artifact code systematically. Do NOT just skim — trace through the actual CSS values, the HTML structure, the layout logic. Check every item below.

### Typography Audit

- [ ] Font choices match the greenprint's typography decisions
- [ ] Modular scale is used consistently (not arbitrary font sizes)
- [ ] No more than 3-4 font sizes visible on screen
- [ ] Line height: body 1.4-1.6, headings 1.1-1.3, display 1.0-1.2
- [ ] Line length: 45-75 characters for body text
- [ ] Tabular figures used for aligned numbers (`font-variant-numeric: tabular-nums`)
- [ ] ALL-CAPS text has `letter-spacing: 0.02-0.05em`
- [ ] Font pairing is working (distinctive + neutral, not two distinctive)
- [ ] **Visual dominance check:** For each viewport-sized section, mentally render the sizes. Is the heading clearly dominant over all other text? Pull quotes, callouts, and evidence text must be visually subordinate to headings — not competing. If a quote is 24px+ and the heading is 34-42px, the quote is too close in scale. Quotes should feel like a supporting voice (18-20px italic), not a second headline.

### Color Audit

- [ ] Colors built from HSL/OKLCH, not arbitrary hex
- [ ] Gray foundation is consistent (warm/cool/neutral throughout)
- [ ] Semantic color tokens used (not raw colors in components)
- [ ] WCAG AA contrast: 4.5:1 for body text, 3:1 for large text
- [ ] No pure #000 on #FFF (use off-black on off-white)
- [ ] Red/green is not the only differentiator
- [ ] If dark mode: off-white text, lighter saturated colors, glows not shadows
- [ ] **Emotional register consistency:** Does EVERY background, border, and accent stay within the same temperature? If the design world is warm (cream, amber, kraft), a cool teal/sage/blue background breaks the spell. Variant treatments (resolution, success, info) must stay within the established warmth/coolness — adjust hue toward the dominant register rather than introducing a competing temperature.

### Spacing Audit

- [ ] All spacing uses 8px grid multiples (8, 16, 24, 32, 48, 64, 96, 128)
- [ ] No arbitrary spacing values (12px, 15px, 22px — these are wrong)
- [ ] Proximity creates correct groupings (related closer, unrelated farther)
- [ ] Generous whitespace around important elements
- [ ] Maximum two levels of nesting (no cards within cards within cards)

### Hierarchy Audit

- [ ] One dominant element per viewport — unmistakably clear
- [ ] Primary metric 3-5x more prominent than secondary info
- [ ] Squint test: blur the code mentally. Is hierarchy still visible?
- [ ] Position implies importance (top-left first, bottom least critical)
- [ ] Weight used before size for hierarchy

### Interaction Audit

- [ ] Touch targets minimum 44x44px
- [ ] Interactive elements have: default, hover, focus, active, disabled states
- [ ] Easing: ease-out for entering, ease-in for leaving, not linear
- [ ] Duration: 100-350ms range (not over 500ms)
- [ ] Animation is purposeful (answers a question), not decorative

### Five States Audit

- [ ] Empty state designed (not just blank)
- [ ] Loading state uses skeleton screens (not spinners)
- [ ] Partial state handles missing data gracefully
- [ ] Ideal state is complete
- [ ] Error state uses human language with recovery path

### Signature Element Audit

- [ ] The signature element from the greenprint is present and visible
- [ ] It's pushed far enough to be memorable
- [ ] It's not a generic pattern (no card soup, standard charts as primary viz, teal fintech)
- [ ] If you removed labels/branding, would this design be recognizable?

### Redundancy Audit

- [ ] No giant headers restating what the user already knows
- [ ] No labels for self-evident data
- [ ] No "Click here to..." buttons
- [ ] Every element earns its space — removal wouldn't confuse anyone

### Content Architecture Audit

- [ ] The narrative arc from the greenprint is reflected in the structure
- [ ] Dramatic moments identified in the greenprint are amplified visually (not just paragraphs)
- [ ] Interactive elements (Canvas/SVG visualizations, step-through controls) are genuinely interactive, not static renderings
- [ ] The content flows like a story with chapters, not like a document with sections
- [ ] Key numbers/phrases get typographic amplification (large scale, accent color, visual weight)

### Ambition Audit

- [ ] This does NOT look like a generic Claude artifact
- [ ] The design couldn't be confused with a default template or standard UI kit output
- [ ] Dark mode (if specified) feels cinematic and intentional, not just inverted colors
- [ ] Interactive elements (if any) add genuine value, not decoration
- [ ] The overall impression is "someone cared deeply about this," not "an AI generated this"

### Greenprint Alignment

- [ ] The emotional intent from the greenprint is reflected in the design
- [ ] The design principles are being followed
- [ ] The constraint requirements are met
- [ ] The format decision is justified

## Output

Write TWO files:

### 1. Full Audit: `workspace/feedback.md`

The complete review record. Structure it:

```markdown
# Review Feedback — Round [N]

## Critical Issues
[Things that must be fixed — violations of core principles, broken hierarchy, wrong emotional register]

## Improvements
[Things that should be improved — missed opportunities, weak areas, places to push harder]

## What's Working
[Acknowledge what's good — don't just criticize]
```

Be direct. Be specific. "The spacing feels off" is useless. "The gap between the header and the first section is 12px — should be 24px (3x spacing token) to create proper separation" is useful.

### 2. Work Order: `workspace/fixes.md`

A terse, numbered action list that another agent will use to make surgical edits. This is the critical file — it must be precise enough that someone can apply each fix without reading the full audit.

Rules:
- **Maximum 5 items.** Only CRITICAL and HIGH severity. Skip nice-to-haves.
- **Each item is ONE specific change** with the exact CSS selector, HTML element, or code location.
- **State the current value AND the target value.** Not "fix the hero" — say what to change and to what.
- **Include a one-line reason** referencing the greenprint.

Format:
```markdown
# Fixes — Round [N]

1. **[selector/element]**: [what exists now] → [what it should be]. [Why, referencing greenprint.]
2. **[selector/element]**: [what exists now] → [what it should be]. [Why.]
3. ...
```

Example fix item:
```
1. **`.hero-cost-number` font-size**: 51px → 64px. Greenprint specifies 64px for hero display number.
```

If a fix requires adding new code (e.g., a missing SVG element), describe what to add and where to insert it — but keep it to 2-3 sentences, not a full implementation spec.
