---
name: forge:status
description: Show detailed FORGE workflow progress and current phase status
argument-hint: "[optional: verbose flag]"
disable-model-invocation: true
---

# FORGE Status Command

Show detailed progress of the current FORGE workflow.

## Usage

```bash
/forge:status           # Show current status
/forge:status --verbose # Show detailed status with artifacts
```

## Output

Displays:
- Current phase in the 10-phase workflow
- Completed phases with artifact links
- Pending phases
- Blockers or issues
- Recommendations for next steps
