#!/bin/bash
# Screenshot the artifact using Chrome headless mode.
# No dependencies needed — uses the system Chrome installation.
set -e

HTML_FILE=$(find workspace/artifact -name "*.html" -type f 2>/dev/null | head -1)

if [ -z "$HTML_FILE" ]; then
  echo "No HTML file found in workspace/artifact/ — skipping screenshot"
  exit 0
fi

ABSOLUTE_PATH="$(cd "$(dirname "$HTML_FILE")" && pwd)/$(basename "$HTML_FILE")"

# Find Chrome
CHROME=""
if [ -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ]; then
  CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
elif command -v google-chrome &>/dev/null; then
  CHROME="google-chrome"
elif command -v chromium-browser &>/dev/null; then
  CHROME="chromium-browser"
elif command -v chromium &>/dev/null; then
  CHROME="chromium"
fi

if [ -z "$CHROME" ]; then
  echo "No Chrome/Chromium found — skipping screenshot"
  exit 1
fi

echo "Found Chrome: $CHROME"
echo "Screenshotting: $HTML_FILE"

"$CHROME" --headless=new \
  --screenshot="workspace/screenshot.png" \
  --window-size=1440,900 \
  --disable-gpu \
  --no-sandbox \
  --disable-dev-shm-usage \
  "file://${ABSOLUTE_PATH}" 2>/dev/null

if [ -f "workspace/screenshot.png" ]; then
  echo "Screenshot saved to workspace/screenshot.png ($(wc -c < workspace/screenshot.png) bytes)"
else
  echo "Screenshot failed"
  exit 1
fi
