#!/bin/bash
# PostToolUse Hook: Type Check on Save
# Runs TypeScript type checking after .ts/.tsx edits
# Personalize: Adjust timeout or add other type checkers

set -e

PLUGIN_ROOT="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/../.." && pwd)}"

FILE="$1"

# Only run on TypeScript files
if [[ "$FILE" =~ \.(ts|tsx)$ ]]; then
  # Check if tsconfig.json exists
  if [ -f "tsconfig.json" ]; then
    # Run type check (with timeout to prevent hanging)
    timeout 30s npx tsc --noEmit 2>/dev/null || true
  fi
fi
