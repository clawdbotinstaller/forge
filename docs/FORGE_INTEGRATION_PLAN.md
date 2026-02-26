# FORGE Complete Integration Plan

**Date:** 2026-02-25
**Goal:** Consolidate Superpowers, Arkived, and Design-Forge into FORGE

---

## Part 1: Agents to Integrate (7 Arkived Agents)

**Source:** `~/exam-prep-platform/compound-engineering-plugin/plugins/compound-engineering/agents/arkived/`

| Agent | Purpose | FORGE Phase |
|-------|---------|-------------|
| `arkived-orchestrator` | Workflow orchestration with Arkived context | Initialize |
| `design-reviewer` | UI/UX review for Engineering Library design system | Design/Review |
| `latex-validator` | Math content validation for exam questions | Build/Validate |
| `mass-change` | Safe codebase-wide refactoring scripts | Standalone `/forge:mass-change` |
| `docs-maintainer` | Documentation drift detection and sync | Learn |
| `performance-guardian` | React/Cloudflare performance optimization | Review |
| `skill-router` | Task classification and routing | Initialize |

---

## Part 2: Commands to Integrate (14 Arkived Commands)

**Source:** `~/exam-prep-platform/compound-engineering-plugin/plugins/compound-engineering/commands/`

| Command | Purpose | FORGE Mapping |
|---------|---------|---------------|
| `/lfg` | Full autonomous workflow | `/forge:start` |
| `/slfg` | Swarm-enabled LFG | `/forge:start --swarm` |
| `/brainstorm` | Design exploration | `/forge:brainstorm` |
| `/plan` | Implementation planning | `/forge:plan` |
| `/deepen-plan` | Parallel research enhancement | `/forge:deepen-plan` |
| `/work` | Execute with agents | `/forge:build` |
| `/review` | Code review | `/forge:review` |
| `/resolve-todo-parallel` | Parallel TODO resolution | `/forge:resolve-todos` |
| `/compound` | Knowledge capture | `/forge:learn` |
| `/insights` | Usage report + compound | Auto-trigger at 5% context |
| `/test-browser` | Browser testing | `/forge:test-browser` |
| `/test-xcode` | iOS testing | `/forge:test-xcode` |
| `/feature-video` | Record walkthrough videos | `/forge:feature-video` |
| `/agent-native-audit` | Audit for agent-native patterns | `/forge:audit-agent-native` |

---

## Part 3: Skills to Integrate (38 Total)

### A. Local Skills from Exam Prep (17)
**Source:** `~/exam-prep-platform/.claude/skills/`

| Skill | Category | FORGE Phase |
|-------|----------|-------------|
| `12-principles-of-animation` | Animation | Design/Validate |
| `arkived-slfg` | Workflow | All |
| `arkived-workflow` | Workflow | All |
| `baseline-ui` | Quality | Validate |
| `canvas-design` | Design | Design |
| `design-lab` | Design | Design |
| `fixing-accessibility` | Quality | Build/Validate |
| `fixing-metadata` | Quality | Build |
| `fixing-motion-performance` | Quality | Build |
| `frontend-design` | Design | Design |
| `interaction-design` | Animation | Design/Build |
| `interface-design` | Design | Design |
| `markdown-editor` | Utility | - |
| `swiftui-ui-patterns` | Design | Design (iOS) |
| `ui-ux-pro-max` | Design | Design |
| `wcag-audit-patterns` | Quality | Validate |
| `web-design-guidelines` | Quality | Validate |

### B. Superpowers Skills (14)
**Source:** `~/.claude/plugins/cache/claude-plugins-official/superpowers/4.3.1/skills/`

| Skill | Category | FORGE Phase |
|-------|----------|-------------|
| `using-superpowers` | Entry | All (discipline) |
| `brainstorming` | Workflow | Brainstorm |
| `writing-plans` | Planning | Plan |
| `executing-plans` | Execution | Build |
| `subagent-driven-development` | Execution | Build |
| `test-driven-development` | Quality | Test |
| `requesting-code-review` | Quality | Review |
| `receiving-code-review` | Quality | Review |
| `finishing-a-development-branch` | Git | Post-Build |
| `systematic-debugging` | Debugging | Standalone `/forge:debug` |
| `verification-before-completion` | Quality | All gates |
| `dispatching-parallel-agents` | Execution | Research/Build |
| `writing-skills` | Meta | Standalone `/forge:skill-dev` |
| `using-git-worktrees` | Git | Initialize |

### C. Design-Forge Skills (7)
**Source:** `~/.claude/plugins/design-forge/skills/`

| Skill | Category | FORGE Phase |
|-------|----------|-------------|
| `forge-orchestrator` | Workflow | All |
| `forge-design-system` | Design | Design |
| `forge-stitch-master` | Design | Design |
| `forge-react-generator` | Build | Build |
| `forge-quality-auditor` | Quality | Validate |
| `forge-cloudflare-integrator` | Build | Build |
| `forge-arkived-bridge` | Integration | Build |

---

## Part 4: FORGE 10-Phase Workflow Integration

### Phase 0: Initialize
- **skill-router** (Arkived agent) - Task classification
- **arkived-orchestrator** (Arkived agent) - Context injection
- **using-git-worktrees** (Superpowers) - Worktree creation
- **using-superpowers** (Superpowers) - Entry discipline

### Phase 1: Brainstorm
- **brainstorming** (Superpowers)
- **arkived-workflow** (Local)
- **design-lab** (Local) - If UI project

### Phase 2: Research
- **dispatching-parallel-agents** (Superpowers)
- **arkived-slfg** (Local) - If swarm mode

### Phase 3: Design
- **frontend-design** (Local)
- **interface-design** (Local)
- **ui-ux-pro-max** (Local)
- **forge-design-system** (Design-Forge)
- **forge-stitch-master** (Design-Forge) - Stitch MCP
- **design-reviewer** (Arkived agent)
- **12-principles-of-animation** (Local)
- **interaction-design** (Local)

### Phase 4: Plan
- **writing-plans** (Superpowers)
- **deepen-plan** (Arkived command) - 40+ agent enhancement
- **swarm-planner** (Superpowers) - If parallel execution

### Phase 5: Test
- **test-driven-development** (Superpowers) - RED phase
- **latex-validator** (Arkived agent) - If math content

### Phase 6: Build
- **subagent-driven-development** (Superpowers)
- **executing-plans** (Superpowers)
- **forge-react-generator** (Design-Forge)
- **forge-cloudflare-integrator** (Design-Forge)
- **forge-arkived-bridge** (Design-Forge)
- **design-reviewer** (Arkived agent)
- **performance-guardian** (Arkived agent)
- **latex-validator** (Arkived agent)
- **fixing-accessibility** (Local)
- **fixing-motion-performance** (Local)

### Phase 7: Validate
- **verification-before-completion** (Superpowers)
- **forge-quality-auditor** (Design-Forge)
- **baseline-ui** (Local)
- **wcag-audit-patterns** (Local)
- **test-browser** (Arkived command)
- **web-design-guidelines** (Local)

### Phase 8: Review
- **requesting-code-review** (Superpowers)
- **receiving-code-review** (Superpowers)
- **design-reviewer** (Arkived agent)
- **performance-guardian** (Arkived agent)
- **resolve-todo-parallel** (Arkived command)

### Phase 9: Learn
- **compound** (Arkived command)
- **docs-maintainer** (Arkived agent)
- **insights** (Arkived command) - Auto-trigger at 5%
- **writing-skills** (Superpowers) - If creating skills

---

## Part 5: Files to Create

### Agents (7 files)
```
agents/arkived/
├── arkived-orchestrator.md
├── design-reviewer.md
├── docs-maintainer.md
├── latex-validator.md
├── mass-change.md
├── performance-guardian.md
└── skill-router.md
```

### Skills (38 files - copy from sources)
```
skills/local/          (17 from exam prep)
skills/superpowers/    (14 from superpowers plugin)
skills/design-forge/   (7 from design-forge plugin)
```

### Commands (14 files - integrate into workflow)
```
commands/
├── start.md          (lfg/slfg merged)
├── brainstorm.md
├── plan.md
├── deepen-plan.md
├── test.md
├── build.md
├── validate.md
├── review.md
├── learn.md
├── resolve-todos.md
├── test-browser.md
├── test-xcode.md
├── feature-video.md
├── mass-change.md
└── skill-dev.md      (from writing-skills)
```

---

## Part 6: Implementation Order

### Phase 1: Foundation
1. Copy 7 Arkived agents
2. Copy 14 Superpowers skills (core discipline)
3. Create `/forge:start` command (lfg/slfg merge)

### Phase 2: Core Workflows
4. Copy remaining Superpowers skills
5. Create Plan, Test, Build, Validate, Review, Learn phases
6. Integrate deepen-plan into Plan phase

### Phase 3: Local Skills
7. Copy 17 local skills from exam prep
8. Integrate into appropriate phases

### Phase 4: Design-Forge
9. Copy 7 Design-Forge skills
10. Create `/forge:design` command
11. Integrate 9-phase design workflow

### Phase 5: Polish
12. Create remaining utility commands
13. Test all integrations
14. Create aliases for backward compatibility

---

## Part 7: Command Aliases (Backward Compatibility)

```
/arkived:lfg              → /forge:start
/arkived:slfg             → /forge:start --swarm
/arkived:brainstorm       → /forge:brainstorm
/arkived:plan             → /forge:plan
/arkived:deepen-plan      → /forge:deepen-plan
/arkived:work             → /forge:build
/arkived:review           → /forge:review
/arkived:compound         → /forge:learn
/arkived:test-browser     → /forge:test-browser
/superpowers:writing-plans → /forge:plan
/design-forge:forge       → /forge:design-full
```

---

*Total Components: 7 agents + 14 commands + 38 skills = 59 items to integrate*
