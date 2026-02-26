#!/bin/bash
# PostToolUse Hook: Lint Check
# Runs linter on modified source files
# Personalize: Adjust for your project's linter (eslint, prettier, black, etc.)

set -e

PLUGIN_ROOT="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/../.." && pwd)}"
FILE="$1"

# Only check source files
if [[ "$FILE" =~ \.(js|jsx|ts|tsx|json|md|css|scss|py|go|rs|java|rb)$ ]]; then
  cd "$PLUGIN_ROOT" || exit 0

  # JavaScript/TypeScript - ESLint
  if [[ "$FILE" =~ \.(js|jsx|ts|tsx)$ ]] && [ -f "package.json" ]; then
    if command -v npx &> /dev/null && [ -f ".eslintrc.js" ] || [ -f ".eslintrc.json" ] || [ -f ".eslintrc.yml" ]; then
      echo "Running ESLint on $FILE..."
      npx eslint "$FILE" --fix 2>/dev/null || true
    fi
  fi

  # Python - Black/Flake8
  if [[ "$FILE" =~ \.py$ ]]; then
    if command -v black &> /dev/null; then
      echo "Running Black on $FILE..."
      black "$FILE" 2>/dev/null || true
    fi
    if command -v flake8 &> /dev/null; then
      echo "Running Flake8 on $FILE..."
      flake8 "$FILE" 2>/dev/null || true
    fi
  fi

  # Go - gofmt
  if [[ "$FILE" =~ \.go$ ]]; then
    if command -v gofmt &> /dev/null; then
      echo "Running gofmt on $FILE..."
      gofmt -w "$FILE" 2>/dev/null || true
    fi
  fi

  # Rust - rustfmt
  if [[ "$FILE" =~ \.rs$ ]]; then
    if command -v rustfmt &> /dev/null; then
      echo "Running rustfmt on $FILE..."
      rustfmt "$FILE" 2>/dev/null || true
    fi
  fi
fi

exit 0
