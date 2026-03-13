#!/bin/bash
# Runs the Polymorphic Design pipeline on a project folder.
# Usage: ./design.sh <project-folder> [options]
#
# Examples:
#   ./design.sh ./my-project
#   ./design.sh ./my-project --fast           # All-Sonnet (cheaper, faster)
#   ./design.sh ./my-project --validate       # Dry run, no generation
#   ./design.sh ./my-project -n               # Fresh run (ignore previous)

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DATA_DIR="${1:?Usage: ./design.sh <project-folder> [--fast] [options]}"
shift

# Parse --fast flag
HANK_FILE="$SCRIPT_DIR/hank.json"
EXTRA_ARGS=()
for arg in "$@"; do
  if [ "$arg" = "--fast" ]; then
    HANK_FILE="$SCRIPT_DIR/hank-fast.json"
  else
    EXTRA_ARGS+=("$arg")
  fi
done

# Check prerequisites
if [ -z "$ANTHROPIC_API_KEY" ]; then
  echo "Error: ANTHROPIC_API_KEY environment variable must be set."
  echo "Get one at https://console.anthropic.com/"
  exit 1
fi

if ! command -v python3 &> /dev/null; then
  echo "Warning: python3 not found. Font embedding in the final output may not work."
  echo "Install Python 3: https://www.python.org/downloads/"
  echo ""
fi

# Check for Chrome (used for screenshot rig — optional)
CHROME_FOUND=false
if [ -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ] || \
   command -v google-chrome &>/dev/null || \
   command -v chromium-browser &>/dev/null || \
   command -v chromium &>/dev/null; then
  CHROME_FOUND=true
fi

if [ "$CHROME_FOUND" = false ]; then
  echo "Warning: No Chrome/Chromium found. Visual verification screenshot will be skipped."
  echo ""
fi

echo "╔══════════════════════════════════════════╗"
echo "║       Polymorphic Design v0.5.0          ║"
echo "╚══════════════════════════════════════════╝"
echo ""
if [ "$HANK_FILE" = "$SCRIPT_DIR/hank-fast.json" ]; then
  echo "Mode: Fast (all Sonnet)"
else
  echo "Mode: Standard (Opus + Sonnet)"
fi
echo "Data: $DATA_DIR"
echo ""

# Run the hank
npx hankweave "$HANK_FILE" "$DATA_DIR" "${EXTRA_ARGS[@]}"
