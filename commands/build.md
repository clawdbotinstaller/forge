---
name: forge:build
description: Execute implementation plans with subagent-driven development
argument-hint: "[plan reference or skip if following workflow]"
---

# /forge:build

Execute implementation plans with subagent-driven development and TDD.

## Usage

```bash
/forge:build                       # Execute current plan
/forge:build docs/plans/plan.md    # Execute specific plan
```

## Process

1. **Read plan** - Extract tasks
2. **Dispatch implementer** - Per task
3. **Spec review** - Verify compliance
4. **Code quality review** - Karthy check
5. **Iterate** - Until all tasks complete

## TDD Enforcement

- Write failing test FIRST
- Make minimal change to pass
- Refactor while green

## Next Steps

After build:
- `/forge:test` - Run comprehensive tests

## Required Skill

**REQUIRED:** `@forge-build`
