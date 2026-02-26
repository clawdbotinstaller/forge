#!/bin/bash
# FORGE UserPromptSubmit Hook
# Auto-triggers skill-router on relevant keywords

PLUGIN_ROOT="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/../.." && pwd)}"

# Get the prompt text (passed via environment or stdin)
PROMPT_TEXT="${CLAUDE_PROMPT_TEXT:-$(cat)}"

# Convert to lowercase for matching
PROMPT_LOWER=$(echo "${PROMPT_TEXT}" | tr '[:upper:]' '[:lower:]')

# Check for skill-router triggers
case "${PROMPT_LOWER}" in
  *"create component"*|*"new component"*|*"add component"*)
    echo "🎯 FORGE: Detected component creation request"
    echo "TIP: Use @skill-router for automatic frontend-design routing"
    ;;
  *"plan feature"*|*"design feature"*|*"implement feature"*)
    echo "🎯 FORGE: Detected feature planning request"
    echo "TIP: Use /forge:plan or @skill-router for workflow routing"
    ;;
  *"refactor"*|*"restructure"*)
    echo "🎯 FORGE: Detected refactoring request"
    echo "TIP: Use @code-simplifier or @mass-change for code improvements"
    ;;
  *"review code"*|*"code review"*)
    echo "🎯 FORGE: Detected code review request"
    echo "TIP: Use @security-reviewer for security-focused review"
    ;;
  *"optimize"*|*"performance"*|*"slow"*)
    echo "🎯 FORGE: Detected performance concern"
    echo "TIP: Use @performance-guardian for optimization analysis"
    ;;
  *"brainstorm"*|*"ideas"*|*"options"*)
    echo "🎯 FORGE: Detected brainstorming request"
    echo "TIP: Use /forge:brainstorm or @brainstormer for ideation"
    ;;
esac
