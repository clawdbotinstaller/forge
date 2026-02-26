---
name: forge:help
description: Show current FORGE workflow status, detect workspace state, and recommend next steps
argument-hint: "[optional: specific question]"
---

# /forge:help

Smart orchestrator that detects current workflow phase and recommends next steps.

## Usage

```bash
/forge:help              # Show status and recommendation
/forge:help --status     # Detailed progress view
/forge:help --reset      # Reset workflow state
/forge:help "how do I..." # Get help with specific topic
```

## Status Detection

The help command analyzes the workspace to determine current state:

### Detection Logic

```
Check for FORGE artifacts:
├── docs/forge/brainstorm.md exists? → Phase 1 complete
├── docs/forge/research.md exists?   → Phase 2 complete
├── docs/forge/design.md exists?     → Phase 3 complete
├── docs/forge/plan.md exists?       → Phase 4 complete
├── docs/forge/test.md exists?       → Phase 5 complete
├── docs/forge/build.md exists?      → Phase 6 complete
├── docs/forge/validate.md exists?   → Phase 7 complete
├── docs/forge/review.md exists?     → Phase 8 complete
└── docs/forge/learn.md exists?      → Phase 9 complete
```

### Workspace States

**New Workspace:**
```
Status: New Project
├── No FORGE artifacts found
├── No active workflow
└── Recommendation: Run /forge:start to begin
```

**In Progress:**
```
Status: In Progress - Phase 4: Plan
├── Phase 1: Brainstorm ✅ Complete
├── Phase 2: Research   ✅ Complete
├── Phase 3: Design     ✅ Complete
├── Phase 4: Plan       🔄 In Progress
│   └── Found: docs/forge/plan.md (draft)
├── Phase 5: Test       ⏳ Pending
├── Phase 6: Build      ⏳ Pending
├── Phase 7: Validate   ⏳ Pending
├── Phase 8: Review     ⏳ Pending
└── Phase 9: Learn      ⏳ Pending
```

**Complete:**
```
Status: Workflow Complete
├── All 9 phases finished
├── Last completed: Phase 9 (Learn)
└── Recommendation: Start new workflow or /forge:quick for small tasks
```

## Display Output

### Standard View

```
═══════════════════════════════════════════════════
FORGE Workflow Status
═══════════════════════════════════════════════════

Current Phase: 4/9 - Plan 🔄

Progress:
[██████░░░░░░░░░░░░░░] 33%

Recently Completed:
  ✅ Brainstorm - 3 approaches documented
  ✅ Research   - Tech stack validated
  ✅ Design     - UI mockups created

Current:
  🔄 Plan - Implementation plan in progress
      └─ docs/forge/plan.md (draft)

Pending:
  ⏳ Test, Build, Validate, Review, Learn

═══════════════════════════════════════════════════
```

### Detailed View (--status)

```
═══════════════════════════════════════════════════
FORGE Workflow - Detailed Status
═══════════════════════════════════════════════════

Project: [Detected from package.json or git]
Type: React + TypeScript
Started: 2026-02-20 14:30
Last Activity: 2026-02-20 16:45

Phase Breakdown:
┌─────────────┬──────────┬─────────────────────────────┐
│ Phase       │ Status   │ Details                     │
├─────────────┼──────────┼─────────────────────────────┤
│ 1. Brainstorm│ ✅ Done  │ 3 approaches, 12 ideas      │
│ 2. Research  │ ✅ Done  │ 5 sources, 2 validated      │
│ 3. Design    │ ✅ Done  │ 8 screens, 2 interactions   │
│ 4. Plan      │ 🔄 Active│ 5/8 tasks planned           │
│ 5. Test      │ ⏳ Ready │ Awaiting plan completion    │
│ 6. Build     │ ⏳ Ready │ Awaiting test strategy      │
│ 7. Validate  │ ⏳ Ready │ Awaiting build completion   │
│ 8. Review    │ ⏳ Ready │ Awaiting validation         │
│ 9. Learn     │ ⏳ Ready │ Awaiting review             │
└─────────────┴──────────┴─────────────────────────────┘

Files:
├── docs/forge/brainstorm.md  (2.4 KB)
├── docs/forge/research.md    (1.8 KB)
├── docs/forge/design.md      (5.2 KB)
└── docs/forge/plan.md        (1.1 KB, draft)

═══════════════════════════════════════════════════
```

## Next Step Recommendations

Based on detected state, recommend actions:

### Phase 1: Brainstorm
```
Recommendation: Continue Brainstorm
├── Current: Exploring approaches
├── Next: Complete brainstorm document
└── Action: /forge:brainstorm or continue current session
```

### Phase 4: Plan
```
Recommendation: Complete Planning
├── Current: Implementation plan in draft
├── Blockers: None detected
├── Next: Finalize plan and proceed to Test
└── Actions:
    [continue]  - Resume planning
    [test]      - Skip to test phase
    [build]     - Skip to build phase
```

### Phase 6: Build
```
Recommendation: Continue Building
├── Current: 3 of 5 tasks complete
├── Blockers: Task 4 has dependency issue
├── Next: Resolve dependency or skip task
└── Actions:
    [resolve]   - Address dependency issue
    [skip]      - Skip blocked task
    [delegate]  - Escalate to user
```

## Quick Actions

Common commands based on current state:

```
Quick Actions:
├── /forge:start    - Continue full workflow
├── /forge:plan     - Jump to planning
├── /forge:build    - Start implementation
├── /forge:test     - Run tests
└── /forge:learn    - Capture knowledge
```

## Related Commands

| Command | Purpose |
|---------|---------|
| `/forge:status` | Alias for detailed progress |
| `/forge:next` | Advance to next phase |
| `/forge:start` | Begin from current state |
| `/forge:reset` | Clear workflow state |

## State Reset (--reset)

Reset workflow state (use with caution):

```bash
/forge:help --reset

⚠️  This will clear all FORGE workflow state.
    Existing docs/forge/ files will be preserved.

Reset options:
  [full]      - Clear all state, start fresh
  [phase]     - Reset only current phase
  [cancel]    - Keep current state
```

## Required Skill

**REQUIRED:** `@forge-help`
