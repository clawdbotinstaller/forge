---
name: forge:learn
description: Capture patterns, learnings, and update documentation after workflow completion. Auto-triggers with insights at 5% context.
argument-hint: "[what was solved]"
---

# /forge:learn

Continuous learning with pattern extraction and CLAUDE.md updates. This command captures knowledge from completed work to make future work easier.

## Purpose

Document solved problems as reusable knowledge. This command captures patterns, learnings, and solutions for future reference.

**Auto-triggers with**: `/forge:insights` (which runs usage report + learn) at 5% context remaining.

## Process

### 1. Identify What Was Solved

- What problem did you solve?
- What approach did you take?
- What patterns emerged?
- What would you do differently?

### 2. Capture to Memory System

**Patterns** (`.claude/memory/patterns/`):
```json
{
  "pattern_id": "uuid",
  "name": "pattern-name",
  "category": "frontend|backend|design|architecture",
  "context": "when to use",
  "implementation": "how to implement",
  "example": "code example",
  "success_rate": 0.95,
  "source_files": ["file1.tsx"],
  "extracted_at": "2026-02-10T12:00:00Z"
}
```

**Learnings** (`.claude/memory/learnings/`):
```json
{
  "learning_id": "uuid",
  "type": "success|failure|insight|anti-pattern",
  "title": "Brief title",
  "context": "What we were trying to do",
  "what_happened": "What actually happened",
  "why": "Root cause analysis",
  "action": "What to do in the future",
  "confidence": "high|medium|low",
  "extracted_at": "2026-02-10T12:00:00Z"
}
```

**Decisions** (`.claude/memory/decisions/`):
```json
{
  "decision_id": "uuid",
  "decision": "what was decided",
  "context": "why",
  "consequences": ["expected outcomes"],
  "status": "accepted|pending|rejected",
  "date": "2026-02-10",
  "reversibility": "high|medium|low"
}
```

### 3. Update Knowledge Graph

- Link related entities
- Document relationships
- Tag with technologies
- Update temporal facts

### 4. Document in Solutions Directory

Also document in `docs/solutions/`:
```
docs/solutions/
├── performance-issues/
├── debugging-patterns/
├── configuration-fixes/
├── integration-issues/
└── deployment-issues/
```

Each solution file should have YAML frontmatter:
```yaml
---
title: "Solution Title"
category: performance-issues
tags: [react, performance]
module: ComponentName
date: 2026-02-10
---
```

### 5. Update CLAUDE.md

Auto-update project documentation with:
- New patterns discovered
- Updated conventions
- Learnings from failures
- Architecture decisions

### 6. Cleanup

Remove temp files and markers after successful capture.

## Auto-Trigger Behavior

### When Learn Runs Automatically

1. **Via `/forge:insights`**: When `/forge:insights` runs, it calls learn automatically
2. **Post-Workflow**: After `/forge:build` completes successfully
3. **Context Threshold**: PreCompact hook at 5% context remaining → runs `/forge:insights` (which runs both usage report + learn)

### Context Threshold Auto-Trigger (5%)

When the PreCompact hook detects context at 5% or lower:
1. It creates marker file `.claude/memory/.forge_insights_pending`
2. On next session start or command execution, `/forge:insights` runs
3. `/forge:insights` runs `/insights` (usage report) then `/forge:learn` (knowledge capture)
4. Both commands execute automatically without user intervention

### Marker Files

The system creates a single marker file:
- `.claude/memory/.forge_insights_pending` → Run `/forge:insights` (which runs both usage report + learn)

## Integration with `/forge:insights`

When the context threshold (5%) triggers auto-execution:
1. `/forge:insights` runs - it calls `/insights` (usage report) then `/forge:learn` (knowledge capture)
2. Both update their respective knowledge stores
3. Marker file is cleaned up

**Execution Order**:
```
Context hits 5%
    ↓
PreCompact hook creates marker
    ↓
Next session/command triggers:
    ↓
/forge:insights
    ↓
Run /insights (built-in usage report)
    ↓
Run /forge:learn (knowledge capture)
    ↓
Update memory + knowledge graph
    ↓
Clean up marker
```

**What Each Component Does**:
- `/insights` - Claude Code built-in that analyzes your usage patterns, session history, and provides insights report
- `/forge:learn` - Custom command that extracts patterns/learnings and saves to `.claude/memory/`

## Outputs

- Patterns in `.claude/memory/patterns/`
- Learnings in `.claude/memory/learnings/`
- Decisions in `.claude/memory/decisions/`
- Solutions in `docs/solutions/`
- Updated CLAUDE.md

## Compounding Effect

Each workflow makes future work easier:
- First: 95 min (research + solve + document)
- Second: 10 min (search + apply)
- Third: 2 min (pattern known)

## Usage

```bash
# Manual invocation
/forge:learn "Implemented user authentication with JWT"

# Auto-triggered via insights
/forge:insights

# Check what was learned
ls .claude/memory/patterns/
ls .claude/memory/learnings/
```

## Output Confirmation

Confirm what was captured:
- ✅ Patterns documented: N
- ✅ Learnings recorded: N
- ✅ Decisions archived: N
- ✅ Solutions added: N
- ✅ Knowledge graph updated
- ✅ CLAUDE.md updated
- ✅ Marker files cleaned up

## Manual Override

To run learn without insights:
```bash
/forge:learn "what was solved"
```

To prevent auto-trigger (create this file):
```bash
touch .claude/memory/.skip_auto_learn
```

## Required Skill

**REQUIRED:** `@forge-learn`
