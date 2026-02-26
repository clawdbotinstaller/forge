---
name: forge-orchestrator
description: This skill should be used when the user runs "/forge", requests end-to-end design-to-code workflow, starts a new UI project, or asks for complete design and development pipeline.
version: 2.0.0
---

# Forge Orchestrator

Coordinate the complete 9-phase DesignForge workflow, activating appropriate skills at each phase and maintaining project context.

## When to Use

Activate this skill when:
- User runs `/forge` command
- User requests end-to-end design-to-code workflow
- Starting a new UI project from scratch
- Need complete pipeline from discovery to deployment

## 9-Phase Workflow

### Phase 1: Discovery
**Goal**: Understand requirements
**Actions**:
1. Activate `brainstorming` skill from available skills
2. Interview user:
   - What problem does this solve?
   - Who is the primary user?
   - What visual style? (modern/minimal/bold/playful/luxury)
   - Any reference products for inspiration?
   - Key features needed?
3. Store in `.design-forge/{project}/context.md`

**Output**: Project context document

### Phase 2: Design System
**Goal**: Create comprehensive design specifications
**Actions**:
1. Activate `forge-design-system` skill
2. Detect framework and package manager
3. Generate design tokens and specifications
4. Create `design-system/MASTER.md`

**Output**: MASTER.md with colors, typography, spacing, effects

### Phase 3: Variations
**Goal**: Generate design options
**Actions**:
1. Activate `design-lab` skill (from global skills)
2. Generate 5 variants (A-E):
   - A: Information hierarchy focus
   - B: Visual impact focus
   - C: Minimal/clean focus
   - D: Interactive/dynamic focus
   - E: Unique creative direction
3. Create `__design_lab` route
4. Collect user feedback

**Output**: Selected variant direction

### Phase 4: Stitch Preview
**Goal**: Generate visual preview
**Actions**:
1. Activate `forge-stitch-master` skill
2. Create Stitch project with selected variant
3. Generate screens in `queue/`
4. Iterate based on feedback

**Output**: Visual design assets

### Phase 5: Animation
**Goal**: Add motion design
**Actions**:
1. Activate `interaction-design` skill (from global skills)
2. Activate `12-principles-of-animation` skill (from global skills)
3. Define animation specs
4. Create animation variants

**Output**: Animation system specifications

### Phase 6: Quality Gate
**Goal**: Validate design quality
**Actions**:
1. Activate `forge-quality-auditor` skill
2. Run accessibility checks
3. Validate baseline-ui compliance
4. Fix issues before proceeding

**Output**: Quality approval

### Phase 7: React Conversion
**Goal**: Generate React code
**Actions**:
1. Activate `forge-react-generator` skill
2. Convert designs to components
3. Apply Vercel best practices
4. Generate component library

**Output**: React application in `src/`

### Phase 8: Cloudflare Integration
**Goal**: Set up backend
**Actions**:
1. Activate `forge-cloudflare-integrator` skill
2. Configure Workers project
3. Set up API routes
4. Implement auth if needed

**Output**: Cloudflare Worker backend

### Phase 9: Arkived Integration (Optional)
**Goal**: Sync with Arkived patterns
**Actions**:
1. Activate `forge-arkived-bridge` skill
2. Apply Arkived design patterns
3. Integrate with existing components
4. Final quality check

**Output**: Production-ready application

## Project Structure

```
.design-forge/{project}/
├── context.md              # Phase 1 output
├── design-system/
│   └── MASTER.md          # Phase 2 output
├── lab/                    # Phase 3 output
├── queue/                  # Phase 4 output
│   ├── {screen}.html
│   ├── {screen}.png
│   └── metadata.json
├── animations/             # Phase 5 output
├── src/                    # Phase 7 output
│   ├── components/
│   ├── hooks/
│   └── lib/
└── worker/                 # Phase 8 output
    ├── src/
    └── wrangler.toml
```

## Checkpoint System

Workflow pauses at these points for user approval:
1. After Design System (review MASTER.md)
2. After Design Lab (select variant A-E)
3. After Stitch preview (approve/iterate)
4. After Animation (review motion)
5. After React conversion (review code)
6. Final approval before completion

## Integration with Other Skills

This orchestrator coordinates:
- Global skills: `brainstorming`, `design-lab`, `interaction-design`, `12-principles-of-animation`
- Plugin skills: `forge-design-system`, `forge-stitch-master`, `forge-react-generator`, `forge-quality-auditor`, `forge-cloudflare-integrator`, `forge-arkived-bridge`

## Output

Upon completion:
- Production-ready React application
- Cloudflare Worker backend
- Comprehensive design system
- Animation system
- WCAG 2.1 AA accessibility compliance
- Integration with Arkived patterns (if applicable)
