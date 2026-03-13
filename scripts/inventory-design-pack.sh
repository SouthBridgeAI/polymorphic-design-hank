#!/bin/bash
# Generate a concise inventory of the design-pack contents.
# Helps agents understand what's available without exploring 100+ files.
set -e

PACK_DIR="read_only_data_source/design-pack"
OUT="workspace/design-pack-inventory.md"

mkdir -p workspace

if [ ! -d "$PACK_DIR" ]; then
  echo "No design-pack found — skipping inventory"
  echo "# Design Pack Inventory\n\nNo design-pack was provided." > "$OUT"
  exit 0
fi

echo "# Design Pack Inventory" > "$OUT"
echo "" >> "$OUT"
echo "Auto-generated listing of \`read_only_data_source/design-pack/\`." >> "$OUT"
echo "" >> "$OUT"

# Images (the ones worth looking at)
echo "## Images" >> "$OUT"
find "$PACK_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.svg" -o -name "*.gif" -o -name "*.webp" \) | sort | while read -r f; do
  echo "- \`$f\`" >> "$OUT"
done
echo "" >> "$OUT"

# Font files (grouped by directory, deduplicated by base name)
echo "## Fonts" >> "$OUT"
find "$PACK_DIR" -type f \( -name "*.otf" -o -name "*.ttf" -o -name "*.woff" -o -name "*.woff2" \) | sort | while read -r f; do
  echo "- \`$f\`" >> "$OUT"
done
echo "" >> "$OUT"

# Other files (markdown, text, html, etc.)
echo "## Other Files" >> "$OUT"
find "$PACK_DIR" -type f \
  ! -name "*.png" ! -name "*.jpg" ! -name "*.jpeg" ! -name "*.svg" ! -name "*.gif" ! -name "*.webp" \
  ! -name "*.otf" ! -name "*.ttf" ! -name "*.woff" ! -name "*.woff2" \
  ! -name ".DS_Store" \
  | sort | while read -r f; do
  echo "- \`$f\`" >> "$OUT"
done

echo "Inventory written to $OUT"
