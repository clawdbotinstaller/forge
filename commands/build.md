---
name: forge:build
description: Execute implementation plans with subagent-driven development and Ralph Loop integration
argument-hint: "[plan reference or skip if following workflow]"
---

# /forge:build

Execute implementation plans with subagent-driven development, TDD, and Ralph Loop integration.

## Usage

```bash
/forge:build                       # Execute current plan
/forge:build docs/plans/plan.md    # Execute specific plan
/forge:build --swarm               # Use swarm mode with parallel subagents
/forge:build --ralph               # Use Ralph Loop for completion tracking
```

## Process

### 1. Read Plan

Extract tasks from the plan document:
- Task list with priorities
- Dependencies between tasks
- Acceptance criteria
- Estimated effort

### 2. Ralph Loop Initialization (Optional)

When using `--ralph` flag:
```bash
/ralph-wiggum:ralph-loop "finish all build tasks" --completion-promise "BUILD_DONE"
```

This ensures:
- All tasks complete before promise fulfillment
- No premature exit
- Clear completion signal for workflow orchestration

### 3. Dispatch Implementer

**Sequential Mode (Default):**
- Process tasks one at a time
- Verify each before proceeding
- Slower but more controlled

**Swarm Mode (--swarm):**
- Launch parallel Task subagents per task
- Each agent works independently
- Faster for independent tasks

### 4. TDD Enforcement

For each implementation task:

```
┌─────────────────┐
│  Write Failing  │
│   Test FIRST    │
└────────┬────────┘
         ▼
┌─────────────────┐
│  Make Minimal   │
│  Change to Pass │
└────────┬────────┘
         ▼
┌─────────────────┐
│  Refactor While │
│     Green       │
└─────────────────┘
```

### 5. Test Gates

**Pre-commit Tests:**
- Unit tests must pass
- Type checking must pass
- Lint checks must pass

**Quality Gates:**
- Code coverage threshold (default: 80%)
- No failing tests
- No TypeScript errors
- No lint errors

**Gate Failure Actions:**
```
Test Gate Failed:
├── Unit Tests: 2 failed
├── Type Check: 1 error
└── Options:
    [fix]     - Fix issues and retry
    [skip]    - Skip gate (not recommended)
    [abort]   - Stop build
```

### 6. Spec Review

Verify compliance with:
- Design specifications
- Architecture decisions
- CLAUDE.md conventions

### 7. Code Quality Review

Karthy guidelines check:
- Naming conventions
- Code organization
- Error handling
- Documentation

### 8. Iterate

Continue until all tasks complete:
- Track progress
- Handle blockers
- Update plan if needed

## Execution Modes

### Sequential Mode (Default)

```
Task 1 → Test → Review → Task 2 → Test → Review → ...
```

Best for:
- Complex dependencies
- Critical path items
- Learning new codebase

### Swarm Mode (--swarm)

```
Task 1 ─┐
Task 2 ─┼→ Parallel execution → Aggregate results
Task 3 ─┘
```

Best for:
- Independent tasks
- Large task lists
- Time-sensitive delivery

## Build Phases

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   Extract   │ -> │  Implement  │ -> │    Test     │
│    Tasks    │    │   (TDD)     │    │    Gate     │
└─────────────┘    └─────────────┘    └──────┬──────┘
                                             │
┌─────────────┐    ┌─────────────┐    ┌──────┴──────┐
│   Iterate   │ <- │   Review    │ <- │   Quality   │
│  if needed  │    │   (Karthy)  │    │    Gate     │
└─────────────┘    └─────────────┘    └─────────────┘
```

## Test Gate Configuration

| Gate | Default | Description |
|------|---------|-------------|
| Unit tests | Required | `npm test` or equivalent |
| Type check | Required | `tsc --noEmit` |
| Lint | Required | `eslint` or equivalent |
| Coverage | 80% | Minimum coverage threshold |
| E2E tests | Optional | Playwright/Cypress |

## Ralph Loop Integration

When `--ralph` flag is used:

```bash
# Start of build
/ralph-wiggum:ralph-loop "finish all build tasks" --completion-promise "BUILD_DONE"

# ... build execution ...

# End of build (on success)
Output: <promise>BUILD_DONE</promise>
```

This integrates with `/forge:start` workflow orchestration.

## Error Handling

**Task Failure:**
```
Task Failed: Implement user API
├── Error: Type mismatch in auth.ts
├── Options:
│   [retry]    - Retry task
│   [skip]     - Skip and continue
│   [abort]    - Stop build
│   [delegate] - Escalate to user
└── Suggestion: Check AuthContext type definition
```

**Dependency Failure:**
```
Dependency Missing: UserService
├── Required by: UserController, AuthMiddleware
├── Options:
│   [implement] - Create dependency first
│   [mock]      - Use mock temporarily
│   [reorder]   - Reorder task execution
└── Recommendation: Implement UserService before dependent tasks
```

## Next Steps

After build:
- `/forge:test` - Run comprehensive tests
- `/forge:validate` - Verify against requirements
- `/forge:review` - Code review

## Required Skill

**REQUIRED:** `@forge-build`
