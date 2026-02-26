---
name: forge:start
description: Start the full FORGE 9-phase workflow - detects workspace state and guides through complete development process
argument-hint: "[feature description]"
disable-model-invocation: true
---

# /forge:start

**Entry point for the full FORGE workflow.** Detects workspace state and guides you through all 9 phases.

## What It Does

1. **Detects workspace state:**
   - New project → "What are we building?"
   - Existing project → "What's the current state?"
   - In-progress → "Where did we leave off?"

2. **Personalizes workflow:**
   - Detects project type (React, Python, etc.)
   - Suggests appropriate artifact level
   - Configures quality gates

3. **Guides through 9 phases:**
   - Prompts at each phase transition
   - Tracks progress
   - Maintains context

## Usage

```bash
# Start full workflow (auto-detect)
/forge:start

# Start with specific objective
/forge:start "Build a user dashboard"

# Start with options
/forge:start "API integration" --level=intelligent --karthy-strict

# Sequential mode (no swarm)
/forge:start "Feature name" --sequential
```

## Full 9-Phase Flow

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│  Initialize │ -> │ Brainstorm  │ -> │  Research   │ -> │   Design    │
│   (Setup)   │    │  (Explore)  │    │  (Validate) │    │   (Stitch)  │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
                                                              │
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│    Learn    │ <- │   Review    │ <- │  Validate   │ <- │    Build    │
│  (Capture)  │    │  (Parallel) │    │ (Evidence)  │    │ (Ralph/Sub) │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
                                                              ↑
                                                    ┌─────────────┐
                                                    │    Test     │
                                                    │   (First)   │
                                                    └─────────────┘
```

## Execution Modes

### Swarm Mode (Default)

Uses parallel agent execution for maximum efficiency:

```
Sequential Phase:
1. /ralph-wiggum:ralph-loop "finish all slash commands" --completion-promise "DONE"
2. /forge:brainstorm $ARGUMENTS (skip if user already knows what they want)
3. /forge:research $ARGUMENTS
4. /forge:design $ARGUMENTS
5. /forge:plan $ARGUMENTS

Swarm Phase (Parallel):
6. /forge:test - spawn as background Task agent
7. /forge:build --swarm - spawn Ralph Loop with subagents

Wait for both to complete.

Finalize Phase:
8. /forge:validate
9. /forge:review - spawn as background Task agent
10. /forge:resolve-todos
11. /forge:learn
12. Output <promise>DONE</promise> when complete
```

### Sequential Mode (--sequential)

Run all phases sequentially without parallelization:

```
1. /ralph-wiggum:ralph-loop "finish all slash commands" --completion-promise "DONE"
2. /forge:brainstorm $ARGUMENTS (if needed)
3. /forge:research $ARGUMENTS
4. /forge:design $ARGUMENTS
5. /forge:plan $ARGUMENTS
6. /forge:test
7. /forge:build
8. /forge:validate
9. /forge:review
10. /forge:resolve-todos
11. /forge:learn
12. Output <promise>DONE</promise>
```

## Ralph Loop Integration

The workflow uses Ralph Loop for completion tracking:

```bash
/ralph-wiggum:ralph-loop "finish all slash commands" --completion-promise "DONE"
```

This ensures:
- All phases complete before promise fulfillment
- No premature exit
- Clear completion signal

## Interactive Guidance

**At each phase:**
```
═══════════════════════════════════════════════════
FORGE Workflow - Phase 2: Brainstorm
═══════════════════════════════════════════════════

Objective: [User's objective]

Current: Exploring approaches...
Complete: 1/9 phases

Options:
  [continue]  - Complete brainstorm and proceed
  [skip]      - Skip to next phase
  [details]   - Show current brainstorm output
  [help]      - Get guidance
  [stop]      - Pause workflow, resume later

Next: Research → Validate brainstorm with best practices

═══════════════════════════════════════════════════
```

## New vs Existing Project

### New Project
```
/forge:start

Detected: New workspace (no existing FORGE artifacts)

What are we building?
→ [User describes objective]

Starting Phase 1/9: Brainstorm...
```

### Existing Project
```
/forge:start

Detected: Existing workspace
Found:
  - docs/forge/brainstorm.md (complete)
  - docs/forge/plan.md (complete)
  - 3 of 5 build tasks complete

Resume from Phase 6: Build
Continue with remaining tasks?
→ [yes/no]
```

## Configuration Options

| Option | Values | Description |
|--------|--------|-------------|
| `--level` | minimal, intelligent, maximal | Artifact level |
| `--karthy-strict` | - | Enforce strict Karthy guidelines |
| `--security` | on, off | Enable security checks |
| `--ralph` | - | Use Ralph Loop for build phase |
| `--sequential` | - | Disable swarm mode, run sequentially |

## Phase Transitions

**Auto-advance when:**
- Phase output file created
- User confirms completion
- Tests pass (for Test/Build phases)

**Pause for user when:**
- Phase needs input
- Quality gate triggered
- Uncertainty detected

## Resume Capability

**Stop and resume:**
```bash
/forge:start
# ... work on phase 3 ...
# User: "stop"
# Session ends

# Later:
/forge:start
# Detects: "Resuming Phase 3: Design"
# Continues from where left off
```

## Status Check

**Check progress without continuing:**
```bash
/forge:start --status

Current Status:
├── Phase 1: Brainstorm ✅ Complete
├── Phase 2: Research   ✅ Complete
├── Phase 3: Design     🔄 In Progress (70%)
├── Phase 4: Plan       ⏳ Pending
├── Phase 5: Test       ⏳ Pending
├── Phase 6: Build      ⏳ Pending
├── Phase 7: Validate   ⏳ Pending
├── Phase 8: Review     ⏳ Pending
└── Phase 9: Learn      ⏳ Pending
```

## Required Skills

**Auto-loaded:**
- `@forge-init` - Workspace detection
- `@forge-help` - Phase routing
- `@forge-config` - Personalization

## Comparison

| Command | Use When |
|---------|----------|
| `/forge:start` | Begin full workflow, unsure where to start |
| `/forge:quick` | Small task, skip most phases |
| `/forge:debug` | Bug fix, outside normal flow |
| `/forge:brainstorm` | Know you need exploration |
| `/forge:help` | Check status, get recommendations |

## Exit Points

**You can exit at any phase:**
- Phase complete → Next phase
- Phase paused → Resume later
- `stop` command → Save state, exit
- `abort` command → Discard, exit

**After exit:**
- Work preserved in `docs/forge/`
- Resume with `/forge:start`
- Or continue individual phases
