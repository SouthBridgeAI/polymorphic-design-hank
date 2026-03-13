# Build Character & Signature

Your job is to transform a structurally correct but boring artifact into something distinctive with a soul. The foundation is already built — structure, hierarchy, tokens, all content placed. You push the creative boundaries.

## What You Have

- `workspace/greenprint.md` — The complete design document with signature element, palette, intent.
- `workspace/artifact/` — The built foundation. Read it carefully first.
- `workspace/build-notes.md` — Notes from the foundation builder.
- `read_only_data_source/context/` — Raw data for reference.
- `read_only_data_source/design-pack/` — Brand assets.

## Your Job

This is where the output stops looking like "an AI made this" and starts looking like something with a point of view. The foundation gave you correct bones. Now you give it a soul.

### 1. The Signature Element

The ONE thing from the greenprint that makes this design ownable. Push it further than feels comfortable. If you removed the logo, would someone recognize this design? If not, you haven't pushed far enough.

### 2. Replace Generic with Specific

- Default charts become custom Canvas/SVG visualizations designed for THIS data
- Standard cards become components with character
- Template layouts become considered compositions
- Generic section breaks become dramatic typographic moments

### 3. Content-Specific Visualizations

If there's algorithmic, numerical, or process content — BUILD it as interactive visualization. Canvas-rendered graphs with step-through controls. Animated diagrams. Explorable data. Don't describe what could be shown — show it.

### 4. Dramatic Typographic Moments

Use scale for emotional impact. A key number (97%, 6^27, $4.2M) rendered at `clamp(5rem, 15vw, 10rem)` creates a moment no paragraph can. Find 2-3 numbers or phrases in the content that deserve this treatment.

### 5. Color Refinement

Move from "tokens that work" to "palette with intent." Ensure color supports the emotional register in the greenprint. Every color in the palette must share the same temperature — warm world stays warm, cool world stays cool.

### 6. Typography Character

Is the font choice landing? Are numbers getting proper treatment (tabular figures, sizing)? Does the typography have personality matching the intent? Pull quotes should be at most 60% of heading size — subordinate, not competing.

### 7. Hierarchy Amplification

The primary metric should be 3-5x more prominent than secondary info. Not 1.5x. Dramatically more.

## Techniques That Create Distinctiveness

- Canvas/SVG visualizations of the actual data — not chart libraries, custom rendering
- Scroll-triggered reveals (IntersectionObserver) that make content feel alive
- Interactive controls: step-through, play/pause, expandable sections, toggles
- Categorized visual elements: color-coded tags, status indicators with distinct semantics
- Giant numbers or phrases as section punctuation — visual weight that demands attention
- Quote blocks with distinctive styling (glow, border accent, different font)
- Timeline/progress elements that show journey and process

## Convergence Traps to Actively Resist

- Teal/cyan as primary color in financial interfaces
- Card grids with equal visual weight (card soup)
- Standard line/bar charts for the PRIMARY visualization
- Four-stat summary rows where everything looks identical
- Shadows on everything
- Safe, middle-of-the-road color choices
- Warm cream / editorial look when dark mode would create more impact
- Static presentation of content that should be interactive
- Using chart libraries when custom Canvas would be more distinctive

## Mandatory Deliverables

When you are done, ALL of the following must exist as working code in the artifact — not as plans, not as comments, not as TODO markers:

1. **The signature element from the greenprint** — implemented as a functioning visualization (Canvas/SVG/HTML). If the greenprint describes an SVG timeline, there must be an actual `<svg>` element with real data rendered. If it describes an interactive chart, it must respond to user input.
2. **At least 2 dramatic typographic moments** — key numbers or phrases rendered at display scale with accent treatment.
3. **At least 1 content-specific visualization** — a custom Canvas/SVG rendering of the actual data (not a chart library, not a styled div pretending to be a chart).
4. **Interactive behavior** — at minimum, hover states on data elements and one scroll-triggered animation.

If any of these are missing when you finish, you are not done.

## Signature Stress Test

Before you're done, ask yourself:
- If you removed all labels and branding, would this be recognizable?
- Is there ONE thing someone would remember and describe to a friend?
- Are you slightly uncomfortable with how far you pushed it?

If the answer to any is no, push further.

## Output

Update the artifact in `workspace/artifact/` in place.

Update `workspace/build-notes.md` with what you changed: what the signature element became, what visualizations you built, what creative choices you made, and what the polish codon should pay attention to.
