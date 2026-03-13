# Design Foundational Knowledge

This is the craft layer. These principles should be applied automatically so your creative energy focuses on the distinctive aspects.

## Font Loading

**Google Fonts:** Link via `<link>` tag in the `<head>`. Standard approach for web-safe fonts.

**Local fonts from the design-pack:** If the greenprint specifies fonts from `read_only_data_source/design-pack/`, use `@font-face` declarations with relative paths:

```css
@font-face {
  font-family: 'MyFont';
  src: url('../read_only_data_source/design-pack/fonts/MyFont-Regular.woff2') format('woff2'),
       url('../read_only_data_source/design-pack/fonts/MyFont-Regular.otf') format('opentype');
  font-weight: 400;
  font-style: normal;
}
```

These relative paths will be automatically embedded as base64 data URIs during output processing, making the final file fully portable. Use the actual font file names from the design-pack — check what files exist before referencing them.

## Typography Rules

**Modular Scale:** Use a mathematical ratio for font sizes (defined in the greenprint). Never pick arbitrary sizes. Define your scale as tokens and use ONLY those values.

**Measure (Line Length):** 45-75 characters per line for body text. For 16px text, this means `max-width` around 600-700px for prose containers.

**Line Height:** Body text: 1.4-1.6. Headings: 1.1-1.3. Large display text: 1.0-1.2. The larger the text, the less proportional line-height it needs.

**Tabular Figures:** For any numbers that align vertically (tables, prices, statistics), use `font-variant-numeric: tabular-nums`. Numbers that shift width look broken.

**Optical Adjustments:**
- ALL-CAPS text needs `letter-spacing: 0.02-0.05em`
- Small text (<14px) needs tracking opened up
- Large display text benefits from negative tracking
- Text on colored backgrounds may need weight adjustment

**Font Selection:** Avoid Inter, Roboto, Open Sans, system-ui as primary choices. These are defaults, not decisions. Use the fonts committed to in the greenprint.

## Color Rules

**Build from HSL or OKLCH.** Never reason in hex.

**Gray Foundation:** Most interfaces are 80% gray. Build a full scale: 50-950 values.

**Semantic Tokens:** Never use colors directly in components. Define by intent: `--color-danger`, `--color-warning`, `--color-success`, `--color-info`, `--color-accent`, `--color-muted`.

**Dark Mode:**
- Off-white text (~90% lightness), not pure white
- Saturated colors lighter to maintain perceived vibrancy
- Glows or border separation instead of shadows
- Depth conveyed by lightness (lighter = elevated)

**Accessibility:** WCAG AA: 4.5:1 contrast for body text, 3:1 for large text. Never use red/green as the only differentiator.

## Spacing Rules

**8px Grid:** Use multiples of 8 for ALL spacing: 8, 16, 24, 32, 48, 64, 96, 128. Inconsistent spacing (12px here, 15px there) is amateur.

**Proximity Creates Grouping:** Related elements closer together than unrelated elements. Space between label and input < space between input groups.

**Negative Space Is Active:** Whitespace directs attention. Dense UI feels anxious. Generous space around an element says "this is important."

## Hierarchy Rules

**One Dominant Element Per Viewport.** What's the most important thing? Make it unambiguously dominant. If everything is emphasized, nothing is.

**The Squint Test:** Blur your eyes. Can you still see the hierarchy? If everything turns to uniform gray soup, hierarchy is too weak.

**Weight Before Size:** Create hierarchy by changing font-weight (600 vs 400) rather than font-size. This maintains vertical rhythm.

**Position Implies Importance:** Top-left reads first. Top-center is primary. Right is secondary. Bottom is least critical.

## Interaction Rules

**Touch targets:** Minimum 44x44px. High-frequency actions get larger targets. Destructive actions get smaller targets (appropriate friction).

**State Coverage:** Every interactive element needs: default, hover, focus, active, disabled, loading.

**Easing:** ease-out for entering, ease-in for leaving, ease-in-out for morphing. Never linear.

**Duration:** Micro (100-150ms), small (150-250ms), medium (250-350ms), large (350-500ms). Over 500ms feels sluggish.

**Animation Restraint:** One well-considered animation > ten decorative ones. Before adding animation, ask: what question does this answer?

## The Five States of Data

Design ALL of them:
1. **Empty** — First impression. Opportunity for guidance or personality.
2. **Loading** — Skeleton screens, not spinners. Match the actual content layout.
3. **Partial** — Some data present, some missing. Show what you have.
4. **Ideal** — The happy path. Only 20% of the experience.
5. **Error** — Human language. Path to recovery. Never raw error codes.

## Dark Mode Craft

When the greenprint specifies dark mode:

**Background:** Never pure black (#000). Use near-blacks with personality: cool (#07090f, #0a0e17), warm (#0f0d0a), neutral (#111). The background color sets the entire mood.

**Text:** Off-white (~90% lightness: #dce0ea, #e8e6e3). Pure white (#fff) only for maximum emphasis moments.

**Depth:** Lighter = elevated. Cards at #0e1219, raised elements at #151c28, hover at #1e2738. Use subtle border (1px solid #1e2738) instead of shadows.

**Accent colors:** Saturated colors need to be lighter on dark backgrounds to maintain perceived vibrancy. Gold/amber (#f0c840) creates warmth against cool darks. Green (#4ece80) reads as positive/success. Blue (#5b9cf0) reads as informational. Red (#ef5350) reads as dramatic.

**Glow effects:** On dark backgrounds, box-shadow with accent color creates a glow that reads as importance: `box-shadow: 0 0 40px -10px #f0c840`. Use sparingly — one glow per viewport.

## Interactive Visualization Craft

When building Canvas/SVG visualizations:

**Canvas basics:** Get the canvas element, use `getContext('2d')` for 2D rendering. Clear and redraw on state change. Math for positioning — no libraries needed.

**Animation:** `requestAnimationFrame` or `setTimeout` with state-driven rendering. Playback controls: Play/Pause/Reset/Step. Speed adapts to data size.

**IntersectionObserver pattern:** Wrap sections in a Reveal component that fades up on scroll. `threshold: 0.12`, `opacity 0.7s ease, transform 0.7s ease`, `translateY(28px)` to `none`.

**Interactive controls:** Style them to match the theme. Border + background from the dark/light palette. Active state with accent color border. Small, precise, monospace labels.

## Common Failure Modes to Avoid

**Visual:** More than 3-4 font sizes (scale bloat). Shadows on everything. Inconsistent border-radius. Pure #000 on pure #FFF. Gradients as decoration.

**Spacing:** Cards within cards within cards. Each nesting level adds padding — suddenly 40% of viewport is margins. Maximum two levels of nesting. Ask: does this grouping need a visual boundary, or is proximity enough?

**Redundancy:** If the user asked for "Runway Calculator," you don't need a giant header saying "Runway Calculator." Would removal confuse anyone? If no, remove it. Labels for self-evident data. "Click here to..." buttons. Section headers repeating card titles.

**Structural:** Designing only the ideal state. Mobile as afterthought. Inconsistent patterns (three different button styles).
