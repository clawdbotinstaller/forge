---
name: forge:research
description: Validate approaches with BMAD-style parallel research subagents
argument-hint: "[topic or approach to research]"
---

# /forge:research

Validate approaches with BMAD-style parallel research subagents.

## Usage

```bash
/forge:research "best practices for React forms"
/forge:research "authentication patterns"
/forge:research                    # Continue from brainstorm
```

## Process

1. **Spawn research agents** - 4 agents in parallel
2. **Parallel investigation** - Patterns, best practices, ecosystem, risks
3. **Synthesize findings** - Combine agent outputs
4. **Document research** - Write to `docs/forge/research.md`

## Agents

- `pattern-researcher` - Codebase patterns
- `best-practices-researcher` - Industry standards
- `ecosystem-researcher` - Libraries and tools
- `risk-researcher` - Pitfalls and anti-patterns

## Next Steps

After research:
- `/forge:design` - Create UI/UX specifications
- `/forge:plan` - Skip to implementation planning

## Required Skill

**REQUIRED:** `@forge-research`
