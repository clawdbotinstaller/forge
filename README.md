# FORGE Master Plugin

**Comprehensive 10-phase development workflow** combining the best of Arkived, Superpowers, and BMAD methodologies. With hooks, initialization, and standalone debugging.

## Philosophy

**"Knowledge compounds"** - Each workflow makes future work easier. Through progressive context building, Karpathy-guided debate, and continuous learning, FORGE creates a compounding knowledge system.

## 10-Phase Workflow (Test-First)

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│ Initialize  │ -> │ Brainstorm  │ -> │  Research   │ -> │   Design    │
│   (Setup)   │    │  (Explore)  │    │  (Validate) │    │   (Stitch)  │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
                                                              │
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│    Learn    │ <- │   Review    │ <- │  Validate   │ <- │    Build    │
│  (Capture)  │    │  (Parallel) │    │ (Evidence)  │    │ (Ralph/Sub) │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
                         ↑                                    ↑
                         │                                    │
                    ┌─────────────┐                     ┌─────────────┐
                    │    Test     │  <- TESTS CREATED   │ Test Gates  │
                    │   (First)   │     BEFORE BUILD    │  (Passing)  │
                    └─────────────┘                     └─────────────┘
```

**Test-First Workflow:** Tests are created AFTER Plan and BEFORE Build. This enables Ralph Loop to iterate until tests pass, preventing false success declarations.

## Commands

### Entry Points
| Command | Purpose |
|---------|---------|
| `/forge:start` | **Start full 10-phase workflow** (auto-detects workspace) |
| `/forge:quick` | Streamlined workflow for rapid dev |
| `/forge:debug` | Standalone debugging (outside main flow) |

### Phase Commands (10 phases)
| Command | Purpose |
|---------|---------|
| `/forge:brainstorm` | Multi-agent exploration with Karpathy debate |
| `/forge:research` | BMAD-style parallel research |
| `/forge:design` | Stitch-powered UI generation |
| `/forge:plan` | Surgical planning with TDD |
| `/forge:test` | **Create tests BEFORE building (test-first)** |
| `/forge:build` | Execute with Ralph Loop or subagents |
| `/forge:validate` | Evidence-based validation |
| `/forge:review` | Parallel specialized review |
| `/forge:learn` | Pattern capture & CLAUDE.md update |

### Utility Commands
| Command | Purpose |
|---------|---------|
| `/forge:help` | Show status, recommend next steps |
| `/forge:ralph` | Ralph Loop for large iterative tasks |

## Quick Start

```bash
# Start full workflow (FORGE auto-detects workspace and guides you)
/forge:start "add user profile feature"

# Or run phases individually
/forge:brainstorm "add user profile feature"
/forge:research          # Continue from brainstorm
/forge:design            # Generate UI specs
/forge:plan              # Create implementation plan
/forge:test              # CREATE TESTS BEFORE BUILDING
/forge:build             # Execute plan (Ralph Loop iterates until tests pass)
/forge:validate          # Verify against requirements
/forge:review            # Code review
/forge:learn             # Capture patterns

# Debug a bug (standalone, outside main flow)
/forge:debug "Login timeout error"

# Quick mode for small changes
/forge:quick "fix login button color"

# Check status
/forge:help              # Detects current phase
/forge:status            # Show detailed progress
```

## Key Features

### 1. Karpathy Guidelines (Enforced Throughout)
- "Simpler is better" - Debate phase weights simplicity
- "Surgical precision" - Max 50 lines per edit
- "One logical change" - Each task focused
- "Evidence before assertions" - Required verification

### 2. Progressive Context Building (BMAD Pattern)
Each phase outputs documents that inform the next:
- `docs/forge/brainstorm.md` → Research
- `docs/forge/research.md` → Design
- `docs/forge/design.md` → Plan
- `docs/forge/plan.md` → Build
- etc.

Plus accumulating `docs/forge/project-context.md` as "constitution"

### 3. Multi-Agent Debate (SLFG Pattern)
Brainstorm phase spawns 4+ agents in parallel:
- Explorer 1: Technical feasibility
- Explorer 2: User experience
- Explorer 3: Pragmatism/simplicity
- Explorer 4: Risks/edge cases

Then debaters argue best approach with Karthy guidelines.

### 4. Initialization (Phase 0) - Personalized Setup
**Auto-detect workspace and configure FORGE**

`/forge:start` automatically:
1. Detects project type (React, Python, Rust, etc.)
2. Checks for existing FORGE state (resume or fresh start)
3. Personalizes configuration based on project
4. Suggests appropriate artifact level
5. Guides through all 10 phases interactively

### 5. Lifecycle Hooks (Personalizable)
**Automated actions triggered by events**

| Hook | Trigger | Action |
|------|---------|--------|
| `PostToolUse/format-on-save` | After file edit | Auto-format (prettier, black, etc.) |
| `PostToolUse/type-check` | After .ts/.tsx edit | Run TypeScript check |
| `PreToolUse/block-env-edits` | Before sensitive file edit | Warn about .env, .pem files |
| `SessionStart/forge-init` | New session | Detect workspace, suggest FORGE |

**Hooks are personalizable per project** - customize in `.claude/hooks/`

### 6. Subagent-Driven Development (Included from Superpowers)
**Full superpowers integration - no external dependency needed**

Build phase uses fresh subagent per task + two-stage review:
1. Dispatch implementer (using included `subagent-driven-development` skill)
2. Spec compliance review
3. Code quality review (Karthy-focused)
4. Iterate until approved

**Included superpowers skills:**
- `writing-plans`: Surgical implementation planning
- `test-driven-development`: TDD discipline (red-green-refactor)
- `systematic-debugging`: Root cause investigation
- `verification-before-completion`: Evidence-based validation
- `subagent-driven-development`: Fresh subagent per task + two-stage review

### 7. Standalone Debug Workflow
**`/forge:debug` - Outside the main 10-phase flow**

For bugs, test failures, or unexpected behavior:
```
Analyze → Reproduce → Fix → Verify
```

- Uses systematic-debugging skill
- 4-phase standalone workflow
- Does not affect main FORGE state
- Perfect for hotfixes

### 5. Dynamic Skill Loading
Auto-loads skills based on task type:
- `.tsx` → `@frontend-design`, `@vercel-react-best-practices`
- `animation` → `@interaction-design`, `@12-principles-of-animation`
- `API` → `@cloudflare-full-stack-integration`
- etc.

### 6. Comprehensive Test Phase
**WHOLE PHASE dedicated to testing** because testing is critical for verifying actual success:
- Unit test creation (if missing)
- Integration test creation
- Browser/visual regression tests
- Coverage requirements
- Performance benchmarks

### 7. Continuous Learning
Learn phase:
- Extracts patterns to `.claude/memory/patterns/`
- Captures learnings to `.claude/memory/learnings/`
- Records decisions to `.claude/memory/decisions/`
- Updates CLAUDE.md with new knowledge
- Updates metrics for workflow improvement

## Configuration

**Location:** `~/.claude/forge/config.json` (user) or `.claude/forge/config.json` (project)

```json
{
  "artifact_level": "intelligent",
  "quality_gates": {
    "enabled": true,
    "gates": ["implementation_ready", "validation_passed"]
  },
  "karpathy_guidelines": {
    "enforced": true,
    "max_lines_per_edit": 50
  },
  "phases": {
    "brainstorm": { "agent_count": 4, "debate_enabled": true },
    "research": { "parallel_agents": 3 },
    "design": { "stitch_enabled": true },
    "plan": { "tdd_required": true },
    "build": { "teams": 3, "parallel": true },
    "test": { "coverage_threshold": 70 },
    "validate": { "evidence_required": true },
    "review": { "karthy_focused": true },
    "learn": { "auto_update_claude_md": true }
  }
}
```

## Artifact Levels

| Level | Artifacts | Best For |
|-------|-----------|----------|
| **Minimal** | Plan + Learn only | Quick fixes |
| **Intelligent** | Brainstorm, Plan, Test, Review, Learn | Most features |
| **Maximal** | All 9 phases + intermediate | Complex projects |

## Plugin Structure

```
forge@local/
├── .claude-plugin/
│   └── plugin.json          # Plugin manifest
├── skills/
│   ├── core/                # Universal framework
│   │   ├── forge-config.md  # Configuration system
│   │   ├── forge-context.md # Progressive context
│   │   └── forge-memory.md  # Memory integration
│   ├── workflows/           # Phase orchestrators
│   │   ├── forge-brainstorm.md
│   │   ├── forge-research.md
│   │   ├── forge-design.md
│   │   ├── forge-plan.md
│   │   ├── forge-build.md
│   │   ├── forge-test.md    # COMPREHENSIVE TEST SUITE
│   │   ├── forge-validate.md
│   │   ├── forge-review.md
│   │   ├── forge-learn.md
│   │   └── forge-help.md
│   ├── agents/              # Specialized subagents
│   │   ├── brainstormer.md
│   │   ├── researcher.md
│   │   ├── designer.md
│   │   ├── planner.md
│   │   ├── builder.md
│   │   ├── tester.md
│   │   ├── validator.md
│   │   ├── reviewer.md
│   │   └── archivist.md
│   └── superpowers/         # Integrated superpowers skills
│       ├── writing-plans.md
│       ├── test-driven-development.md
│       ├── systematic-debugging.md
│       ├── verification-before-completion.md
│       └── subagent-driven-development.md
├── commands/                # Slash commands
│   ├── brainstorm.md
│   ├── research.md
│   ├── design.md
│   ├── plan.md
│   ├── build.md
│   ├── test.md
│   ├── validate.md
│   ├── review.md
│   ├── learn.md
│   ├── help.md
│   └── quick.md
└── scripts/                 # Helper scripts
    ├── quality-gate.sh      # Validation gates
    ├── artifact-manager.sh  # Artifact lifecycle
    └── learn-extractor.sh   # Pattern extraction
```

## Consolidation Sources

FORGE brings together the best from:

| Source | What FORGE Incorporates |
|--------|------------------------|
| **Arkived** | `/arkived:*` commands, compounding philosophy, parallel subagents |
| **Superpowers** | ✅ FULLY INTEGRATED: Writing-plans, subagent-driven-development, systematic-debugging, TDD, verification (1,309 lines) |
| **BMAD Method** | Progressive context, implementation readiness checks, project-context.md, parallel research |
| **SLFG** | Multi-agent debate, Karthy enforcement throughout, file-based agent communication |
| **Design-Forge** | Stitch integration, design system compliance, React generation |

## Success Metrics

Track in `.claude/memory/forge/metrics.json`:

```json
{
  "workflows_completed": 12,
  "tests_pass_rate": 0.95,
  "karpathy_violations": 2,
  "patterns_extracted": 24,
  "learnings_captured": 18
}
```

## Backward Compatibility

During transition, `/arkived:*` commands continue to work:
- `/arkived:brainstorm` → Phase 1
- `/arkived:plan` → Phase 4
- `/arkived:work` → Phase 5
- `/arkived:review` → Phase 8
- `/arkived:compound` → Full workflow

## Contributing

This is a personal master plugin. Modify skills and agents as your workflow evolves.

## License

Personal use only.
