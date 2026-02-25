---
name: forge:test
description: Run comprehensive tests with parallel testing agents
---

# /forge:test

Run comprehensive tests with parallel testing agents.

## Process

1. **Unit tests** - `npm test`
2. **Type check** - `tsc --noEmit`
3. **Browser tests** - Playwright screenshots
4. **Integration tests** - Full flows

## Agents

- `unit-test-agent` - Unit test execution
- `type-check-agent` - TypeScript validation
- `browser-test-agent` - Visual/UI testing
- `integration-agent` - Integration testing

## Next Steps

After test:
- `/forge:validate` - Verify against requirements
- `/forge:build` - If fixes needed

## Required Skill

**REQUIRED:** `@forge-test`
