# FORGE Master Plugin

**Comprehensive 10-phase development workflow** combining the best of Arkived, Superpowers, Design-Forge, and BMAD methodologies. Fully self-contained with 36 skills, 25 commands, 18 agents, and 6 lifecycle hooks.

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

### Workflow Commands
| Command | Purpose |
|---------|---------|
| `/forge:start` | **Start full 10-phase workflow** (auto-detects workspace) |
| `/forge:quick` | Streamlined workflow for rapid dev |
| `/forge:brainstorm` | Multi-agent exploration with Karpathy debate |
| `/forge:research` | BMAD-style parallel research |
| `/forge:design` | Stitch-powered UI generation |
| `/forge:plan` | Surgical planning with TDD |
| `/forge:test` | **Create tests BEFORE building (test-first)** |
| `/forge:build` | Execute with Ralph Loop or subagents |
| `/forge:validate` | Evidence-based validation |
| `/forge:review` | Parallel specialized review |
| `/forge:learn` | Pattern capture & CLAUDE.md update |

### Testing Commands
| Command | Purpose |
|---------|---------|
| `/forge:debug` | Standalone debugging (outside main flow) |
| `/forge:ralph` | Ralph Loop for large iterative tasks |
| `/forge:verify` | Verification before completion |

### Utility Commands
| Command | Purpose |
|---------|---------|
| `/forge:help` | Show status, recommend next steps |
| `/forge:status` | Show detailed progress |
| `/forge:personalize` | Customize FORGE for your project |
| `/forge:deepen` | Deepen-plan mode for complex features |
| `/forge:deepen-plan` | Parallel research enhancement for plans |
| `/forge:swarm` | Run agent team in parallel mode (default) |
| `/forge:swarm --sequential` | Run agent team sequentially |
| `/forge:resolve-todos` | Parallel TODO resolution |
| `/forge:audit-agent-native` | Audit for agent-native patterns |

### Testing Commands
| Command | Purpose |
|---------|---------|
| `/forge:test-browser` | Browser-based E2E testing |
| `/forge:test-xcode` | iOS simulator testing |
| `/forge:feature-video` | Record feature walkthrough videos |
| `/forge:verify` | Evidence-based verification |

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

# Personalize FORGE for your project
/forge:personalize       # Customize configuration, hooks, skills
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

Then debaters argue best approach with Karpathy guidelines.

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
| `PostToolUse/lint-check` | After source edit | Run linter |
| `PreToolUse/block-env-edits` | Before sensitive file edit | Warn about .env, .pem files |
| `PreToolUse/block-lockfile-edits` | Before lock file edit | Warn about lock file changes |
| `SessionStart/forge-init` | New session | Detect workspace, suggest FORGE |
| `PreCompact/insights-trigger` | Context at 5% or below | Trigger `/forge:learn` on next session |

**Hooks are personalizable per project** - customize in `.claude/hooks/`

### 6. Subagent-Driven Development (Included from Superpowers)
**Full superpowers integration - no external dependency needed**

Build phase uses fresh subagent per task + two-stage review:
1. Dispatch implementer (using included `subagent-driven-development` skill)
2. Spec compliance review
3. Code quality review (Karpathy-focused)
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

### 8. Dynamic Skill Loading
Auto-loads skills based on task type:
- `.tsx` → `@frontend-design`, `@vercel-react-best-practices`
- `animation` → `@interaction-design`, `@12-principles-of-animation`
- `API` → `@cloudflare-full-stack-integration`
- etc.

### 9. Comprehensive Test Phase
**WHOLE PHASE dedicated to testing** because testing is critical for verifying actual success:
- Unit test creation (if missing)
- Integration test creation
- Browser/visual regression tests
- Coverage requirements
- Performance benchmarks

### 10. Continuous Learning
Learn phase:
- Extracts patterns to `.claude/memory/patterns/`
- Captures learnings to `.claude/memory/learnings/`
- Records decisions to `.claude/memory/decisions/`
- Updates CLAUDE.md with new knowledge
- Updates metrics for workflow improvement

## Agent Teams

### Why Use Agent Teams Over Subagents?

Agent teams provide **reliability through parallelism** and **defined success criteria**:

| Aspect | Agent Teams | Subagents |
|--------|-------------|-----------|
| **Reliability** | Multiple agents verify work; consensus reduces errors | Single agent; higher chance of oversight |
| **Success Criteria** | Explicit criteria defined upfront; team validates against it | Often implicit; agent declares completion |
| **Speed** | Parallel execution for independent tasks | Sequential execution |
| **Coverage** | Multiple perspectives (security, performance, UX) | Single perspective |
| **Failure Detection** | Cross-agent verification catches issues | Self-declared success may miss issues |

### When to Use Agent Teams

Use agent teams for **parallel work** where multiple perspectives accelerate exploration:

| Phase | Use Case | Agents Spawned |
|-------|----------|----------------|
| **Brainstorm** | Explore multiple approaches simultaneously | 4+ explorers + debaters |
| **Research** | Gather information from multiple sources | repo-analyst, best-practices-researcher, docs-researcher |
| **Review** | Parallel specialized review | security-sentinel, performance-oracle, architecture-strategist, simplicity-reviewer |
| **Deepen-Plan** | Complex feature decomposition | planner, architect, risk-analyzer |

### When to Use Subagents

Use subagents for **sequential work** requiring focused implementation:

| Phase | Use Case | Why Subagents |
|-------|----------|---------------|
| **Build** | Implement planned features | Fresh context per task; surgical precision |
| **Debug** | Root cause investigation | Deep focus on single problem; state accumulation |

### Team Size Constraints

**Maximum 10 agents per team** - This constraint ensures:
- Manageable coordination overhead
- Clear communication channels
- Efficient consensus building
- Resource efficiency

For large tasks, break into sub-tasks each with ≤10 agents.

## Skill Integration Map

### Phase-Based Skill Auto-Triggering

| Phase | Auto-Triggered Skills | Purpose |
|-------|----------------------|---------|
| **Initialize** | `forge-config`, `forge-init` | Setup and personalization |
| **Brainstorm** | `brainstorming`, `compound-docs` | Exploration, debate |
| **Research** | `context7` (auto-query), `compound-docs` | Documentation, best practices |
| **Design** | `forge-stitch-master`, `forge-design-system`, `frontend-design` | UI generation |
| **Plan** | `writing-plans`, `test-driven-development` | Surgical planning with TDD |
| **Test** | `test-driven-development` | Test creation |
| **Build** | `subagent-driven-development`, `writing-plans` | Implementation |
| **Validate** | `verification-before-completion` | Evidence-based validation |
| **Review** | `frontend-design` (UI), `code-simplicity-reviewer` | Quality assurance |
| **Learn** | `compound-docs`, `claude-automation-recommender` | Pattern capture |

### Phase Handoff Documentation

Each phase produces artifacts that trigger skills in the next phase:

```
brainstorm.md ──► research.md ──► design.md ──► plan.md ──► tests.md ──► build
     │               │               │              │            │          │
     ▼               ▼               ▼              ▼            ▼          ▼
brainstorming   context7-query   stitch-master  writing-plans   TDD     subagent-DD
```

**Handoff Contract:**
- Each phase validates input artifacts from previous phase
- Missing artifacts trigger automatic re-run of previous phase
- Skills auto-load based on artifact content (e.g., `.tsx` mentions trigger frontend skills)

## Ralph Loop Integration

### How Ralph Loop Prevents Hallucination

The Ralph Loop is a **completion promise pattern** that eliminates false success declarations:

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Define    │────►│  Implement  │────►│    Test     │────►│   Verify    │
│  Success    │     │   (Agent)   │     │  (Ralph)    │     │  (Promise)  │
│  Criteria   │     │             │     │             │     │             │
└─────────────┘     └─────────────┘     └──────┬──────┘     └──────┬──────┘
                                               │                    │
                                               └────────┬───────────┘
                                                        │
                                               ┌────────▼────────┐
                                               │  Tests Pass?    │
                                               │  Yes → Complete │
                                               │  No  → Iterate  │
                                               └─────────────────┘
```

### Completion Promise Pattern

1. **Define Success Criteria** (before implementation):
   - Specific test cases that must pass
   - Behavioral requirements
   - Performance thresholds

2. **Implementation** (subagent or main):
   - Agent implements feature
   - Does NOT declare completion

3. **Automated Testing** (Ralph):
   - Tests run automatically
   - Results are objective pass/fail

4. **Verification Loop**:
   - **Pass**: Task truly complete
   - **Fail**: Ralph returns to implementation with failure details
   - **Iterate** until tests pass

### Ralph Loop Benefits

| Problem | Ralph Solution |
|---------|---------------|
| "I think it's done" | Objective test results |
| Missed edge cases | Comprehensive test suite required |
| Partial implementation | Iteration until all tests pass |
| Hallucinated features | Evidence-based completion |

## Swarm Mode

### Default: Parallel Execution (Swarm)

By default, FORGE runs agent teams in **parallel (swarm) mode**:

```bash
/forge:swarm "complex feature"     # Parallel execution (default)
/forge:brainstorm "idea"           # Implicitly uses swarm
/forge:research                    # Implicitly uses swarm
```

**Benefits of Swarm Mode:**
- Faster completion through parallel work
- Multiple simultaneous perspectives
- Cross-pollination of ideas
- Efficient resource utilization

### Sequential Mode

Use `--sequential` flag when order matters:

```bash
/forge:swarm --sequential "step-by-step task"
```

**When to Use Sequential Mode:**
- Dependencies between tasks
- Cumulative state (each step builds on previous)
- Debugging (state accumulation helps)
- Resource constraints (avoid overwhelming system)

### Mode Comparison

| Aspect | Swarm (Parallel) | Sequential |
|--------|------------------|------------|
| **Speed** | Faster for independent tasks | Slower, but predictable |
| **Use Case** | Brainstorm, research, review | Build, debug, dependent tasks |
| **Coordination** | Requires merge step | Linear flow |
| **Default For** | `/forge:brainstorm`, `/forge:research` | `/forge:build` (subagent tasks) |

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
  },
  "swarm": {
    "default_mode": "parallel",
    "max_agents_per_team": 10
  },
  "ralph_loop": {
    "enabled": true,
    "max_iterations": 5,
    "require_tests_before_build": true
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
│   │   ├── forge-config.md      # Configuration system
│   │   ├── forge-context.md     # Progressive context
│   │   ├── forge-memory.md      # Memory integration
│   │   ├── forge-init.md        # Initialization phase
│   │   └── forge-skill-router.md # Auto-skill loading
│   ├── workflows/           # Phase orchestrators (12 skills)
│   │   ├── forge-brainstorm.md
│   │   ├── forge-research.md
│   │   ├── forge-design.md
│   │   ├── forge-plan.md
│   │   ├── forge-build.md
│   │   ├── forge-test.md         # COMPREHENSIVE TEST SUITE
│   │   ├── forge-validate.md
│   │   ├── forge-review.md
│   │   ├── forge-learn.md
│   │   ├── forge-help.md
│   │   ├── forge-ralph.md        # Ralph Loop integration
│   │   └── forge-personalize.md  # Project customization
│   ├── agents/              # Specialized subagents (12+ agents)
│   │   ├── brainstormer.md       # Core: Multi-angle exploration
│   │   ├── researcher.md         # Core: Parallel research
│   │   ├── builder.md            # Core: TDD implementation
│   │   ├── archivist.md          # Core: Pattern extraction
│   │   ├── security-reviewer.md  # Core: Security audit
│   │   ├── arkived-orchestrator.md   # Arkived: Workflow orchestration
│   │   ├── design-reviewer.md        # Arkived: UI/UX validation
│   │   ├── docs-maintainer.md        # Arkived: Documentation sync
│   │   ├── latex-validator.md        # Arkived: Math content validation
│   │   ├── mass-change.md            # Arkived: Batch refactoring
│   │   ├── performance-guardian.md   # Arkived: Performance optimization
│   │   └── skill-router.md           # Arkived: Task classification
│   ├── superpowers/         # Integrated superpowers skills
│   │   ├── writing-plans.md
│   │   ├── test-driven-development.md
│   │   ├── systematic-debugging.md
│   │   ├── verification-before-completion.md
│   │   └── subagent-driven-development.md
│   ├── design-forge/        # Design-to-code skills (7 skills)
│   │   ├── forge-design-system.md
│   │   ├── forge-stitch-master.md
│   │   ├── forge-react-generator.md
│   │   ├── forge-quality-auditor.md
│   │   ├── forge-orchestrator.md
│   │   ├── forge-cloudflare-integrator.md
│   │   └── forge-arkived-bridge.md
│   ├── arkived-agents/      # Review agents (6 agents)
│   │   ├── performance-oracle.md
│   │   ├── julik-frontend-races-reviewer.md
│   │   ├── security-sentinel.md
│   │   ├── pattern-recognition-specialist.md
│   │   ├── code-simplicity-reviewer.md
│   │   └── architecture-strategist.md
│   └── arkived-skills/      # Additional skills (4 skills)
│       ├── frontend-design.md      # Distinctive UI creation
│       ├── brainstorming.md        # Design exploration
│       ├── compound-docs.md        # Knowledge capture
│       └── claude-automation-recommender.md  # Personalization helper
├── commands/                # Slash commands (24 commands)
│   ├── start.md              # Initialize 10-phase workflow
│   ├── brainstorm.md         # Multi-agent exploration
│   ├── research.md           # BMAD-style parallel research
│   ├── design.md             # Stitch-powered UI generation
│   ├── plan.md               # Surgical planning with TDD
│   ├── deepen-plan.md        # Parallel research enhancement
│   ├── test.md               # Create tests BEFORE building
│   ├── build.md              # Execute with Ralph Loop
│   ├── validate.md           # Evidence-based validation
│   ├── review.md             # Parallel specialized review
│   ├── learn.md              # Pattern capture & knowledge
│   ├── help.md               # Show status, recommend steps
│   ├── quick.md              # Streamlined workflow
│   ├── ralph.md              # Ralph Loop for large tasks
│   ├── debug.md              # Standalone debugging
│   ├── personalize.md        # Customize FORGE
│   ├── status.md             # Detailed progress
│   ├── verify.md             # Evidence-based verification
│   ├── deepen.md             # Deepen-plan alias
│   ├── swarm.md              # Parallel/sequential agent teams
│   ├── resolve-todos.md      # Parallel TODO resolution
│   ├── test-browser.md       # Browser E2E testing
│   ├── test-xcode.md         # iOS simulator testing
│   ├── feature-video.md      # Record walkthrough videos
│   └── audit-agent-native.md # Audit agent-native patterns
└── scripts/                 # Helper scripts
    ├── quality-gate.sh      # Validation gates
    ├── artifact-manager.sh  # Artifact lifecycle
    └── learn-extractor.sh   # Pattern extraction
```

## Consolidation Sources

FORGE brings together the best from:

| Source | What FORGE Incorporates |
|--------|------------------------|
| **Arkived** | ✅ FULLY INTEGRATED: All 29+ compound-engineering agents seamlessly called by FORGE workflows. Review agents (performance-oracle, security-sentinel, architecture-strategist) auto-spawned in `/forge:review`. Research agents (best-practices-researcher, pattern-recognition-specialist) auto-spawned in `/forge:research`. Brainstorming agents auto-spawned in `/forge:brainstorm`. |
| **Superpowers** | ✅ FULLY INTEGRATED: Writing-plans, subagent-driven-development, systematic-debugging, TDD, verification |
| **BMAD Method** | Progressive context, implementation readiness checks, project-context.md, parallel research |
| **SLFG** | Multi-agent debate, Karpathy enforcement throughout, file-based agent communication |
| **Design-Forge** | ✅ FULLY INTEGRATED: Stitch integration, design system compliance, React generation, quality auditing, Cloudflare integration |

## How the Integration Works

**Seamless Agent Orchestration:**

When you run `/forge:brainstorm`, FORGE automatically spawns:
- `pattern-recognition-specialist` (compound-engineering) - analyzes codebase patterns
- `best-practices-researcher` (compound-engineering) - researches industry standards
- `brainstormer` (FORGE native) - explores technical approaches

When you run `/forge:review`, FORGE automatically spawns:
- `security-sentinel` (compound-engineering) - security audit
- `performance-oracle` (compound-engineering) - performance analysis
- `architecture-strategist` (compound-engineering) - architecture compliance
- `code-simplicity-reviewer` (compound-engineering) - YAGNI/complexity check

When you run `/forge:research`, FORGE automatically spawns:
- `repo-research-analyst` (compound-engineering) - codebase pattern analysis
- `best-practices-researcher` (compound-engineering) - external best practices
- `framework-docs-researcher` (compound-engineering) - documentation gathering
- `git-history-analyzer` (compound-engineering) - code archaeology

**Single Command Namespace:**
- `/forge:start` - Entry point (auto-detects workspace, runs full workflow)
- `/forge:brainstorm` → Spawns FORGE + compound-engineering agents
- `/forge:research` → Spawns compound-engineering research agents
- `/forge:design` → Uses design-forge skills
- `/forge:plan` → Uses superpowers planning
- `/forge:test` → Uses superpowers TDD
- `/forge:build` → Uses superpowers subagent-driven-development
- `/forge:validate` → Uses superpowers verification
- `/forge:review` → Spawns FORGE + compound-engineering review agents
- `/forge:learn` → Captures patterns to memory
- `/forge:debug` → Standalone debug (superpowers systematic-debugging)

**One Unified Experience:**
You don't need to know which plugin provides what. Just use `/forge:*` commands and the right agents, skills, and tools are automatically orchestrated.

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
