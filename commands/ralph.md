---
name: forge:ralph
description: Iterative execution mode for large plans with clearly defined steps - prevents false success declarations
argument-hint: "[objective] --plan [path] --completion-promise [text] --max-iterations [n]"
---

# /forge:ralph

**Iterative execution for large plans** - Ralph Loop prevents false success declarations by running the same prompt repeatedly until objective completion is verified.

## When to Use

**Use Ralph Loop when:**
- Plan has 10+ steps
- Tests are clearly defined
- Success criteria is objective and verifiable
- Task will run for extended period (overnight, multiple hours)
- Risk of agent falsely declaring success is high

**Do NOT use when:**
- Design decisions required
- Success criteria is unclear or subjective
- Human judgment needed throughout
- One-shot operation

## Usage

```bash
/forge:ralph "Implement user authentication" \
  --plan docs/forge/plan.md \
  --completion-promise "ALL TESTS PASS" \
  --max-iterations 50
```

## Required Skill

**REQUIRED:** `@forge-ralph`

## How It Works

1. Same prompt fed repeatedly
2. Each iteration sees previous work
3. Verification runs each iteration
4. Only stops when promise detected
5. Prevents "I think I'm done" errors

## Why Ralph > Regular FORGE for Large Tasks

| Issue | Regular FORGE | Ralph Loop |
|-------|---------------|------------|
| False success | Possible at phase end | Prevented by iteration |
| Overnight tasks | Risk of incomplete work | Continuous verification |
| 10+ step plans | Easy to miss steps | Iterates until all done |
| Test verification | Once at phase end | Every iteration |

## Example: Overnight Migration

```bash
/forge:ralph "Complete database migration" \
  --plan docs/plans/migration.md \
  --completion-promise "MIGRATION VERIFIED: All data migrated, tests pass, rollback tested" \
  --max-iterations 100
```

## Integration with FORGE

Ralph Loop can replace or augment the Build phase:
```
Brainstorm → Research → Design → Plan → RALPH → Test → Validate → Review → Learn
```

## Related

- `/forge:plan` - Create the plan Ralph will execute
- `/forge:build` - Regular build (for smaller tasks)
- `/forge:test` - Verification (runs within Ralph iterations)
