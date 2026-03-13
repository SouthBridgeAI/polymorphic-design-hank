#!/bin/bash
# Creates a template folder for a new design project.
# Usage: ./create-project.sh [folder-name]

set -e

FOLDER="${1:-my-project}"

if [ -d "$FOLDER" ]; then
  echo "Error: '$FOLDER' already exists."
  exit 1
fi

mkdir -p "$FOLDER/design-pack/fonts" "$FOLDER/design-pack/inspiration" "$FOLDER/context"

cat > "$FOLDER/instruction.md" << 'EOF'
# What to Make

<!-- Describe what you want. Can be one sentence or a full brief.
     The more you say about *why* and *how it should feel*,
     the better the output. -->



## Audience & Context

<!-- Who is this for? Where will they see it?
     A conference talk? A client pitch? A personal portfolio piece? -->



## Aesthetic Direction

<!-- What should it feel like? Reference specific things if you can.
     "Like a Stripe landing page" or "brutalist, lots of whitespace"
     or "warm, editorial, like a magazine feature."
     Drop reference images in design-pack/inspiration/ too. -->



## Content

<!-- If the output needs specific content (data, text, sections),
     put raw materials in the context/ folder and describe them here.
     Or leave blank and the pipeline will generate placeholder content. -->

EOF

echo "Created project at ./$FOLDER/"
echo ""
echo "Next steps:"
echo "  1. Edit $FOLDER/instruction.md with what you want"
echo "  2. (Optional) Drop fonts in $FOLDER/design-pack/fonts/"
echo "  3. (Optional) Drop inspiration images in $FOLDER/design-pack/inspiration/"
echo "  4. (Optional) Put raw content in $FOLDER/context/"
echo "  5. Run: ./design.sh $FOLDER"
