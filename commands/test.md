---
name: forge:test
description: Run comprehensive tests with parallel testing agents - unit, integration, and e2e
argument-hint: "[test type or file pattern]"
disable-model-invocation: true
---

# /forge:test

Run comprehensive tests with parallel testing agents. Supports unit, integration, and end-to-end testing.

## Usage

```bash
/forge:test                    # Run all tests
/forge:test unit               # Run only unit tests
/forge:test integration        # Run only integration tests
/forge:test e2e                # Run only e2e tests
/forge:test --watch            # Run in watch mode
/forge:test --coverage         # Run with coverage report
/forge:test src/components     # Run tests matching pattern
```

## Test Types

### 1. Unit Tests

Test individual functions, components, and modules in isolation.

**Scope:**
- Individual functions
- React components
- Utility modules
- Hooks

**Frameworks:**
- Jest
- Vitest
- Mocha

**Example:**
```bash
/forge:test unit

Running Unit Tests:
├── AuthContext.test.tsx    ✅ 12 passed
├── useForm.test.ts         ✅ 8 passed
├── utils.test.ts           ✅ 24 passed
└── APIClient.test.ts       ✅ 15 passed

Unit Tests: 59 passed, 0 failed
Time: 3.2s
```

### 2. Integration Tests

Test interactions between multiple components/modules.

**Scope:**
- Component interactions
- API integration
- Database operations
- Service communication

**Frameworks:**
- React Testing Library + Jest
- Supertest (API)
- MSW (Mock Service Worker)

**Example:**
```bash
/forge:test integration

Running Integration Tests:
├── UserFlow.test.tsx       ✅ 5 passed
├── CheckoutFlow.test.tsx   ✅ 3 passed
├── API.integration.test.ts ✅ 8 passed
└── Database.test.ts        ✅ 6 passed

Integration Tests: 22 passed, 0 failed
Time: 8.5s
```

### 3. End-to-End (E2E) Tests

Test complete user flows in a real browser environment.

**Scope:**
- Full user journeys
- Cross-page navigation
- Real browser behavior
- Visual regression

**Frameworks:**
- Playwright
- Cypress
- Selenium

**Example:**
```bash
/forge:test e2e

Running E2E Tests:
├── auth.spec.ts            ✅ 4 passed
├── checkout.spec.ts        ✅ 3 passed
├── dashboard.spec.ts       ✅ 6 passed
└── search.spec.ts          ✅ 5 passed

E2E Tests: 18 passed, 0 failed
Time: 45.2s
```

## Parallel Testing Agents

The test command uses specialized agents for parallel execution:

```
┌─────────────────────┐
│   Test Orchestrator │
└──────────┬──────────┘
           │
    ┌──────┼──────┐
    ▼      ▼      ▼
┌───────┐┌───────┐┌─────────┐
│ Unit  ││Integration││  E2E   │
│ Agent ││  Agent   ││ Agent  │
└───┬───┘└────┬────┘└────┬───┘
    │         │          │
    ▼         ▼          ▼
┌─────────────────────────────┐
│     Aggregate Results       │
└─────────────────────────────┘
```

### Agent Responsibilities

| Agent | Responsibility | Parallel |
|-------|---------------|----------|
| `unit-test-agent` | Unit test execution | Yes (per file) |
| `type-check-agent` | TypeScript validation | Yes |
| `integration-agent` | Integration testing | Yes (per suite) |
| `browser-test-agent` | E2E/Visual testing | Limited (resource intensive) |
| `coverage-agent` | Coverage analysis | No |

## Test Execution Patterns

### Default Pattern (All Tests)

```
1. Type Check      ──┐
2. Lint            ──┼── Parallel (fast feedback)
3. Unit Tests      ──┘
4. Integration Tests ── Sequential (depends on unit)
5. E2E Tests       ── Sequential (most expensive)
```

### Fast Pattern (--fast)

```bash
/forge:test --fast

Skips:
- E2E tests
- Coverage analysis
- Visual regression

Runs:
- Type check
- Lint
- Unit tests only
```

### CI Pattern (--ci)

```bash
/forge:test --ci

Features:
- All test types
- Coverage reporting
- JUnit XML output
- Fail on any error
- No watch mode
```

### Watch Pattern (--watch)

```bash
/forge:test --watch

Features:
- Rerun on file change
- Filter by changed files
- Interactive test selection
- Snapshot update mode
```

## Test Gates

Quality gates that must pass:

| Gate | Threshold | Action on Fail |
|------|-----------|----------------|
| Unit test pass rate | 100% | Block build |
| Integration pass rate | 100% | Block build |
| Type check | 0 errors | Block build |
| Lint errors | 0 errors | Block build |
| Code coverage | 80% | Warn/Block |
| E2E pass rate | 100% | Warn (optional) |

## Coverage Reporting

```bash
/forge:test --coverage

Coverage Report:
┌─────────────────┬─────────┬─────────┬─────────┬─────────┐
│ File            │ Stmts   │ Branch  │ Funcs   │ Lines   │
├─────────────────┼─────────┼─────────┼─────────┼─────────┤
│ All files       │ 87.45%  │ 82.13%  │ 91.20%  │ 87.45%  │
│ components      │ 92.10%  │ 88.50%  │ 95.00%  │ 92.10%  │
│ utils           │ 95.20%  │ 90.00%  │ 100%    │ 95.20%  │
│ hooks           │ 78.50%  │ 70.00%  │ 85.00%  │ 78.50%  │ ⚠️
└─────────────────┴─────────┴─────────┴─────────┴─────────┘

Threshold: 80% ✅
```

## Test Configuration

Project-specific configuration in `.claude/config/test.json`:

```json
{
  "unit": {
    "framework": "vitest",
    "pattern": "**/*.test.ts",
    "coverage": {
      "threshold": 80,
      "exclude": ["**/*.d.ts", "**/mocks/**"]
    }
  },
  "integration": {
    "framework": "jest",
    "pattern": "**/*.integration.test.ts",
    "setup": "tests/integration/setup.ts"
  },
  "e2e": {
    "framework": "playwright",
    "pattern": "**/*.spec.ts",
    "workers": 4
  }
}
```

## Test Results Output

### Success

```
═══════════════════════════════════════════════════
FORGE Test Results
═══════════════════════════════════════════════════

✅ All Tests Passed

Summary:
├── Unit Tests        59 passed    3.2s
├── Integration       22 passed    8.5s
├── E2E Tests         18 passed   45.2s
├── Type Check        ✅ Pass
└── Lint              ✅ Pass

Total: 99 passed, 0 failed
Time: 57.3s

═══════════════════════════════════════════════════
```

### Failure

```
═══════════════════════════════════════════════════
FORGE Test Results
═══════════════════════════════════════════════════

❌ Tests Failed

Summary:
├── Unit Tests        58 passed, 1 failed    3.2s
├── Integration       22 passed              8.5s
├── E2E Tests         17 passed, 1 failed   45.2s
├── Type Check        ✅ Pass
└── Lint              ❌ 2 errors

Failures:
1. AuthContext.test.tsx:47 - "should handle logout"
   Expected: true, Received: false

2. checkout.spec.ts:23 - "completes purchase"
   Timeout: 30000ms exceeded

3. LoginPage.tsx - ESLint
   'user' is assigned but never used

═══════════════════════════════════════════════════
```

## New Test Subcommands (BMAD TEA Integration)

### Risk-Based Testing

```bash
/forge:test risk
```

Calculate risk scores and prioritize testing effort.

**Process:**
1. Identify all features/requirements
2. Assess probability (P1-P5) of defects
3. Assess impact (I1-I5) of failure
4. Calculate risk: P × I
5. Prioritize testing by risk score

**Output:**
```
Risk Assessment Report:
┌─────────────────────┬───┬───┬──────┬──────────┐
│ Feature             │ P │ I │ Risk │ Priority │
├─────────────────────┼───┼───┼──────┼──────────┤
│ Payment Processing  │ 4 │ 5 │ 20   │ 🔴 P1    │
│ User Auth           │ 4 │ 4 │ 16   │ 🟠 P2    │
│ Profile Management  │ 2 │ 2 │ 4    │ 🟢 P10   │
└─────────────────────┴───┴───┴──────┴──────────┘

Recommendation: Focus 50% of testing effort on Critical/High risk items.
```

**Required:** `@test-architect` agent

---

### ATDD (Acceptance Test-Driven Development)

```bash
/forge:test atdd [feature-name]
```

Generate failing acceptance tests BEFORE implementation.

**Process:**
1. Clarify requirements with stakeholder
2. Write acceptance criteria (Given/When/Then)
3. Generate failing automated test
4. Hand off to implementation

**Example:**
```bash
/forge:test atdd user-registration

Generating ATDD Tests:
✓ Scenario: Successful registration
✓ Scenario: Invalid email format
✓ Scenario: Duplicate email
✓ Scenario: Weak password rejection

4 acceptance tests generated (all failing - RED phase)
Ready for implementation.
```

**Required:** `@test-architect` agent

---

### Test Quality Audit

```bash
/forge:test review
```

Audit existing tests for quality (0-100 score).

**Dimensions:**
- Coverage (15 pts) - Unit >80%, Integration >60%
- Reliability (15 pts) - No flaky tests, deterministic
- Maintainability (15 pts) - DRY, clear naming
- Speed (10 pts) - Fast feedback
- Readability (10 pts) - Given/When/Then structure
- Completeness (15 pts) - Happy paths, errors, edges
- Independence (10 pts) - No dependencies
- Documentation (10 pts) - Clear descriptions

**Output:**
```
Test Quality Audit:
┌──────────────────┬────────┬─────────────────────────┐
│ Dimension        │ Score  │ Notes                   │
├──────────────────┼────────┼─────────────────────────┤
│ Coverage         │ 12/15  │ Unit 85%, Integration 45%│
│ Reliability      │ 13/15  │ 2 flaky tests found     │
│ Maintainability  │ 14/15  │ Good overall            │
│ Speed            │ 8/10   │ Suite: 4.2 min          │
│ Readability      │ 9/10   │ Well structured         │
│ Completeness     │ 12/15  │ Missing edge cases      │
│ Independence     │ 10/10  │ No dependencies         │
│ Documentation    │ 7/10   │ Some unclear names      │
├──────────────────┼────────┼─────────────────────────┤
│ TOTAL            │ 85/100 │ Grade: B (Good)         │
└──────────────────┴────────┴─────────────────────────┘

Recommendations:
1. Fix flaky tests in AuthContext.test.tsx
2. Add integration tests for checkout flow
3. Add edge case tests for payment amounts
```

**Required:** `@test-architect` agent

---

### CI/CD Pipeline Setup

```bash
/forge:test ci
```

Configure test automation pipeline for CI/CD.

**Supported Platforms:**
- GitHub Actions
- GitLab CI
- Jenkins
- Azure DevOps
- CircleCI

**Output:**
```
CI/CD Configuration Generated:
✓ .github/workflows/test.yml
  - Lint check
  - Unit tests with coverage
  - Integration tests
  - E2E tests (critical paths)
  - Security scan
  - Quality gates

Quality Gates:
- Unit coverage > 80%
- All tests pass
- No lint errors
- Security scan clean
```

**Required:** `@test-architect` agent

---

## Next Steps

After test:
- `/forge:validate` - Verify against requirements
- `/forge:build` - If fixes needed
- `/forge:review` - Code review

## Required Skill

**REQUIRED:** `@forge-test`
**OPTIONAL:** `@risk-based-testing` for risk assessment
