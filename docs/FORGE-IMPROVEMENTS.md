# FORGE Plugin - Specific Improvements & BMAD Integration Plan

**Date:** 2026-02-26
**Purpose:** Actionable recommendations for improving FORGE based on BMAD architecture analysis

---

## Executive Summary

After comprehensive analysis of BMAD's 5 modules (Core, BMM, CIS, BMB, TEA) and FORGE's current state, here are the specific improvements needed. **Key finding:** FORGE should NOT wholesale port BMAD modules. Instead, adopt specific patterns from each module while preserving FORGE's superior workflow orchestration.

---

## 1. Critical Gaps in FORGE (Must Fix)

### 1.1 Testing Architecture (Priority: CRITICAL)

**Current State:**
- FORGE has a `/forge:test` command but minimal test infrastructure
- No dedicated test agents
- No risk-based testing approach
- No CI/CD integration

**BMAD TEA Advantage:**
- Master Test Architect persona (Murat) with risk-based testing
- 7 progressive learning sessions (Teach Me Testing)
- ATDD (Acceptance Test-Driven Development) workflows
- Contract testing with Pact
- Multi-platform CI/CD support

**Specific Implementation:**

1. **Create Test Architect Agent** (`agents/test-architect.md`)
```yaml
---
name: test-architect
description: Risk-based testing specialist for comprehensive QA
model: opus
color: orange
tools: [Read, Glob, Grep, Edit, Write, Bash, MCP]
triggers: [test, QA, risk, coverage, ATDD]
---
```

2. **Add Test Skills** (`skills/quality/test-framework.md`)
- Risk-based test design (probability x impact scoring)
- ATDD workflows (failing acceptance tests first)
- Test framework setup (Playwright, Cypress, pytest)
- CI/CD pipeline configuration

3. **Extend `/forge:test` Command**
```markdown
## New Test Subcommands
/forge:test risk          # Risk-based test design
/forge:test atdd          # Generate failing acceptance tests
/forge:test ci            # Configure CI/CD pipeline
/forge:test review        # Test quality audit (0-100 score)
```

### 1.2 Menu-Driven Agent Interaction (Priority: HIGH)

**Current State:**
- Agents trigger but don't present options
- Users must know what to ask

**BMAD Advantage:**
- Every agent presents interactive menu
- Clear options with descriptions
- Guided workflow progression

**Specific Implementation:**

Update all agent prompts to include menu pattern:
```markdown
## Menu System

When activated, present options:

| Option | Description |
|--------|-------------|
| [1] TDD | Test-Driven Development mode |
| [2] Debug | Systematic debugging |
| [3] Review | Code review |

Wait for user selection before proceeding.
```

### 1.3 State Tracking in Documents (Priority: HIGH)

**Current State:**
- State stored in `state.json`
- Not visible in workflow documents

**BMAD Advantage:**
- YAML frontmatter tracks progress
- Documents are self-describing state machines
- Easy to resume from any step

**Specific Implementation:**

Add frontmatter tracking to workflow documents:
```yaml
---
phase: build
status: in_progress
completed_tasks:
  - task-01-setup
  - task-02-api
pending_tasks:
  - task-03-ui
last_updated: 2026-02-26T18:30:00Z
---
```

---

## 2. Module Port Decisions

### 2.1 TEA (Test Architecture) - PARTIAL PORT ✅

**Decision:** Port specific capabilities, not wholesale

**Port These:**
- Risk-based testing methodology
- ATDD workflows
- Test quality scoring (0-100)
- CI/CD configuration patterns
- Contract testing concepts

**Don't Port:**
- TEA Academy (7 learning sessions) - too heavy
- Murat persona complexity
- Multi-framework abstractions

**Files to Create:**
```
skills/quality/
├── risk-based-testing.md
├── atdd-workflow.md
├── test-review.md
└── ci-cd-setup.md

agents/test-architect.md
```

### 2.2 BMM (Business Methodology) - INSPIRATION ONLY ⚠️

**Decision:** Don't port module, adopt patterns

**Adopt These Patterns:**
- Document discovery protocol
- Configuration cascade (system → config → workflow → step)
- Variable resolution patterns

**Don't Port:**
- PM persona complexity
- Sprint ceremony workflows
- Velocity tracking

### 2.3 CIS (Creative Intelligence) - ALREADY COVERED ✅

**Decision:** FORGE's Stitch integration exceeds CIS

**FORGE Advantage:**
- Design-to-code pipeline
- Design system compliance
- React component generation

**No action needed.**

### 2.4 BMB (Builder) - CONCEPTUAL INSPIRATION ⚠️

**Decision:** Don't port, enhance existing

**FORGE Already Has:**
- `/forge:build` with subagent-driven development
- Ralph Loop for iteration

**Enhancement Ideas:**
- Add "Teach Me Building" workflow
- Progressive skill building for implementation

### 2.5 Core - ADOPT PATTERNS ✅

**Decision:** Adopt specific patterns into FORGE core

**Adopt:**
- Manifest-based discovery
- Workflow step architecture
- Frontmatter state tracking
- Configuration cascade

---

## 3. Specific File Changes

### 3.1 New Files to Create

```
agents/
├── test-architect.md          # Risk-based testing specialist
└── ci-specialist.md           # CI/CD pipeline expert

skills/quality/
├── risk-based-testing.md      # Probability x impact testing
├── atdd-workflow.md           # Acceptance TDD
├── test-automation.md         # Framework setup
├── test-review.md             # Quality audit
└── ci-cd-setup.md             # Pipeline configuration

skills/core/
├── menu-system.md             # Interactive agent menus
└── state-tracking.md          # Frontmatter state management

workflows/
├── test-phase.yaml            # Test-first workflow orchestration
└── ci-integration.yaml        # CI/CD workflow
```

### 3.2 Files to Modify

```
commands/test.md               # Add subcommands
commands/build.md              # Add test gate enforcement
commands/learn.md              # Add pattern extraction

hooks/SessionStart/forge-init.sh  # Add menu system init

settings.json                  # Add quality configuration
```

---

## 4. Implementation Phases

### Phase 1: Testing Foundation (Week 1)
- [ ] Create `agents/test-architect.md`
- [ ] Create `skills/quality/risk-based-testing.md`
- [ ] Extend `/forge:test` command
- [ ] Add test gate to `/forge:build`

### Phase 2: Agent Experience (Week 2)
- [ ] Add menu system to all agents
- [ ] Create `skills/core/menu-system.md`
- [ ] Update agent activation patterns

### Phase 3: State Management (Week 3)
- [ ] Add frontmatter state tracking
- [ ] Create `skills/core/state-tracking.md`
- [ ] Update workflow documents

### Phase 4: CI/CD Integration (Week 4)
- [ ] Create `agents/ci-specialist.md`
- [ ] Create `skills/quality/ci-cd-setup.md`
- [ ] Add CI workflow to commands

---

## 5. Testing Approach Comparison

| Aspect | FORGE Current | BMAD TEA | Recommended FORGE |
|--------|---------------|----------|-------------------|
| **Test Phase** | Dedicated phase | Integrated throughout | Keep dedicated + add TEA patterns |
| **Risk Analysis** | None | Probability x impact scoring | Add risk-based testing skill |
| **ATDD** | Manual | Automated workflow | Add ATDD workflow |
| **Test Quality** | Pass/fail | 0-100 scoring | Add quality audit |
| **CI/CD** | None | Multi-platform support | Add CI specialist agent |
| **Persona** | None | Master Test Architect | Simpler test architect |

---

## 6. Key Takeaways

1. **Don't wholesale port BMAD** - It's too heavy, FORGE is leaner
2. **Testing is FORGE's biggest gap** - TEA patterns are critical
3. **Menu-driven UX improves usability** - Adopt from all BMAD modules
4. **State tracking enables resumption** - Frontmatter pattern is powerful
5. **Keep FORGE's strengths** - 10-phase workflow, Ralph Loop, Stitch integration

---

## 7. Next Steps

1. Implement Phase 1 (Testing Foundation) immediately
2. Create test-architect agent and risk-based-testing skill
3. Update `/forge:test` command with new subcommands
4. Test with real project
5. Iterate based on feedback

---

**Bottom Line:** FORGE should adopt BMAD's testing rigor and UX patterns while maintaining its streamlined 10-phase workflow. The TEA module's risk-based testing and ATDD workflows are the highest-value additions.
