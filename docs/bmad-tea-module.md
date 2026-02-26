# BMAD TEA Module - Comprehensive Test Architecture Documentation

## Executive Summary

**TEA (Test Architecture)** is BMAD's dedicated testing, quality assurance, and CI/CD module. It provides a comprehensive, risk-based testing framework that covers the entire testing lifecycle from learning fundamentals to production-ready test automation. TEA is designed around the philosophy of "strong opinions, weakly held" - blending data-driven risk calculations with practical testing expertise.

TEA operates through a Master Test Architect persona (Murat) who specializes in:
- Risk-based testing with probability-impact scoring
- ATDD (Acceptance Test-Driven Development)
- API and backend service testing
- UI automation with Playwright/Cypress
- CI/CD pipeline configuration
- Contract testing with Pact
- Non-functional requirements assessment

---

## 1. What TEA Does - Comprehensive Testing Architecture

### 1.1 Core Purpose

TEA provides end-to-end testing capabilities across the software development lifecycle:

| Phase | TEA Capability | Output |
|-------|---------------|--------|
| Learning | Teach Me Testing (TEA Academy) | Progressive skill building across 7 sessions |
| Solutioning | Test Design, Framework Setup, CI Configuration | Test plans, framework scaffolding, CI pipelines |
| Implementation | ATDD, Test Automation, Test Review | Failing acceptance tests, expanded test suites, quality audits |
| Validation | NFR Assessment, Traceability | Compliance reports, coverage matrices, gate decisions |

### 1.2 Key Principles

1. **Risk-Based Testing**: Depth scales with impact - calculate risk vs value for every testing decision
2. **Quality Gates Backed by Data**: Objective PASS/CONCERNS/FAIL/WAIVED decisions based on evidence
3. **Tests Mirror Usage Patterns**: API tests are first-class citizens, not just UI support
4. **Flakiness is Critical Technical Debt**: Zero tolerance for non-deterministic tests
5. **Prefer Lower Test Levels**: Unit > Integration > E2E when possible
6. **Network-First Safeguards**: Intercept-before-navigate prevents race conditions

### 1.3 Configuration

TEA is configured via `/Users/muadhsambul/Downloads/arkived/_bmad/tea/config.yaml`:

```yaml
test_artifacts: "{project-root}/_bmad-output/test-artifacts"
tea_use_playwright_utils: true
tea_use_pactjs_utils: true
tea_pact_mcp: mcp
tea_browser_automation: auto
test_stack_type: auto
ci_platform: auto
test_framework: auto
risk_threshold: p1
test_design_output: _bmad-output/test-artifacts/test-design
test_review_output: _bmad-output/test-artifacts/test-reviews
trace_output: _bmad-output/test-artifacts/traceability
```

---

## 2. Test Agents - Detailed Roles and Capabilities

### 2.1 Master Test Architect (Murat)

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/tea/agents/tea.md`

**Persona**:
- **Role**: Master Test Architect and Quality Advisor
- **Identity**: Test architect specializing in risk-based testing, fixture architecture, ATDD, API testing, backend services, UI automation, CI/CD governance
- **Communication Style**: Blends data with gut instinct; "strong opinions, weakly held"
- **Mantra**: "Calculate risk vs value for every testing decision"

**Capabilities**:
- Multi-platform CI/CD support (GitHub Actions, GitLab CI, Jenkins, Azure DevOps, Harness)
- Multi-framework testing (Playwright, Cypress, pytest, JUnit, Go test, xUnit, RSpec)
- Contract testing with Pact
- Risk scoring and governance
- Test quality assessment (0-100 scoring)

**Activation Sequence**:
1. Load persona from agent file
2. Load and read config.yaml (MANDATORY - stop if missing)
3. Store session variables (user_name, communication_language, output_folder)
4. Consult tea-index.csv for knowledge fragments
5. Load relevant fragments before recommendations
6. Cross-check with official documentation
7. Display menu and wait for user input

### 2.2 Menu System

The TEA agent provides an interactive menu:

| Command | Name | Description | Workflow File |
|---------|------|-------------|---------------|
| TMT | Teach Me Testing | Interactive learning companion - 7 progressive sessions | `workflows/testarch/teach-me-testing/workflow.md` |
| TF | Test Framework | Initialize production-ready test framework | `workflows/testarch/framework/workflow.yaml` |
| AT | ATDD | Generate failing acceptance tests (TDD red phase) | `workflows/testarch/atdd/workflow.yaml` |
| TA | Test Automation | Expand test coverage for stories/features | `workflows/testarch/automate/workflow.yaml` |
| TD | Test Design | Risk assessment + coverage strategy | `workflows/testarch/test-design/workflow.yaml` |
| TR | Trace Requirements | Map requirements to tests + quality gate | `workflows/testarch/trace/workflow.yaml` |
| NR | NFR Assessment | Assess non-functional requirements | `workflows/testarch/nfr-assess/workflow.yaml` |
| CI | Continuous Integration | Configure CI/CD quality pipeline | `workflows/testarch/ci/workflow.yaml` |
| RV | Review Tests | Quality audit (0-100 scoring) | `workflows/testarch/test-review/workflow.yaml` |

---

## 3. Testing Workflows - Complete Catalog

### 3.1 Teach Me Testing (TMT) - TEA Academy

**Purpose**: Self-paced, multi-session learning for testing fundamentals through advanced practices

**Structure**: 7 progressive sessions:
1. **Session 1**: Testing fundamentals and the testing pyramid
2. **Session 2**: Unit testing patterns and best practices
3. **Session 3**: Integration testing strategies
4. **Session 4**: E2E testing with Playwright/Cypress
5. **Session 5**: API testing patterns
6. **Session 6**: CI/CD integration and test automation
7. **Session 7**: Advanced topics (contract testing, performance, NFRs)

**Features**:
- Continuable architecture with state persistence
- Progress tracking via progress files
- Quiz questions for knowledge validation
- Certificate generation upon completion
- Role-specific learning paths (QA, Developer, DevOps)

**Data Files**:
- `data/curriculum.yaml` - Session structure
- `data/quiz-questions.yaml` - Knowledge checks
- `data/role-paths.yaml` - Role-specific tracks
- `data/session-content-map.yaml` - Content organization

### 3.2 Test Framework (TF)

**Purpose**: Initialize production-ready test framework architecture

**Workflow Steps**:
1. **Preflight**: Detect existing setup, validate environment
2. **Select Framework**: Playwright vs Cypress vs pytest vs JUnit
3. **Scaffold Framework**: Create directory structure, config files
4. **Documentation & Scripts**: Generate README, package.json scripts
5. **Validate & Summary**: Verify setup, provide next steps

**Outputs**:
- Framework configuration (playwright.config.ts, cypress.config.ts)
- Directory structure (tests/, fixtures/, support/)
- Base fixtures and utilities
- Sample tests
- CI pipeline templates

### 3.3 ATDD - Acceptance Test-Driven Development

**Purpose**: Generate failing acceptance tests before implementation (TDD red-green-refactor)

**Workflow Steps**:
1. **Preflight & Context**: Load requirements, detect existing tests
2. **Generation Mode**: Determine API vs E2E vs both
3. **Test Strategy**: Risk assessment, priority assignment (P0-P3)
4. **Generate Tests**:
   - Subprocess: API failing tests
   - Subprocess: E2E failing tests
   - Aggregate results
5. **Validate & Complete**: Check test quality, generate DoD summary

**Key Features**:
- Generates RED tests (intentionally failing)
- Creates implementation checklist
- Risk-based test prioritization
- Fixture and data factory generation

### 3.4 Test Automation (TA)

**Purpose**: Expand test coverage after implementation or analyze existing codebase

**Workflow Steps**:
1. **Preflight & Context**: Discover codebase structure, existing tests
2. **Identify Targets**: Find untested code, critical paths
3. **Generate Tests**:
   - Subprocess: API tests
   - Subprocess: Backend tests
   - Subprocess: E2E tests
   - Aggregate results
4. **Validate & Summarize**: Quality check, coverage report, DoD summary

**Coverage Targets**:
| Priority | Unit Coverage | Integration Coverage | E2E Coverage |
|----------|--------------|---------------------|--------------|
| P0 | >90% | >80% | All critical paths |
| P1 | >80% | >60% | Main happy paths |
| P2 | >60% | >40% | Smoke tests |
| P3 | Best effort | Best effort | Manual only |

### 3.5 Test Design (TD)

**Purpose**: Epic-level or system-level test planning with risk assessment

**Workflow Steps**:
1. **Detect Mode**: System-level vs epic-level scope
2. **Load Context**: Requirements, architecture, constraints
3. **Risk & Testability**: Identify risks, assess testability
4. **Coverage Plan**: Define test levels, priorities, techniques
5. **Generate Output**: Test design document, handoff template

**Templates**:
- `test-design-template.md` - Standard test plan
- `test-design-architecture-template.md` - System architecture focus
- `test-design-qa-template.md` - QA handoff document
- `test-design-handoff-template.md` - Implementation handoff

### 3.6 Trace Requirements (TR)

**Purpose**: Generate requirements-to-tests traceability matrix and make quality gate decisions

**Phase 1 - Map Requirements to Tests**:
1. Load context (requirements, test files)
2. Discover tests (extract metadata, tags)
3. Map criteria to tests
4. Analyze gaps (missing coverage)

**Phase 2 - Quality Gate Decision**:
1. Load traceability matrix
2. Calculate coverage metrics
3. Assess risks
4. Make gate decision: PASS / CONCERNS / FAIL / WAIVED

**Gate Decision Criteria**:
- **PASS**: All risks mitigated or acceptable, coverage targets met
- **CONCERNS**: High risks with mitigation plans, minor gaps
- **FAIL**: Critical risks (score=9), missing P0 coverage
- **WAIVED**: All risks waived by authorized approver

### 3.7 NFR Assessment (NR)

**Purpose**: Assess non-functional requirements (security, performance, reliability, maintainability)

**Workflow Steps**:
1. **Load Context**: System architecture, NFR requirements
2. **Define Thresholds**: SLO/SLA targets, security criteria
3. **Gather Evidence**: Test results, metrics, logs
4. **Evaluate & Score**:
   - Subprocess: Security assessment
   - Subprocess: Performance assessment
   - Subprocess: Reliability assessment
   - Subprocess: Scalability assessment
   - Aggregate NFR scores
5. **Generate Report**: NFR assessment report with recommendations

**NFR Categories**:
| Category | Tools | PASS Criteria |
|----------|-------|---------------|
| Security | Playwright (E2E auth), OWASP ZAP, npm audit | Auth/authz verified, no critical vulns |
| Performance | k6 (load testing), Lighthouse | p95 <500ms, error rate <1% |
| Reliability | Playwright (error handling), API tests | Graceful degradation, retries, health checks |
| Maintainability | CI tools (coverage, duplication) | >80% coverage, <5% duplication |

### 3.8 CI Setup (CI)

**Purpose**: Scaffold CI/CD quality pipeline with test execution

**Workflow Steps**:
1. **Preflight**: Detect CI platform, existing configuration
2. **Generate Pipeline**: Create platform-specific pipeline config
3. **Configure Quality Gates**: Set thresholds, stages
4. **Validate & Summary**: Verify configuration, document usage

**Supported Platforms**:
- GitHub Actions
- GitLab CI
- Azure Pipelines
- Jenkins
- Harness

### 3.9 Test Review (RV)

**Purpose**: Quality audit of existing tests using comprehensive best practices

**Workflow Steps**:
1. **Load Context**: Test files, framework, patterns
2. **Discover Tests**: Find all test files, extract metadata
3. **Quality Evaluation**:
   - Subprocess: Determinism check
   - Subprocess: Isolation check
   - Subprocess: Maintainability check
   - Subprocess: Performance check
   - Aggregate scores
4. **Generate Report**: 0-100 quality score with recommendations

**Evaluation Dimensions**:
- **Determinism**: No hard waits, no conditionals, no random data
- **Isolation**: Self-cleaning, parallel-safe, no shared state
- **Maintainability**: <300 lines per test, explicit assertions
- **Performance**: <1.5 min execution, API setup over UI

---

## 4. CI/CD Integration Patterns

### 4.1 GitHub Actions Template

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/tea/workflows/testarch/ci/github-actions-template.yaml`

**Pipeline Stages**:

```yaml
# 1. Lint Stage - Code quality checks
lint:
  timeout: 5 minutes
  steps:
    - Checkout code
    - Setup Node.js (from .nvmrc or default 24)
    - Cache dependencies
    - Run linter

# 2. Test Stage - Parallel execution with sharding
test:
  needs: lint
  timeout: 30 minutes
  strategy:
    fail-fast: false
    matrix:
      shard: [1, 2, 3, 4]
  steps:
    - Restore dependencies
    - Install Playwright browsers
    - Run tests (shard X/4)
    - Upload test results on failure

# 3. Burn-In Stage - Flaky test detection
burn-in:
  needs: test
  timeout: 60 minutes
  steps:
    - Run burn-in loop (10 iterations)
    - Upload failure artifacts

# 4. Report Stage - Aggregate results
report:
  needs: [test, burn-in]
  if: always()
  steps:
    - Download all artifacts
    - Generate summary
```

### 4.2 GitLab CI Template

**Location**: `/Users/muadhsambul/Downloads/arkived/_bmad/tea/workflows/testarch/ci/gitlab-ci-template.yaml`

**Pipeline Structure**:

```yaml
stages:
  - lint
  - test
  - burn-in
  - report

# Caching configuration
cache:
  paths:
    - .npm/
    - .cache/ms-playwright/
    - node_modules/

# Parallel test shards
test:shard-1:
  script:
    - npm run test:e2e -- --shard=1/4

# Burn-in with rules
burn-in:
  rules:
    - if: '$CI_PIPELINE_SOURCE == "merge_request_event"'
    - if: '$CI_PIPELINE_SOURCE == "schedule"'
  script:
    - for i in {1..10}; do npm run test:e2e || exit 1; done
```

### 4.3 CI Best Practices

**Burn-In Testing**:
- Run changed specs 10x before merge
- Detects flaky tests early
- Prevents CI instability

**Parallelization**:
- Use 4 shards for optimal speed/stability balance
- `fail-fast: false` preserves evidence from all shards
- Matrix strategy for cross-browser testing

**Artifact Management**:
- 30-day retention for test results
- 7-day retention for failure artifacts
- HTML reports + JUnit XML for CI integration

**Caching Strategy**:
- node_modules cached by package-lock.json hash
- Playwright browsers cached separately
- Restore keys for cache fallback

---

## 5. Test Generation Approaches

### 5.1 ATDD (Red-Green-Refactor)

**Process**:
1. Write failing acceptance test (RED)
2. Implement minimal code to pass (GREEN)
3. Refactor while keeping tests green

**Test Structure**:
```typescript
// Given-When-Then format
test('user can complete checkout with valid payment', async ({ page }) => {
  // Given: User has items in cart
  await setupCart(page, [{ product: 'Widget', quantity: 2 }]);

  // When: User completes checkout
  await page.goto('/checkout');
  await page.getByTestId('card-number').fill('4242424242424242');
  await page.getByTestId('submit-payment').click();

  // Then: Order is confirmed
  await expect(page.getByText('Order Confirmed')).toBeVisible();
});
```

### 5.2 Risk-Based Test Generation

**Priority Assignment**:
- **P0**: Revenue-critical, security, compliance (>90% coverage)
- **P1**: Core user journeys, complex logic (>80% coverage)
- **P2**: Secondary features, admin functions (>60% coverage)
- **P3**: Nice-to-have, cosmetic (best effort)

**Risk Scoring**:
```typescript
// Probability (1-3) x Impact (1-3) = Risk Score (1-9)
const riskScore = calculateRiskScore({
  probability: 3, // High (test failed before)
  impact: 3,      // Critical (revenue loss)
}); // Score = 9 (CRITICAL)

// Score >= 6: Requires mitigation
// Score = 9: Gate FAIL
```

### 5.3 Fixture-Based Test Generation

**Pattern**: Pure function → Fixture → mergeTests composition

```typescript
// Step 1: Pure function
export async function apiRequest({ request, method, path, data }) {
  return request.fetch(path, { method, data });
}

// Step 2: Fixture wrapper
export const test = base.extend({
  apiRequest: async ({ request }, use) => {
    await use((params) => apiRequest({ request, ...params }));
  }
});

// Step 3: Composition
export const test = mergeTests(
  apiRequestFixture,
  authFixture,
  logFixture
);
```

---

## 6. Quality Assurance Methodology

### 6.1 Test Quality Definition of Done

Every test must pass these criteria:

| Criterion | Standard | Enforcement |
|-----------|----------|-------------|
| No Hard Waits | Use `waitForResponse`, `waitForLoadState` | Lint rule |
| No Conditionals | Same execution path every time | Code review |
| < 300 Lines | Keep tests focused | PR check |
| < 1.5 Minutes | Optimize with API setup | Performance gate |
| Self-Cleaning | Auto-cleanup via fixtures | Test isolation |
| Explicit Assertions | `expect()` in test body, not helpers | Code review |
| Unique Data | Use `faker` for dynamic data | Fixture pattern |
| Parallel-Safe | No shared state | CI verification |

### 6.2 Test Review Scoring (0-100)

**Dimensions**:

| Dimension | Weight | Criteria |
|-----------|--------|----------|
| Determinism | 25% | No hard waits, no conditionals, no random |
| Isolation | 25% | Self-cleaning, parallel-safe, no shared state |
| Maintainability | 25% | <300 lines, explicit assertions, readable |
| Performance | 25% | <1.5 min execution, API setup preferred |

**Score Interpretation**:
- **90-100**: Excellent - Production ready
- **70-89**: Good - Minor improvements needed
- **50-69**: Fair - Significant issues to address
- **<50**: Poor - Major refactoring required

### 6.3 Risk Governance

**Risk Categories**:
- **TECH**: Technical debt, architecture fragility
- **SEC**: Security vulnerabilities
- **PERF**: Performance degradation
- **DATA**: Data integrity, corruption
- **BUS**: Business logic errors
- **OPS**: Operational issues (deployment, monitoring)

**Gate Decision Matrix**:

| Risk Score | Classification | Action |
|------------|----------------|--------|
| 9 | CRITICAL | Gate FAIL - Must mitigate before release |
| 6-8 | HIGH | Gate CONCERNS - Mitigation plan required |
| 4-5 | MEDIUM | Monitor closely |
| 1-3 | LOW | Document and defer |

---

## 7. TEA Integration with Other BMAD Modules

### 7.1 Integration Matrix

| Module | Integration Point | TEA Contribution |
|--------|------------------|------------------|
| **CORE** | Workflow engine | TEA workflows use CORE's step-file architecture |
| **BMM** | Business modeling | Test design validates business rules |
| **CIS** | Code implementation | ATDD generates tests before coding |
| **BMB** | Build/compilation | Test automation validates builds |
| **FORGE** | Plugin system | TEA provides test templates for plugins |

### 7.2 Phase Integration

```
BMAD Phase 0: Learning
└── TEA: Teach Me Testing (TMT) - Skill building

BMAD Phase 3: Solutioning
├── TEA: Test Design (TD) - Risk assessment
├── TEA: Test Framework (TF) - Setup
└── TEA: CI Setup (CI) - Pipeline config

BMAD Phase 4: Implementation
├── TEA: ATDD (AT) - Failing tests
├── TEA: Test Automation (TA) - Coverage expansion
├── TEA: Test Review (RV) - Quality audit
├── TEA: NFR Assessment (NR) - Non-functional validation
└── TEA: Traceability (TR) - Coverage gate
```

---

## 8. Testing Patterns and Best Practices

### 8.1 Fixture Architecture

**Hierarchy**: Pure Function → Fixture → mergeTests

```typescript
// Pure function (testable without Playwright)
export async function seedUser(db, userData) {
  return db.users.create(userData);
}

// Fixture wrapper
export const test = base.extend({
  seedUser: async ({ db }, use) => {
    const created = [];
    await use((data) => {
      const user = seedUser(db, data);
      created.push(user.id);
      return user;
    });
    // Auto-cleanup
    for (const id of created) await db.users.delete(id);
  }
});

// Composition
export const test = mergeTests(dbFixture, authFixture);
```

### 8.2 Network-First Pattern

**Rule**: Intercept BEFORE navigate

```typescript
// ✅ CORRECT: Intercept before navigate
const responsePromise = page.waitForResponse('**/api/users');
await page.goto('/dashboard');
const response = await responsePromise;

// ❌ WRONG: Navigate before intercept (race condition)
await page.goto('/dashboard'); // Request fires immediately
const response = await page.waitForResponse('**/api/users'); // Too late!
```

### 8.3 Data Factories

**Pattern**: Factory with overrides

```typescript
import { faker } from '@faker-js/faker';

export const createUser = (overrides = {}) => ({
  id: faker.string.uuid(),
  email: faker.internet.email(),
  name: faker.person.fullName(),
  role: 'user',
  createdAt: new Date(),
  ...overrides,
});

// Usage
const admin = createUser({ role: 'admin' });
const user = createUser(); // Random data
```

### 8.4 Selector Resilience

**Hierarchy**: data-testid > ARIA roles > text content > CSS/ID

```typescript
// ✅ BEST: data-testid (survives all UI changes)
await page.getByTestId('submit-button').click();

// ✅ GOOD: ARIA roles (accessible, semantic)
await page.getByRole('button', { name: 'Submit' }).click();

// ⚠️ ACCEPTABLE: Text content (user-centric)
await page.getByText('Submit Order').click();

// ❌ LAST RESORT: CSS/ID (brittle)
await page.locator('.btn-primary').click();
```

### 8.5 Test Levels Framework

| Level | When to Use | Speed | Stability |
|-------|-------------|-------|-----------|
| Unit | Pure logic, algorithms | <10ms | Very High |
| Integration | Database, API contracts | <100ms | High |
| Component | UI in isolation | <1s | Medium |
| E2E | Critical user journeys | <10s | Lower |

**Rule**: Prefer lower levels when possible

---

## 9. Test Coverage Strategies

### 9.1 Coverage by Priority

| Priority | Unit | Integration | E2E |
|----------|------|-------------|-----|
| P0 | >90% | >80% | All critical paths |
| P1 | >80% | >60% | Main happy paths |
| P2 | >60% | >40% | Smoke tests |
| P3 | Best effort | Best effort | Manual only |

### 9.2 Selective Testing Strategy

**Tag-Based Execution**:
```bash
# P0 only (smoke tests, 2-5 min)
npx playwright test --grep @p0

# P0 + P1 (core functionality, 10-15 min)
npx playwright test --grep "@p0|@p1"

# Full regression (all priorities, 30+ min)
npx playwright test
```

**Promotion Pipeline**:
| Stage | Tests | Time Budget | Blocks Deploy |
|-------|-------|-------------|---------------|
| Pre-Commit | @smoke | 2 min | Yes |
| CI PR | Changed + P0-P1 | 10 min | Yes |
| CI Merge | Full regression | 30 min | Yes |
| Staging | E2E @smoke | 15 min | Yes |
| Production | Critical @smoke | 5 min | No (alert only) |

### 9.3 Traceability Matrix

**Format**:
```
| Story | Criterion | Priority | Tests | Status |
|-------|-----------|----------|-------|--------|
| US-123 | User can login | P0 | auth/login.spec.ts | ✅ Covered |
| US-124 | Password reset | P1 | auth/reset.spec.ts | ✅ Covered |
| US-125 | Update profile | P2 | - | ❌ Gap |
```

---

## 10. Automation Patterns

### 10.1 Playwright Utils Integration

**Package**: `@seontechnologies/playwright-utils`

**Utilities**:
| Utility | Purpose | Context |
|---------|---------|---------|
| api-request | Typed HTTP client with schema validation | API/Backend |
| recurse | Polling for async operations | API/Backend |
| auth-session | Token persistence, multi-user | API/UI |
| log | Playwright report-integrated logging | All |
| file-utils | CSV/XLSX/PDF/ZIP validation | API/UI |
| burn-in | Smart test selection with git diff | CI/CD |
| network-recorder | HAR record/playback | UI only |
| intercept-network-call | Network spy/stub | UI only |
| network-error-monitor | HTTP 4xx/5xx detection | UI only |

### 10.2 Contract Testing with Pact

**Consumer Test**:
```typescript
await provider
  .given('user with id 1 exists')
  .uponReceiving('a request for user 1')
  .withRequest({ method: 'GET', path: '/users/1' })
  .willRespondWith({
    status: 200,
    body: like({ id: integer(1), name: string('John') })
  })
  .executeTest(async (mockServer) => {
    const user = await getUserById(1, { baseURL: mockServer.url });
    expect(user.name).toBe('John');
  });
```

**Provider Verification**:
```typescript
const opts: VerifierOptions = {
  provider: 'user-api-service',
  providerBaseUrl: 'http://localhost:3001',
  pactBrokerUrl: process.env.PACT_BROKER_URL,
  publishVerificationResult: true,
  stateHandlers: {
    'user with id 1 exists': async () => {
      await seedDatabase({ users: [{ id: 1, name: 'John' }] });
    }
  }
};
await new Verifier(opts).verifyProvider();
```

### 10.3 Test Healing Patterns

**Failure Pattern Catalog**:

| Failure Type | Diagnostic Signature | Healing Strategy |
|--------------|---------------------|------------------|
| Stale Selector | "locator resolved to 0 elements" | Replace with data-testid |
| Race Condition | "timeout waiting for element" | Add network-first interception |
| Dynamic Data | "Expected 'User 123' but got 'User 456'" | Use regex patterns |
| Network Error | "API call failed" | Add route mocking |
| Hard Wait | Contains `waitForTimeout()` | Replace with event-based wait |

### 10.4 CI/CD Automation

**Burn-In Script**:
```bash
#!/bin/bash
# Run changed specs 10x to detect flakiness

CHANGED_SPECS=$(git diff --name-only main...HEAD | grep -E '\.(spec|test)\.(ts|js)$')

for i in {1..10}; do
  echo "Burn-in iteration $i/10"
  npm run test -- $CHANGED_SPECS || exit 1
done
echo "✅ Burn-in passed - no flaky tests"
```

**Shard Orchestration**:
```bash
# Run tests across 4 shards
npx playwright test --shard=1/4
npx playwright test --shard=2/4
npx playwright test --shard=3/4
npx playwright test --shard=4/4
```

---

## 11. Knowledge Base Index

The TEA knowledge base contains 40+ pattern documents:

### Core Patterns (Tier: Core)
- `fixture-architecture.md` - Composable fixture patterns
- `network-first.md` - Intercept-before-navigate workflow
- `data-factories.md` - Factory functions with overrides
- `test-levels-framework.md` - Unit vs Integration vs E2E
- `test-priorities-matrix.md` - P0-P3 criteria and coverage targets
- `risk-governance.md` - Risk scoring and gate decisions
- `probability-impact.md` - Shared definitions for scoring
- `test-quality.md` - Definition of Done for tests
- `selector-resilience.md` - Robust selector strategies
- `test-healing-patterns.md` - Common failure patterns and fixes

### Extended Patterns (Tier: Extended)
- `component-tdd.md` - Red-green-refactor workflow
- `playwright-config.md` - Environment switching, timeout standards
- `ci-burn-in.md` - Staged jobs, shard orchestration
- `selective-testing.md` - Tag/grep usage, diff-based runs
- `error-handling.md` - Scoped exception handling
- `nfr-criteria.md` - Security, performance, reliability criteria
- `timing-debugging.md` - Race condition identification

### Specialized Patterns (Tier: Specialized)
- `contract-testing.md` - Pact publishing and verification
- `feature-flags.md` - Enum management, targeting helpers
- `email-auth.md` - Magic link extraction, state preservation
- `visual-debugging.md` - Trace viewer usage
- `api-testing-patterns.md` - Pure API test patterns
- `pactjs-utils-*.md` - Pact.js utility patterns
- `pact-mcp.md` - SmartBear MCP for PactFlow

---

## 12. File Structure

```
/Users/muadhsambul/Downloads/arkived/_bmad/tea/
├── config.yaml                    # Module configuration
├── module-help.csv               # Help documentation index
├── agents/
│   └── tea.md                    # Master Test Architect agent
├── testarch/
│   ├── tea-index.csv             # Knowledge fragment index
│   └── knowledge/                # Pattern library (40+ files)
│       ├── overview.md
│       ├── fixture-architecture.md
│       ├── network-first.md
│       ├── data-factories.md
│       └── ...
└── workflows/
    └── testarch/
        ├── README.md
        ├── teach-me-testing/     # TEA Academy
        ├── framework/            # Test framework setup
        ├── atdd/                 # Acceptance TDD
        ├── automate/             # Test automation
        ├── test-design/          # Test planning
        ├── test-review/          # Quality audit
        ├── trace/                # Traceability matrix
        ├── nfr-assess/           # NFR assessment
        └── ci/                   # CI/CD setup
            ├── github-actions-template.yaml
            ├── gitlab-ci-template.yaml
            ├── azure-pipelines-template.yaml
            ├── jenkins-pipeline-template.groovy
            └── harness-pipeline-template.yaml
```

---

## 13. Summary

TEA is BMAD's comprehensive testing module that provides:

1. **Complete Testing Lifecycle**: From learning (TMT) to production CI/CD (CI)
2. **Risk-Based Approach**: Probability-impact scoring drives testing decisions
3. **Multi-Platform Support**: Playwright, Cypress, pytest, JUnit, and more
4. **Quality Gates**: Objective PASS/CONCERNS/FAIL/WAIVED decisions
5. **Extensive Pattern Library**: 40+ knowledge fragments covering all testing scenarios
6. **Automation First**: Test generation, healing, and CI integration
7. **Integration Ready**: Works seamlessly with all other BMAD modules

The module embodies the philosophy that testing is not an afterthought but a fundamental part of the development process - with "tests first, AI implements, suite validates" as the guiding principle.

---

*Document generated from BMAD TEA Module analysis*
*Source: /Users/muadhsambul/Downloads/arkived/_bmad/tea/*
*Version: 6.0.3*
