---
name: forge-stitch-master
description: Use when generating visual designs with Google Stitch, creating UI mockups, iterating on design concepts, or producing design assets from specifications. Part of FORGE.
---

# Forge Stitch Master

Generate visual designs using Google Stitch MCP. Create screens from design specifications with iterative refinement. Fully integrated with FORGE workflow.

## When to Use

Activate this skill when:
- User asks to generate visual designs
- Need to create UI mockups from specs
- Iterating on design concepts with Stitch
- Converting design system to visual assets
- User says "generate screens" or "Stitch preview"
- During `/forge:design` phase with stitch_enabled

## Prerequisites

Requires:
- Stitch MCP server configured (optional - skill works without it)
- `STITCH_API_KEY` environment variable set (if using Stitch)
- Design system specifications (from `forge-design-system`)

## Workflow

### Step 1: Create Design Brief

Document design requirements:

```markdown
## Design Brief

**Pages to design:**
- Landing page
- Dashboard
- Settings page

**Design system:** docs/forge/design.md
**Style:** Modern, minimal, professional
**Color palette:** [from design system]
**Typography:** [from design system]
```

### Step 2: Generate Screens (with Stitch)

If Stitch MCP is available:

```
Generate Stitch screen for:
- Page: {page name}
- Design system: {reference to design.md}
- Key elements: {list components}
- Style: {modern/minimal/bold/etc.}
```

### Step 3: Iterate

Review generated screens and iterate:

```
If changes needed:
- Specify what to modify
- Request new generation
- Compare versions
```

### Step 4: Document in FORGE

Save to `docs/forge/design.md`:

```markdown
## Stitch Designs

### Screen 1: Landing Page
**Description:** [What this screen shows]
**Key Elements:**
- [Element 1 with specs]
- [Element 2 with specs]
```

## Without Stitch MCP

If Stitch is not available, this skill:
1. Creates detailed design specifications
2. Provides HTML/CSS mockups
3. Describes visual designs in detail
4. Integrates with `frontend-design` skill for implementation

## Prompt Templates

### Landing Page

```
Create a modern landing page for {product}.

Design specifications:
- Primary color: {hex}
- Background: {hex}
- Typography: Clean sans-serif
- Style: {modern/minimal/bold}

Sections:
1. Hero with headline and CTA
2. Feature grid (3 cards)
3. Testimonial section
4. Pricing table
5. Footer

Ensure high contrast and accessible design.
Use the specified color palette consistently.
```

### Dashboard

```
Create a dashboard interface for {product}.

Layout:
- Sidebar navigation
- Top header with user menu
- Main content area with:
  - Stats cards (4 metrics)
  - Chart area
  - Recent activity list

Design specifications:
- Primary: {hex}
- Surface: {hex}
- Clean, professional aesthetic
- Card-based organization
- Clear visual hierarchy
```

## Integration with FORGE

**Works within FORGE phases:**
- `/forge:design` - Generate visual designs
- `/forge:plan` - Convert designs to implementation tasks
- `/forge:build` - Implement from design specs

**Success Criteria:**
- [ ] Design specifications complete
- [ ] Visual designs generated (Stitch or described)
- [ ] Design tokens documented
- [ ] Component specs ready for implementation

## Fallback Mode

When Stitch MCP is unavailable:
- Creates detailed text-based design specs
- Generates HTML/CSS prototypes
- Provides design guidance for manual implementation
- Works with `frontend-design` skill
