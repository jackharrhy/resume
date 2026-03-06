#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FONTS_DIR="$SCRIPT_DIR/fonts"

# Fetch Noto Sans if not already present
if [ ! -d "$FONTS_DIR/NotoSans" ]; then
  echo "Fetching Noto Sans..."
  mkdir -p "$FONTS_DIR"
  curl -sL "https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSans-v2.015/NotoSans-v2.015.zip" -o "$FONTS_DIR/NotoSans.zip"
  unzip -qo "$FONTS_DIR/NotoSans.zip" -d "$FONTS_DIR/NotoSans"
  rm "$FONTS_DIR/NotoSans.zip"
fi

typst compile --font-path "$FONTS_DIR/NotoSans/NotoSans/hinted/ttf" "$SCRIPT_DIR/resume.typ" "$SCRIPT_DIR/resume.pdf"
