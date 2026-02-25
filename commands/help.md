---
name: forge:help
description: Show current FORGE workflow status and recommend next steps
argument-hint: "[optional: specific question]"
---

# /forge:help

Smart orchestrator that detects current workflow phase and recommends next steps.

## Usage

```bash
/forge:help              # Show status and recommendation
/forge:help --status     # Detailed progress view
/forge:help --reset      # Reset workflow state
```

## Display

Shows:
- Current phase (based on existing artifacts)
- Progress (completed and pending phases)
- Recommendation (next best action)
- Quick actions (common commands)

## Related Commands

- `/forge:status` - Detailed progress
- `/forge:next` - Advance to next phase
- `/forge:start` - Begin from current state

## Required Skill

**REQUIRED:** `@forge-help`
