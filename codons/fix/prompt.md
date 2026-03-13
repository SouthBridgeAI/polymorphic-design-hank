# Apply Fixes

Your job is to apply specific, surgical fixes to the artifact. You are an **editor**, not an author. The artifact already exists and is mostly good — you are making targeted improvements from a short work order.

## What You Have

- `workspace/fixes.md` — **Your primary input.** A numbered list of specific changes to make. Read this FIRST.
- `workspace/artifact/` — The current artifact. Read the code.
- `workspace/artifact-backup/` — A snapshot before your changes (created automatically). Do not modify this.
- `workspace/greenprint.md` — The design intent. Reference for any judgment calls.
- `workspace/feedback.md` — The full review audit, if you need more context on a specific fix.

## Process

1. **Read `workspace/fixes.md`.** This is your work order — typically 3-5 specific changes.
2. **Read the artifact code.** Understand what exists.
3. **Apply each fix in order.** For each item in fixes.md:
   - Find the exact location in the code (CSS selector, HTML element, line)
   - Make the specific change described
   - Move to the next item
4. **Verify.** After all fixes, re-read the modified sections to confirm they're correct.

## CRITICAL CONSTRAINT: No Rewrites

**You MUST edit the existing file. Do NOT rewrite the artifact from scratch. Do NOT regenerate large sections.**

- **Read the file first**, then use targeted edits (find-and-replace, inserting lines, changing values)
- If fixes.md says "font-size: 51px → 64px" — change that specific value
- If fixes.md says "add an SVG timeline after the .timeline section" — insert that specific element
- If fixes.md says "remove the color override on .dramatic-cost" — remove that specific rule

**What you should NOT do:**
- Write an entirely new HTML/CSS file from memory
- Regenerate a section because it's "easier to rewrite"
- Change things that aren't in fixes.md
- "Improve" things you notice that weren't flagged

**The backup at `workspace/artifact-backup/` exists so you can verify your edits are targeted. If your file differs from the backup in ways NOT described in fixes.md, you've gone too far.**

## Output

Save the improved artifact to `workspace/artifact/` (overwrite the existing files).

Do NOT modify the greenprint. If you need to note what was changed, append briefly to `workspace/build-notes.md`.
