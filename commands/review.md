---
name: forge:review
description: Comprehensive code review with parallel specialized reviewers
disable-model-invocation: true
---

# /forge:review

Comprehensive code review with parallel specialized reviewers.

## Process

1. **Spawn reviewers** - In parallel
2. **Parallel review** - Different angles
3. **Collect findings** - Synthesize results
4. **Address issues** - If found

## Reviewers

- `karpathy-reviewer` - Surgical precision
- `design-reviewer` - UI/UX compliance
- `performance-reviewer` - Speed optimization
- `security-reviewer` - Security audit

## Karpathy Check

- Lines < 50 per edit
- One logical change
- No scope creep
- Evidence required

## Next Steps

After review:
- `/forge:learn` - Capture patterns and learnings

## Required Skill

**REQUIRED:** `@forge-review`
