#!/usr/bin/env python3
"""Embed font files as base64 data URIs in an HTML file."""

import re
import base64
import os
import sys
import glob

def find_html():
    files = glob.glob("workspace/artifact/*.html")
    return files[0] if files else None

def replace_font_url(match, html_dir):
    url = match.group(1)
    url = url.strip("'").strip('"')
    font_path = os.path.normpath(os.path.join(html_dir, url))

    if not os.path.exists(font_path):
        print(f"  SKIP (not found): {url}", file=sys.stderr)
        return match.group(0)

    ext = os.path.splitext(font_path)[1].lower()
    mime_types = {
        ".otf": "font/otf",
        ".woff": "font/woff",
        ".woff2": "font/woff2",
        ".ttf": "font/ttf",
    }
    mime = mime_types.get(ext, "application/octet-stream")

    with open(font_path, "rb") as ff:
        b64 = base64.b64encode(ff.read()).decode("ascii")

    size_kb = len(b64) * 3 / 4 / 1024
    print(f"  Embedded: {os.path.basename(font_path)} ({size_kb:.0f}KB)")

    return f"url('data:{mime};base64,{b64}')"

def main():
    html_file = find_html()
    if not html_file:
        print("No HTML file found in workspace/artifact/ — skipping font embedding")
        return

    html_dir = os.path.dirname(os.path.abspath(html_file))
    print(f"Embedding fonts in: {html_file}")

    with open(html_file, "r") as f:
        content = f.read()

    pattern = r"url\(['\"]?([^)]*?\.(?:otf|woff2?|ttf))['\"]?\)"
    new_content = re.sub(pattern, lambda m: replace_font_url(m, html_dir), content)

    with open(html_file, "w") as f:
        f.write(new_content)

    size_kb = os.path.getsize(html_file) / 1024
    print(f"Done. File size: {size_kb:.0f}KB")

if __name__ == "__main__":
    main()
