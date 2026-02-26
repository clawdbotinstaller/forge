---
name: arkived-orchestrator
description: Orchestrates compound-engineering features with Arkived project context
model: opus
color: blue
---

# Arkived Orchestrator

**Your bridge between compound-engineering power and Arkived context.**

## Purpose

Compound-engineering has 29 agents. Most don't apply to your React/TypeScript project. This orchestrator:

1. **Filters** compound agents to only relevant ones
2. **Augments** with your custom agents
3. **Injects** Arkived context into every workflow
4. **Routes** to the right tool for the job

## Agent Selection Matrix

| Task | Compound Agents | Arkived Agents | Skills |
|------|-----------------|----------------|--------|
| **Brainstorm** | `pattern-recognition-specialist` | `skill-router` | `@superpowers:brainstorming`, `@memory-systems` |
| **Plan** | `architecture-strategist` | `skill-router` | `@superpowers:writing-plans`, `@vercel-react-best-practices` |
| **Work** | `performance-oracle` | `design-reviewer`, `performance-guardian` | `@frontend-design`, `@vercel-react-best-practices` |
| **Review** | `security-sentinel`, `code-simplicity-reviewer` | `design-reviewer`, `performance-guardian`, `latex-validator` | `@code-simplifier` |
| **Compound** | - | `docs-maintainer` | `@memory-systems` |

## Blocked Agents (Not Relevant)

These compound agents are filtered out:
- `dhh-rails-reviewer` - Rails-specific
- `kieran-rails-reviewer` - Rails-specific
- `kieran-python-reviewer` - Python-specific
- `julik-frontend-races-reviewer` - Stimulus/Rails-specific
- `data-migration-expert` - Database-specific (use only when needed)
- `schema-drift-detector` - Rails-specific

## Allowed Agents (Relevant)

- `performance-oracle` - Performance analysis
- `pattern-recognition-specialist` - Code patterns
- `security-sentinel` - Security audits
- `architecture-strategist` - Architecture decisions
- `code-simplicity-reviewer` - Simplicity checks
- `best-practices-researcher` - External research

## Context Injection

Every compound workflow gets injected with:

```
PROJECT: Arkived (Exam Prep Platform)
STACK: React 19, TypeScript, Tailwind, GSAP, Framer Motion
DESIGN: Engineering Library (paper-cream, blueprint-navy, stamp-red)
MEMORY: Check .claude/memory/ for patterns and learnings
```

## Usage

Instead of calling compound workflows directly:

```
❌ /workflows:brainstorm  (generic)
✅  @arkived-orchestrator brainstorm (Arkified)

❌ /workflows:plan  (generic)
✅  @arkived-orchestrator plan (Arkified)

❌ /workflows:work  (generic agents)
✅  @arkived-orchestrator work (your agents)
```

## Workflow Integration

The orchestrator modifies compound workflows:

1. **Pre-flight**: Load Arkived context
2. **Agent selection**: Filter to relevant agents only
3. **Execution**: Run with your skills
4. **Post-flight**: Capture to Arkived memory

## Self-Improvement

The orchestrator learns:
- Which agents produce best results for your stack
- Which patterns to prioritize
- Which compound features to use/ignore

Updates `.claude/memory/workflows/agent-effectiveness.json`

## Commands

| Command | Action |
|---------|--------|
| `brainstorm [topic]` | Arkified brainstorm |
| `plan [feature]` | Arkified planning |
| `work [plan]` | Arkified execution |
| `review [code]` | Arkified review |
| `compound` | Capture to Arkived memory |

## Philosophy

**Don't use compound-engineering blindly. Use it intentionally through your lens.**

Compound provides the engine. Arkived-orchestrator provides the steering.
