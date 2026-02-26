---
name: forge-design-system
description: Use when creating design systems, defining color palettes, establishing typography scales, or building component libraries for React applications. Self-contained design system creation.
---

# Forge Design System

Create comprehensive design systems with colors, typography, spacing, and component patterns. Part of FORGE - fully self-contained.

## When to Use

Activate this skill when:
- User asks to create a design system
- Need to establish visual foundations (colors, typography)
- Building component library from scratch
- Defining spacing and layout scales
- User says "create design tokens" or "design system"

## Design System Structure

Create in `design-system/MASTER.md`:

```markdown
# Design System: {Project Name}

## Brand Foundation

### Brand Personality
- Tone: [Professional/Friendly/Bold/etc.]
- Values: [List 3-5 core values]
- Target Audience: [Description]

## Color Palette

### Primary Colors
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-primary` | #XXX | Main actions, CTAs |
| `--color-primary-hover` | #XXX | Hover states |
| `--color-primary-light` | #XXX | Backgrounds |

### Secondary Colors
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-secondary` | #XXX | Secondary actions |
| `--color-accent` | #XXX | Highlights |

### Neutral Colors
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-background` | #XXX | Page background |
| `--color-surface` | #XXX | Cards, panels |
| `--color-text` | #XXX | Primary text |
| `--color-text-muted` | #XXX | Secondary text |
| `--color-border` | #XXX | Borders, dividers |

### Semantic Colors
| Token | Hex | Usage |
|-------|-----|-------|
| `--color-success` | #XXX | Success states |
| `--color-warning` | #XXX | Warning states |
| `--color-error` | #XXX | Error states |
| `--color-info` | #XXX | Info states |

## Typography

### Font Families
```
--font-sans: 'Inter', system-ui, sans-serif;
--font-mono: 'JetBrains Mono', monospace;
--font-serif: 'Merriweather', serif;
```

### Type Scale
| Level | Size | Weight | Line Height | Letter Spacing | Usage |
|-------|------|--------|-------------|----------------|-------|
| H1 | 48px | 700 | 1.1 | -0.02em | Page titles |
| H2 | 36px | 700 | 1.2 | -0.01em | Section headers |
| H3 | 24px | 600 | 1.3 | 0 | Subsections |
| H4 | 20px | 600 | 1.4 | 0 | Card titles |
| Body | 16px | 400 | 1.6 | 0 | Body text |
| Small | 14px | 400 | 1.5 | 0 | Captions |
| Caption | 12px | 500 | 1.4 | 0.02em | Labels |

## Spacing Scale

```
--space-1: 4px;
--space-2: 8px;
--space-3: 12px;
--space-4: 16px;
--space-5: 24px;
--space-6: 32px;
--space-7: 48px;
--space-8: 64px;
--space-9: 96px;
--space-10: 128px;
```

## Border Radius

```
--radius-none: 0;
--radius-sm: 4px;
--radius-md: 8px;
--radius-lg: 12px;
--radius-xl: 16px;
--radius-full: 9999px;
```

## Shadows

```
--shadow-sm: 0 1px 2px 0 rgba(0,0,0,0.05);
--shadow-md: 0 4px 6px -1px rgba(0,0,0,0.1);
--shadow-lg: 0 10px 15px -3px rgba(0,0,0,0.1);
--shadow-xl: 0 20px 25px -5px rgba(0,0,0,0.1);
```

## Component Patterns

### Button
- Padding: `--space-3` `--space-5`
- Border radius: `--radius-md`
- Font: Body, weight 500
- Primary: Primary bg, white text
- Secondary: Transparent, border
- Ghost: No background

### Card
- Padding: `--space-5`
- Background: `--color-surface`
- Border radius: `--radius-lg`
- Shadow: `--shadow-md`
- Border: 1px solid `--color-border`

### Input
- Padding: `--space-3` `--space-4`
- Border: 1px solid `--color-border`
- Border radius: `--radius-md`
- Focus: Primary color border

## Layout

### Container
- Max width: 1200px
- Padding: `--space-4` (mobile), `--space-6` (desktop)

### Grid
- Columns: 12
- Gap: `--space-6`
- Breakpoints:
  - sm: 640px
  - md: 768px
  - lg: 1024px
  - xl: 1280px
```

## Tailwind Configuration

Generate `tailwind.config.ts`:

```typescript
import type { Config } from 'tailwindcss'

export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: '#XXX',
          hover: '#XXX',
          light: '#XXX',
        },
        // ... other colors
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
        mono: ['JetBrains Mono', 'monospace'],
      },
      spacing: {
        '1': '4px',
        '2': '8px',
        // ... etc
      },
      borderRadius: {
        'sm': '4px',
        'md': '8px',
        // ... etc
      },
    },
  },
  plugins: [],
} satisfies Config
```

## CSS Variables

Generate `src/styles/variables.css`:

```css
:root {
  /* Colors */
  --color-primary: #XXX;
  --color-primary-hover: #XXX;
  --color-background: #XXX;
  --color-text: #XXX;

  /* Typography */
  --font-sans: 'Inter', system-ui, sans-serif;
  --font-mono: 'JetBrains Mono', monospace;

  /* Spacing */
  --space-1: 4px;
  --space-2: 8px;
  /* ... etc */

  /* Effects */
  --radius-md: 8px;
  --shadow-md: 0 4px 6px -1px rgba(0,0,0,0.1);
}
```

## Usage

1. Create MASTER.md with complete specifications
2. Generate tailwind.config.ts
3. Generate CSS variables file
4. Apply to components

## Integration with FORGE

Works within FORGE workflow:
- `/forge:design` phase - Design system creation
- `/forge:plan` phase - Component implementation planning
- `/forge:build` phase - Apply design system to code

## Success Criteria

Design system is complete when:
- [ ] Color palette defined with tokens
- [ ] Typography scale established
- [ ] Spacing system created
- [ ] Component patterns documented
- [ ] Tailwind config generated
- [ ] CSS variables file created
