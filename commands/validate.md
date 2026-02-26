---
name: forge:validate
description: Verify implementation against requirements with evidence-based validation
disable-model-invocation: true
---

# /forge:validate

Quality gates with evidence-based validation against acceptance criteria.

## Process

1. **Run verifications** - TypeScript, tests, build
2. **Gather evidence** - Command outputs
3. **Check criteria** - Against plan
4. **User approval** - If configured

## Validation Agents

- `functional-validator` - Requirements compliance
- `karpathy-validator` - Surgical precision
- `design-validator` - UI/UX specs

## Evidence Required

- TypeScript compiles
- Tests pass
- Design specs met
- Screenshots for UI

## Next Steps

After validate:
- `/forge:review` - Final code review

## Required Skill

**REQUIRED:** `@forge-validate`
