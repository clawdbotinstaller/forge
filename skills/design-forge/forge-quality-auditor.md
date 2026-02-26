---
name: forge-quality-auditor
description: This skill should be used when validating UI code for quality, checking accessibility compliance, enforcing baseline-ui standards, or reviewing code before deployment.
version: 2.0.0
---

# Forge Quality Auditor

Validate UI code for quality, accessibility, and baseline-ui compliance. Enforces WCAG 2.1 AA standards and best practices.

## When to Use

Activate this skill when:
- User asks to audit or review UI code
- Need to check accessibility compliance
- Enforcing baseline-ui standards
- Pre-deployment quality checks
- User says "/audit" or "check quality"

## Validation Areas

### 1. Accessibility (WCAG 2.1 AA)

Check for:

**Color Contrast**
- Minimum 4.5:1 for normal text
- Minimum 3:1 for large text
- Minimum 3:1 for UI components

**Keyboard Navigation**
- All interactive elements focusable
- Visible focus indicators
- Logical tab order

**ARIA Labels**
- Images have alt text
- Interactive elements have labels
- Live regions for dynamic content

**Semantic HTML**
- Proper heading hierarchy (h1 → h2 → h3)
- Landmark regions (header, main, nav, footer)
- Lists use ul/ol/li

### 2. Baseline-UI Compliance

Check for:

**Tailwind Usage**
- Use standard Tailwind classes
- No arbitrary values without reason
- Consistent spacing (4px base)

**Color Usage**
- No gradients unless specified
- Use design system colors
- Semantic color naming

**Typography**
- Use defined type scale
- Minimum 16px body text
- Adequate line height (1.5+)

**Spacing**
- Consistent padding/margins
- Use spacing scale (4, 8, 12, 16, etc.)
- Adequate touch targets (44px min)

### 3. Code Quality

Check for:

**TypeScript**
- No implicit any
- Props are typed
- Return types specified

**React Patterns**
- Proper hook usage
- No prop drilling
- Memoization where needed

**Performance**
- No inline functions in render
- Images have dimensions
- Lazy loading for below-fold

## Audit Report Format

Generate report as:

```markdown
# Quality Audit Report

## Summary
- Status: PASS / WARNINGS / FAIL
- Issues: {count}
- Critical: {count}
- Warnings: {count}

## Accessibility

### Color Contrast
- Primary text meets 4.5:1 ratio
- Button text ratio 4.2:1 (should be 4.5:1)

### Keyboard Navigation
- All buttons focusable
- Custom dropdown lacks keyboard support

### ARIA
- Images have alt text
- Icon button missing aria-label

## Baseline-UI

### Colors
- Using design system tokens
- Gradient detected (not in spec)

### Spacing
- Consistent 4px base
- Adequate touch targets

## Code Quality

### TypeScript
- All props typed
- No implicit any

### React
- Proper hook deps
- Consider useMemo for expensive calc

## Recommendations

1. Fix button contrast ratio
2. Add keyboard support to dropdown
3. Remove gradient or add to design system
```

## Automated Checks

For files being written/edited, check:

1. **On Write** (PreToolUse hook):
   - Color contrast
   - Touch target sizes
   - ARIA labels on interactive elements

2. **After Write** (PostToolUse hook):
   - Full accessibility audit
   - Baseline-ui compliance
   - Code quality metrics

## Fix Recommendations

When issues found, suggest fixes:

**Low Contrast**
```
Issue: Text color #888 on white (ratio 3.5:1)
Fix: Change to #666 (ratio 5.7:1)
```

**Missing Alt Text**
```
Issue: Image without alt attribute
Fix: Add descriptive alt="Description of image"
```

**Missing Focus Styles**
```
Issue: Button lacks focus-visible style
Fix: Add focus-visible:ring-2 focus-visible:ring-primary
```

## Integration

Works with:
- `forge-orchestrator` for Phase 6
- `forge-react-generator` for code validation
- Hooks for automatic validation

## Commands

Use with `/audit` command to run full audit on:
- Specific files
- Entire project
- Pre-deployment check
