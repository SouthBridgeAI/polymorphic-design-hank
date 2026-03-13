# Research & Enrich

Your job is to take the greenprint created by the previous step and deepen it with specific, actionable design decisions. You transform direction into commitment.

## What You Have

- `workspace/greenprint.md` — The design intent document. Read it carefully.
- `read_only_data_source/design-pack/` — Brand assets and aesthetic references (if provided). Look at every image in detail. These are the user's taste made visible.
- `read_only_data_source/context/` — The raw data. Understand its shape and structure — this affects what needs to be visualized or presented.

## What You Must Do

### 1. Deep-dive the Design Pack

If there's a design-pack, check `workspace/design-pack-inventory.md` for what's available. Look at every **image** in detail. For fonts, note what families are provided and their weights/styles. Ask:
- What do the brand assets communicate? (Colors, shapes, tone, personality)
- What do the aesthetic references have in common? What's the thread?
- What fonts are provided or referenced? What do they suggest about the user's taste?
- What's the overall aesthetic temperature? (Industrial? Warm? Minimal? Playful?)

Write what you found into the greenprint.

### 2. Commit to Specific Typography

Based on the emotional intent and any font references in the design-pack, choose specific fonts:

**Display/Heading font:** Name the exact font. Choose one with character that matches the intent.
- Geometric sans (Sora, Jura, Outfit, Space Grotesk) for modern, precise, technical
- Humanist sans (DM Sans, Manrope) for warm, readable
- Serif (Cardo, Lustria, Fraunces) for editorial, authoritative, distinctive
- Display (Space Mono, JetBrains Mono) for technical, code-centric

**Body font:** Name the exact font. Must be readable at body sizes.

**Monospace (if needed):** For code, numbers, technical data. JetBrains Mono or IBM Plex Mono are strong choices.

**Pairing principle:** Pair distinctive heading font with neutral body, or vice versa. Not two distinctive fonts.

Decide the modular scale ratio:
- 1.25 (major third): Subtle, professional
- 1.333 (perfect fourth): Balanced, versatile
- 1.5 (perfect fifth): Bold, dramatic

### 3. Commit to Color Palette

Build from HSL or OKLCH, not hex. Decide:

**Gray foundation (80% of the interface):**
- Warm gray (hint of yellow/brown) — calm, approachable
- Cool gray (hint of blue) — clinical, precise
- Neutral gray — stark, modernist

**Primary accent:** One color that carries meaning. Tied to the emotional intent.

**Semantic colors:** Danger, warning, success, info — choose hues that work with your gray and accent.

**Dark mode or light mode?** Decide based on the emotional intent, not convention.

### 4. Deepen the Content Architecture

The greenprint has a narrative arc. Now make it concrete:

- **Read the raw data/content deeply.** Not skimming — actually understanding the material. What are the key moments? What numbers or facts are dramatic enough to deserve typographic amplification?
- **Map specific content to visual treatment.** For each chapter/section in the narrative arc: what's the best way to present this? Prose? A visualization? An interactive element? A giant number? A quote?
- **Identify interactive opportunities.** What data can the user explore? What would a step-through control reveal? What would be more powerful as a Canvas/SVG visualization than as static text?
- **Find the emotional beats.** Where should the design create tension? Release? Wonder? Mark these concretely: "Section 3 should feel like the floor dropping out. Section 6 is the 'aha' — golden glow, maximum visual impact."

Update the Content Architecture section in the greenprint with specific, concrete directions the builder can follow.

### 5. Enrich the Signature Element

The greenprint already describes the signature element. Your job is to make it concrete:
- What exactly does it look like?
- What design pattern does it follow?
- What makes it unlike the standard approach?

Reference the punctuation library for inspiration:

**Celebration & Completion** — Disproportionate visual reward for actions (Superhuman's Inbox Zero, Things 3's checkbox)

**Data as Identity** — Statistics made personal and visual (GitHub's contribution graph, Spotify Wrapped)

**Metaphor & Materiality** — Physical metaphors that create intuition (Apple's Dynamic Island)

**Personality Injection** — Quality in the seams, small permissions to customize (Linear's craft details, Notion's page icons)

**Empty & Error States** — Attention monopolies used well (Mailchimp's Freddie, GitHub's 404)

**Motion as Meaning** — Animation that answers questions about spatial relationships (Linear's issue animation, iOS app launch)

**The Signature Element** — One thing pushed further than comfortable (Mercury's dark dashboard, Arc's vertical tabs)

### 6. Optional: Web Research

If web search tools are available, research:
- Specific design patterns relevant to the functional intent
- How other products solve the same core job-to-be-done
- Typography combinations that match the aesthetic direction
- Color palette inspiration related to the emotional intent

This is a bonus, not a requirement. The greenprint should be strong without it. Web research enriches — it doesn't replace the decisions already made.

## Output

Update `workspace/greenprint.md` with your findings. Add or enrich these sections:

- **Design Pack Analysis** — What you found in the brand assets and references
- **Typography** — Exact font names, scale ratio, pairing reasoning
- **Color** — Exact palette with HSL values, gray foundation, semantic colors, mode decision
- **Signature Element** — Concrete description of what it will look and feel like
- **Punctuation Moments** — Enriched with specific implementation ideas

Also create `workspace/references/` if you found specific reference images or patterns worth documenting.

### 7. Stress-Test the Typography Hierarchy

Before finalizing, walk through the type scale you committed to and check for visual dominance conflicts:

- **Heading vs quote:** If your H2 is 34px and your pull quote is 24px, that's a 1.4:1 ratio — too close. Pull quotes will visually compete with headings. Quotes should be at most 60% of the heading size (e.g., H2 at 34px → quotes at ~20px max).
- **Hero moments vs regular content:** Giant numbers ($165 at 85px) are fine as isolated dramatic moments. But if every section has a large typographic element, nothing stands out.
- **Body vs metadata:** Body at 17px and metadata at 14px is a 1.2:1 ratio — barely different. Consider whether metadata should drop to 12px for clearer separation.

Revise any sizes in the greenprint that create dominance conflicts. The builder will follow your spec exactly — make sure it works before it's built.

### 8. Stress-Test the Color Harmony

Check that ALL colors in your palette share the same emotional temperature:

- If the base is warm (cream, amber, kraft tan), then accent/variant backgrounds must also lean warm. A cool teal or sage green in a warm world feels like it belongs to a different design.
- Resolution/success green: if your world is warm, use a warm green (olive-leaning, yellow-green) not a cool green (teal, mint, sage).
- Severity colors can be cooler (blue for medium severity is fine) because severity is functional, not decorative. But backgrounds that large sections sit on must maintain temperature consistency.

Revise any colors in the greenprint that break the emotional register.

**After your work, the greenprint should contain everything a builder needs to start coding. No ambiguity. No "could be X or Y." Commitments.**
