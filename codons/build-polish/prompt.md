# Build Polish & States

Your job is craft, completeness, and every detail that separates good from great. The artifact has structure (foundation) and soul (character). You bring the finish.

## What You Have

- `workspace/greenprint.md` — The design document.
- `workspace/artifact/` — The artifact with foundation + character applied. Read it carefully.
- `workspace/build-notes.md` — Notes from foundation and character builders.
- `workspace/feedback.md` — Review feedback, if it exists. Read and address every item.

## What to Build

### 1. All Five Data States

- **Empty** — First impression. Opportunity for guidance or personality.
- **Loading** — Skeleton screens matching the actual layout, not spinners.
- **Partial** — Show what you have gracefully.
- **Ideal** — Already built. Verify it's polished.
- **Error** — Human language, path to recovery. Never raw error codes.

### 2. Transitions and Micro-Interactions

- Hover states on every interactive element
- Focus states visible for keyboard navigation
- State change animations (100-350ms)
- Easing appropriate to direction: ease-out for entering, ease-in for leaving
- Scroll reveals if not already present

### 3. Accessibility Pass

- Contrast ratios: 4.5:1 for body text, 3:1 for large text
- Keyboard navigation works through all interactive elements
- Focus states visible and styled to match the design
- Color is never the only differentiator

### 4. Spacing Refinement

- All spacing from the token scale — no arbitrary values
- Proximity creating correct groupings
- Generous whitespace around important elements
- No orphaned headings or widowed lines

### 5. Edge Cases

- Long text truncation or wrapping
- Short text doesn't look empty
- Large/small numbers display correctly
- Responsive behavior at all breakpoints

### 6. Craft Details

- Icon consistency (same style, same weight)
- Border radius consistency throughout
- Tabular figures on all numeric data
- Letter-spacing on ALL-CAPS text (0.02-0.05em)
- Number alignment in tables and lists

## Polish Checklist

Before finishing, verify each item:

- [ ] Squint test passes — hierarchy visible when blurred
- [ ] All interactive elements have hover, focus, active, disabled states
- [ ] Empty state is designed, not an afterthought
- [ ] Error states are helpful, not just red text
- [ ] No orphaned headings or widowed lines
- [ ] Spacing is consistent throughout — all from token scale
- [ ] Numbers align properly in tables/lists
- [ ] Animations feel smooth, not janky
- [ ] Nothing looks broken at mobile widths
- [ ] The signature element still lands after all the detail work

## Output

Update the artifact in `workspace/artifact/` in place.

Append your polish notes to `workspace/build-notes.md` — document any decisions that deviated from or extended the greenprint. Do NOT modify the greenprint itself; it's a read-only spec at this point.
