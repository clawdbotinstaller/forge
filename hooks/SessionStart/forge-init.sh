#!/bin/bash
# SessionStart Hook: FORGE Initialization
# Detects workspace state and initializes FORGE workflow
# Personalize: Adjust detection logic for your project structure

echo "🔥 FORGE Initialization"
echo "======================"

# Check if this is a new FORGE workspace
if [ ! -d ".claude/forge" ]; then
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

# Check for in-progress FORGE workflow
if [ -f ".claude/forge/state.json" ]; then
  CURRENT_PHASE=$(cat .claude/forge/state.json | grep -o '"current_phase":"[^"]*"' | cut -d'"' -f4)

  if [ ! -z "$CURRENT_PHASE" ]; then
    echo ""
    echo "📋 Resuming FORGE Workflow"
    echo "Current phase: $CURRENT_PHASE"
    echo ""
    echo "To continue, run: /forge:start"
    echo ""
  fi
fi

exit 0
