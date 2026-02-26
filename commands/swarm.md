---
name: forge:swarm
description: Run agent team in parallel or sequential mode
argument-hint: "[task description] [--sequential]"
---

# FORGE Swarm Command

Run agent teams in parallel (default) or sequential mode.

## Usage

```bash
# Parallel mode (default)
/forge:swarm "complex feature"

# Sequential mode
/forge:swarm "step-by-step task" --sequential
```

## Modes

**Parallel (Default):**
- Faster for independent tasks
- Multiple simultaneous perspectives
- Best for: brainstorm, research, review

**Sequential (--sequential flag):**
- Order matters, dependencies between tasks
- Cumulative state helps
- Best for: build, debug, dependent tasks
