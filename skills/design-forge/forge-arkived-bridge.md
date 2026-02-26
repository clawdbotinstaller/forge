---
name: forge-arkived-bridge
description: This skill should be used when integrating design-forge workflows with the Arkived plugin, applying Arkived design patterns, or working within the Arkived project ecosystem.
version: 2.0.0
---

# Forge Arkived Bridge

Integrate DesignForge workflows with the Arkived plugin. Applies Arkived-specific patterns and conventions for seamless collaboration.

## When to Use

Activate this skill when:
- Working on an Arkived project
- Need to integrate with Arkived design system
- Using DesignForge within Arkived ecosystem
- User asks to "sync with Arkived" or "apply Arkived patterns"

## Arkived Design System

### Color Palette

| Token | Value | Usage |
|-------|-------|-------|
| `bg-paper-cream` | `#F5F1E8` | Main background |
| `bg-paper-aged` | `#EDE8D0` | Cards, index cards |
| `text-ink-black` | `#1A1A1A` | Headlines, body |
| `text-pencil-gray` | `#6B6B6B` | Secondary text |
| `text-blueprint-navy` | `#1E3A5F` | Technical labels |
| `bg-stamp-red` | `#C53030` | CTAs, alerts |
| `border-blueprint-navy` | `#1E3A5F` | Type 2 borders |
| `bg-highlighter-yellow` | `#FEF3C7` | Highlights, Type 3 |

### Typography

```
font-condensed   // Uppercase labels, navigation
font-serif       // Body text, headlines
font-mono        // Code, math formulas
```

### Component Patterns

**Index Card** (standard container):
```tsx
<div className="index-card p-6 bg-paper-aged rounded shadow-sm">
  {/* Content */}
</div>
```

**Technical Stamp** (callouts):
```tsx
<div className="technical-stamp border-2 border-stamp-red rounded p-4">
  {/* Content */}
</div>
```

## Integration Points

### 1. Design System Sync

When creating design system:
- Use Arkived color tokens
- Apply Arkived typography
- Follow component patterns
- Generate Arkived-compatible CSS

### 2. Component Library

Map DesignForge components to Arkived:

| DesignForge | Arkived Equivalent |
|-------------|-------------------|
| Card | Index Card (bg-paper-aged) |
| Button (primary) | Stamp Red button |
| Alert | Technical Stamp |
| Input | Blueprint-bordered input |

### 3. API Integration

Arkived API patterns:

```typescript
// Use existing API client from Arkived
import { apiClient } from '@/lib/api'

// Follow Arkived endpoint patterns
const endpoints = {
  courses: '/api/courses',
  questions: '/api/questions',
  user: '/api/auth/me',
}
```

### 4. File Structure

Align with Arkived structure:

```
src/
├── components/          # Reusable UI
├── pages/               # Route pages
│   └── course/          # Course-specific
├── lib/                 # API client
├── contexts/            # React contexts
└── hooks/               # Custom hooks
```

## Workflow Integration

### Phase 2: Design System

Override with Arkived tokens:

```typescript
// tailwind.config.ts
export default {
  theme: {
    extend: {
      colors: {
        'paper-cream': '#F5F1E8',
        'paper-aged': '#EDE8D0',
        'ink-black': '#1A1A1A',
        'blueprint-navy': '#1E3A5F',
        'stamp-red': '#C53030',
        'highlighter-yellow': '#FEF3C7',
      },
      fontFamily: {
        condensed: ['var(--font-condensed)', 'sans-serif'],
        serif: ['var(--font-serif)', 'serif'],
        mono: ['var(--font-mono)', 'monospace'],
      },
    },
  },
}
```

### Phase 7: React Generation

Use Arkived component patterns:

```tsx
// Use Arkived conventions
import { IndexCard } from '@/components/IndexCard'
import { TechnicalStamp } from '@/components/TechnicalStamp'

// Follow Arkived file organization
pages/
├── course/
│   ├── CourseHome.tsx
│   └── CourseArchive.tsx
```

### Phase 8: Cloudflare Integration

Use Arkived worker patterns:

```typescript
// Follow Arkived API structure
// Reference worker/src/index.ts patterns
// Use same D1 table conventions
```

## Commands Integration

DesignForge commands work alongside Arkived:

| Command | Arkived Equivalent |
|---------|-------------------|
| `/forge` | `/arkived:plan` + `/arkived:work` |
| `/design-system` | Apply Arkived design tokens |
| `/audit` | `/arkived:review` |

## Best Practices

1. **Check CLAUDE.md first** - Read project-specific guidance
2. **Use existing components** - Don't duplicate Arkived patterns
3. **Follow API conventions** - Match Arkived endpoint style
4. **Respect credit system** - Understand Arkived's credit model
5. **Apply LaTeX patterns** - For math content (if applicable)

## Detection

Auto-detect Arkived project by:
- Presence of `CLAUDE.md` with Arkived references
- Existing `worker/src/index.ts` with Hono setup
- Specific color tokens in Tailwind config
- Arkived plugin in settings

## Integration

Works with:
- `forge-orchestrator` for Phase 9 (optional)
- All other DesignForge skills
- Arkived plugin commands
- Arkived agent ecosystem
