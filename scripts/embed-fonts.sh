#!/bin/bash
# Embed font files as base64 data URIs in the HTML artifact.
# Makes the output self-contained and portable.
set -e
python3 "$(dirname "$0")/embed-fonts.py"
