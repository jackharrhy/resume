#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

typst compile "$SCRIPT_DIR/resume.typ" "$SCRIPT_DIR/resume.pdf"
