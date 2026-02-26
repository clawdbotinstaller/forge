#!/bin/bash
# SessionStart Hook: FORGE Initialization
# Detects workspace state and initializes FORGE workflow
# Personalize: Adjust detection logic for your project structure

set -e

PLUGIN_ROOT="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/../.." && pwd)}"
MEMORY_DIR="${PLUGIN_ROOT}/.claude/memory"

echo "🔥 FORGE Initialization"
echo "======================"

# Check if this is a new FORGE workspace
if [ ! -d "${PLUGIN_ROOT}/.claude/forge" ]; then
  echo ""
  echo "Welcome to FORGE!"
  echo ""
  echo "This appears to be a new workspace. FORGE can help you:"
  echo "  • Plan and build features systematically"
  echo "  • Ensure code quality with reviews"
  echo "  • Capture learnings for future work"
  echo ""

  # Detect project type
  if [ -f "package.json" ]; then
    PROJECT_TYPE="JavaScript/Node.js"
  elif [ -f "requirements.txt" ] || [ -f "pyproject.toml" ]; then
    PROJECT_TYPE="Python"
  elif [ -f "Cargo.toml" ]; then
    PROJECT_TYPE="Rust"
  elif [ -f "go.mod" ]; then
    PROJECT_TYPE="Go"
  else
    PROJECT_TYPE="Unknown"
  fi

  echo "Detected project type: $PROJECT_TYPE"
  echo ""
  echo "To start FORGE, run: /forge:start"
  echo ""
fi

# Check for pending insights marker
if [ -f "${MEMORY_DIR}/.insights_pending/active" ]; then
  echo ""
  echo "📊 Pending Insights Available"
  echo "Run /forge:learn to process captured knowledge from previous session"
  echo ""
fi

# Check for in-progress FORGE workflow
if [ -f "${PLUGIN_ROOT}/.claude/forge/state.json" ]; then
  CURRENT_PHASE=$(cat "${PLUGIN_ROOT}/.claude/forge/state.json" | grep -o '"current_phase":"[^"]*"' | cut -d'"' -f4)

  if [ ! -z "$CURRENT_PHASE" ]; then
    echo ""
    echo "📋 Resuming FORGE Workflow"
    echo "Current phase: $CURRENT_PHASE"
    echo ""
    echo "To continue, run: /forge:start"
    echo ""
  fi
fi

# Create memory directories if they don't exist
mkdir -p "${MEMORY_DIR}/entities"
mkdir -p "${MEMORY_DIR}/patterns"
mkdir -p "${MEMORY_DIR}/learnings"
mkdir -p "${MEMORY_DIR}/session-snapshots"

echo ""
echo "✅ FORGE ready"
echo ""

exit 0
