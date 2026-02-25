---
name: forge:brainstorm
description: Explore approaches and validate ideas through multi-agent dialogue with Karpathy-guided debate
argument-hint: "[feature idea or problem to explore]"
---

# /forge:brainstorm

Explore ideas and approaches through collaborative dialogue and multi-agent debate.

## Usage

```bash
/forge:brainstorm "add user profile page"
/forge:brainstorm "fix navigation bug"
/forge:brainstorm "improve loading performance"
```

## Process

1. **Multi-agent exploration** - 4 agents explore from different angles
2. **Karthy-guided debate** - Agents argue best approach
3. **Approach selection** - Arbiter decides based on guidelines
4. **Document decisions** - Write to `docs/forge/brainstorm.md`

## Next Steps

After brainstorm, continue with:
- `/forge:research` - Validate approach with best practices
- `/forge:design` - Skip to UI/UX generation
- `/forge:plan` - Skip to implementation planning

## Required Skill

**REQUIRED:** `@forge-brainstorm`
