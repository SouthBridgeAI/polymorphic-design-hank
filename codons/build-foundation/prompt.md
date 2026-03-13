# Build Foundation

Your job is to lay the structural bones of the artifact. You work from the greenprint. Your system prompt contains foundational design knowledge. **Be intentionally boring.** Get the structure right — character comes later.

## What You Have

- `workspace/greenprint.md` — The complete design document. Read it first.
- `read_only_data_source/context/` — Raw data the output needs to work with.
- `read_only_data_source/design-pack/` — Brand assets (logos, fonts) to incorporate if applicable.

## CRITICAL: Use Actual Brand Assets

**Do NOT recreate logos, icons, or brand imagery as hand-drawn SVG.** If the design-pack contains logo images (PNG, SVG, JPG), reference them directly with `<img>` tags using relative paths to `../read_only_data_source/design-pack/...`. The actual files exist and will be available. Hand-drawing brand marks always looks wrong — use the real files.

## The Format

Build a single self-contained `.html` file with inline CSS and JS. Use `<style>` and `<script>` tags. The file should open in any browser and look complete.

HTML with inline JavaScript is powerful — you can build interactive Canvas/SVG visualizations, animated transitions, step-through controls, IntersectionObserver scroll reveals, and explorable data all within a single file using vanilla JS.

Save to `workspace/artifact/index.html`.

## What to Build

Establish structure and hierarchy. Get the bones right.

1. **Design tokens** — CSS custom properties for your color scale (from greenprint), typography scale (using your modular ratio), spacing scale (8px-based), border radii (2-3 values). These tokens ARE the design system. Every value in the file should reference a token.
2. **Layout skeleton** — Major regions positioned correctly. Responsive structure. Navigation, sections, content areas all placed.
3. **Primary hierarchy** — The most important element unambiguously dominant. Secondary elements clearly subordinate. Use size, weight, and space — NOT color — to establish hierarchy.
4. **All content placed** — Typography in place. Data displayed in basic form. All sections populated with real content from the source data. Nothing left as placeholder.

## What to AVOID

- Custom visualizations (next codon handles this)
- The signature element (next codon handles this)
- Micro-interactions and animations
- Trying to be distinctive or creative
- Pushing colors or typography beyond the tokens

**This is working correctly if it looks almost boring.** Correct structure, clear hierarchy, all content present, generic appearance. The next codon will inject the soul.

## Output

Save to `workspace/artifact/index.html`.

Write a brief `workspace/build-notes.md` noting: what layout decisions you made, how hierarchy was established, any content that was tricky to place, and anything the next builder should know.
