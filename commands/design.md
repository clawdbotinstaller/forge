---
name: forge:design
description: Generate UI/UX specifications with Stitch integration
argument-hint: "[design requirements or skip if following workflow]"
---

# /forge:design

Generate UI/UX specifications with Stitch AI integration and design system compliance.

## Usage

```bash
/forge:design "user profile page with avatar"
/forge:design                      # Continue from research
```

## Process

1. **Load research** - Apply discovered patterns
2. **Generate with Stitch** - Create visual designs
3. **Apply design system** - Validate against conventions
4. **Document specs** - Write to `docs/forge/design.md`

## Integration

Auto-loads:
- `@design-system` - Project design system
- `@frontend-design` - Implementation guidance

## Next Steps

After design:
- `/forge:plan` - Create implementation tasks

## Required Skill

**REQUIRED:** `@forge-design`
