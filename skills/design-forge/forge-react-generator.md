---
name: forge-react-generator
description: This skill should be used when converting designs to React components, generating TypeScript React code, creating component libraries, or building Vite-based React applications.
version: 2.0.0
---

# Forge React Generator

Convert designs to production-ready React components with TypeScript, Tailwind CSS, and Vercel best practices.

## When to Use

Activate this skill when:
- User asks to convert designs to React
- Generating components from Stitch designs
- Building React application structure
- Creating component libraries
- User says "convert to code" or "build React app"

## Output Structure

Generate complete React project:

```
src/
├── components/
│   ├── ui/              # Primitive components
│   │   ├── Button.tsx
│   │   ├── Card.tsx
│   │   ├── Input.tsx
│   │   └── index.ts
│   ├── layout/          # Layout components
│   │   ├── Header.tsx
│   │   ├── Footer.tsx
│   │   ├── Sidebar.tsx
│   │   └── index.ts
│   └── sections/        # Page sections
│       ├── Hero.tsx
│       ├── Features.tsx
│       └── index.ts
├── hooks/
│   ├── useAuth.ts
│   ├── useApi.ts
│   └── index.ts
├── lib/
│   ├── api.ts
│   ├── utils.ts
│   └── constants.ts
├── types/
│   └── index.ts
├── styles/
│   └── globals.css
└── App.tsx
```

## Component Patterns

### Button Component

```tsx
// components/ui/Button.tsx
import * as React from 'react'
import { cva, type VariantProps } from 'class-variance-authority'
import { cn } from '@/lib/utils'

const buttonVariants = cva(
  'inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors',
  {
    variants: {
      variant: {
        default: 'bg-primary text-white hover:bg-primary-hover',
        secondary: 'bg-surface border border-border hover:bg-muted',
        ghost: 'hover:bg-muted',
      },
      size: {
        default: 'h-10 px-4 py-2',
        sm: 'h-8 px-3',
        lg: 'h-12 px-6',
      },
    },
    defaultVariants: {
      variant: 'default',
      size: 'default',
    },
  }
)

export interface ButtonProps
  extends React.ButtonHTMLAttributes<HTMLButtonElement>,
    VariantProps<typeof buttonVariants> {}

export const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  ({ className, variant, size, ...props }, ref) => {
    return (
      <button
        className={cn(buttonVariants({ variant, size, className }))}
        ref={ref}
        {...props}
      />
    )
  }
)
Button.displayName = 'Button'
```

### Card Component

```tsx
// components/ui/Card.tsx
import * as React from 'react'
import { cn } from '@/lib/utils'

export const Card = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement>
>(({ className, ...props }, ref) => (
  <div
    ref={ref}
    className={cn(
      'rounded-lg border bg-surface p-6 shadow-md',
      className
    )}
    {...props}
  />
))
Card.displayName = 'Card'

export const CardHeader = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement>
>(({ className, ...props }, ref) => (
  <div ref={ref} className={cn('flex flex-col space-y-1.5', className)} {...props} />
))
CardHeader.displayName = 'CardHeader'

export const CardTitle = React.forwardRef<
  HTMLHeadingElement,
  React.HTMLAttributes<HTMLHeadingElement>
>(({ className, ...props }, ref) => (
  <h3 ref={ref} className={cn('text-lg font-semibold', className)} {...props} />
))
CardTitle.displayName = 'CardTitle'

export const CardContent = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement>
>(({ className, ...props }, ref) => (
  <div ref={ref} className={cn('pt-4', className)} {...props} />
))
CardContent.displayName = 'CardContent'
```

### Utility Function

```tsx
// lib/utils.ts
import { type ClassValue, clsx } from 'clsx'
import { twMerge } from 'tailwind-merge'

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}
```

## Dependencies

Install required packages:

```bash
npm install clsx tailwind-merge class-variance-authority
npm install -D @types/react @types/react-dom
```

## TypeScript Configuration

Ensure `tsconfig.json` has path aliases:

```json
{
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@/*": ["./src/*"]
    }
  }
}
```

## Vite Configuration

```typescript
// vite.config.ts
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import path from 'path'

export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src'),
    },
  },
})
```

## Best Practices

1. **Use TypeScript** - Type all props and returns
2. **Forward refs** - All components should forward refs
3. **Use cn() utility** - Merge Tailwind classes properly
4. **Export from index.ts** - Centralize exports
5. **Keep components small** - Single responsibility
6. **Use composition** - Build complex UIs from primitives

## Integration

Works with:
- `forge-orchestrator` for Phase 7
- `forge-design-system` for design tokens
- `forge-quality-auditor` for code quality
- `forge-cloudflare-integrator` for API integration
