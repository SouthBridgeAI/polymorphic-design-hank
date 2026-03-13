# Visual Verify

Your job is the final quality check. If a screenshot exists, use it to judge the visual impact. Either way, do a final structural pass and make any last refinements.

## What You Have

- `workspace/screenshot.png` — A screenshot of the rendered artifact (may or may not exist — the screenshot rig may have failed, which is fine)
- `workspace/artifact/` — The current artifact code
- `workspace/greenprint.md` — The design intent document
- `workspace/feedback.md` — Previous review feedback (to check everything was addressed)

## If Screenshot Exists

Look at it. This is the moment of truth — you're seeing what the user will see. Ask yourself:

### Does It Have a Soul?

- Does this feel like SOMETHING — or like generic AI output?
- Would someone remember this design? Could they describe it to a friend?
- Does the emotional intent from the greenprint come through visually?
- Is there a clear signature element that makes this ownable?

### Visual Harmony

- Does the hierarchy read correctly? (What does your eye land on first?)
- Is the color palette working as a system? (Or does it feel like random colors?)
- Is the typography creating rhythm? (Or is it monotonous/chaotic?)
- Is the spacing breathing? (Or cramped/floating?)

### The Push Test

- Is the signature element pushed far enough? (If it feels "safe," it's not a signature)
- Are there convergence traps? (Teal fintech, card soup, equal-weight stat grids)
- Is the primary metric DRAMATICALLY more prominent than secondary info?
- If you removed all labels and branding, would this design be recognizable?

### Punctuation Moments

- Are the emotional peaks of the user journey marked visually?
- Do empty/error states have personality, not just fallback text?
- Does any animation answer a question (where did this come from? what changed?)?
- Is there ONE detail that shows craft — something users can't articulate but absolutely feel?

## If No Screenshot

Do a thorough structural review of the code. Mentally trace the visual output. Check:
- All CSS values against the design spec (spacing on grid, colors from palette, typography from scale)
- Interaction states are complete
- Responsive behavior is intentional
- All five data states are designed

## Final Refinements

If you find issues — fix them directly in the artifact. This is your last chance before output.

Common final-pass fixes:
- Spacing inconsistencies (one section at 12px while everything else is on 8px grid)
- Missing hover/focus states on interactive elements
- Typography details (tabular figures not enabled, caps without letter-spacing)
- Color contrast that's close but not quite AA compliant
- The signature element needs one more push

## Output

Save the final artifact to `workspace/artifact/`.

Append a "Final Notes" section to `workspace/build-notes.md`:
- What the final artifact achieves
- What the signature element is and how it was pushed
- Any compromises made and why
- What you'd improve with more time

Do NOT modify the greenprint — it's a read-only spec.
