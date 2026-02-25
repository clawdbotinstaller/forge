---
name: forge:plan
description: Create surgical implementation plans with TDD and bite-sized tasks
argument-hint: "[feature to plan or skip if following workflow]"
---

# /forge:plan

Create surgical implementation plans with TDD discipline and Karthy guideline enforcement.

## Usage

```bash
/forge:plan "implement user profile page"
/forge:plan                        # Continue from design
/forge:plan --quick                # Minimal plan for quick mode
```

## Process

1. **Load design** - Use specifications
2. **Analyze dependencies** - Map file relationships
3. **Create task breakdown** - Bite-sized tasks
4. **Karthy review** - Ensure surgical precision
5. **Document plan** - Write to `docs/forge/plan.md`

## Output

Plan includes:
- Exact file paths
- Complete code examples
- TDD strategy per task
- Validation criteria

## Next Steps

After plan:
- `/forge:build` - Execute the plan

## Required Skill

**REQUIRED:** `@forge-plan`
