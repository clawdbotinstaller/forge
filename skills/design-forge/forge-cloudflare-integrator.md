---
name: forge-cloudflare-integrator
description: This skill should be used when integrating React frontend with Cloudflare Workers backend, setting up full-stack applications with Hono, configuring CORS and auth, or implementing D1 database access.
version: 2.0.0
---

# Forge Cloudflare Integrator

Production-tested patterns for React + Cloudflare Workers + Hono integration. Transforms frontend designs into full-stack applications.

## When to Use

Activate this skill when:
- User asks to add backend to a React app
- Need to connect frontend to Cloudflare Workers
- Setting up authentication with Clerk
- Configuring CORS for dev/production
- Implementing D1 database access
- Creating API routes for React components
- User says "sync with backend" or "add API"

## Critical Architecture Insights

### 1. @cloudflare/vite-plugin Runs on SAME Port

**Key**: Worker and frontend run on the SAME port during development.

```typescript
// CORRECT: Use relative URLs
fetch('/api/data')

// WRONG: Don't use absolute URLs
fetch('http://localhost:8787/api/data')
```

### 2. CORS Must Be Applied BEFORE Routes

```typescript
// CORRECT ORDER
app.use('/api/*', cors())
app.post('/api/data', handler)

// WRONG ORDER - CORS errors
app.post('/api/data', handler)
app.use('/api/*', cors())
```

### 3. Auth Loading Check

```typescript
// WRONG: Calls API before token ready
useEffect(() => {
  fetch('/api/data') // 401 error!
}, [])

// CORRECT: Wait for auth
const { isLoaded, isSignedIn } = useSession()
useEffect(() => {
  if (!isLoaded || !isSignedIn) return
  fetch('/api/data') // Token ready
}, [isLoaded, isSignedIn])
```

### 4. Environment Variables

**Frontend** (Vite):
- MUST start with `VITE_`
- In `.env` file
- Access: `import.meta.env.VITE_NAME`

**Backend** (Workers):
- NO prefix required
- In `.dev.vars` (dev) or secrets (prod)
- Access: `env.NAME`

### 5. D1 Direct Access

```typescript
// CORRECT: Direct binding access
const { results } = await env.DB.prepare('SELECT * FROM users').run()

// WRONG: No connect() method exists
const connection = await env.DB.connect()
```

## Step-by-Step Integration

### Step 1: Project Setup

Detect or create Workers project structure:

```
project/
├── frontend/              # Existing React app
└── worker/                # Create this
    ├── src/
    │   ├── index.ts       # Main Hono app
    │   └── routes/
    ├── wrangler.toml
    └── package.json
```

### Step 2: Configure Wrangler

Create `worker/wrangler.toml`:

```toml
name = "my-app"
main = "src/index.ts"
compatibility_date = "2024-01-01"

[vars]
ENVIRONMENT = "development"

[[d1_databases]]
binding = "DB"
database_name = "my-db"
database_id = "your-db-id"
```

### Step 3: Add CORS Middleware

Create `worker/src/middleware/cors.ts`:

```typescript
import { cors } from 'hono/cors'

export const corsMiddleware = (env: Env) => cors({
  origin: env.ENVIRONMENT === 'production'
    ? ['https://yourdomain.com']
    : ['http://localhost:5173', 'http://localhost:8787'],
  allowMethods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  allowHeaders: ['Content-Type', 'Authorization'],
  credentials: true,
})
```

### Step 4: Add Auth Middleware (if using Clerk)

Create `worker/src/middleware/auth.ts`:

```typescript
import { verifyToken } from '@clerk/backend'

export const jwtAuthMiddleware = (secretKey: string) => {
  return async (c, next) => {
    const authHeader = c.req.header('Authorization')
    if (!authHeader?.startsWith('Bearer ')) {
      return c.json({ error: 'Unauthorized' }, 401)
    }

    const token = authHeader.slice(7)
    try {
      const payload = await verifyToken(token, { secretKey })
      c.set('userId', payload.sub)
      await next()
    } catch {
      return c.json({ error: 'Invalid token' }, 401)
    }
  }
}
```

### Step 5: Set Up API Client

Create `frontend/src/lib/api.ts`:

```typescript
import { useSession } from '@clerk/clerk-react'
import { useEffect } from 'react'

let getToken: () => Promise<string | null>

export const useApiClient = () => {
  const session = useSession()

  useEffect(() => {
    if (session.session) {
      getToken = () => session.session.getToken()
    }
  }, [session])
}

export const apiClient = {
  async get(path: string) {
    const token = await getToken?.()
    return fetch(path, {
      headers: token ? { Authorization: `Bearer ${token}` } : {}
    })
  },
  async post(path: string, body: unknown) {
    const token = await getToken?.()
    return fetch(path, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        ...(token ? { Authorization: `Bearer ${token}` } : {})
      },
      body: JSON.stringify(body)
    })
  }
}
```

### Step 6: Create API Routes

Create `worker/src/routes/api.ts`:

```typescript
import { Hono } from 'hono'
import { corsMiddleware } from '../middleware/cors'
import { jwtAuthMiddleware } from '../middleware/auth'

const app = new Hono<{ Bindings: Env }>()

// Apply CORS FIRST
app.use('*', (c, next) => corsMiddleware(c.env)(c, next))

// Public routes
app.get('/api/health', (c) => c.json({ status: 'ok' }))

// Protected routes
app.use('/api/protected/*', (c, next) =>
  jwtAuthMiddleware(c.env.CLERK_SECRET_KEY)(c, next)
)

app.get('/api/protected/user', async (c) => {
  const userId = c.get('userId')
  const { results } = await c.env.DB
    .prepare('SELECT * FROM users WHERE id = ?')
    .bind(userId)
    .all()
  return c.json(results)
})

export default app
```

### Step 7: Configure Vite

Update `vite.config.ts`:

```typescript
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import cloudflare from '@cloudflare/vite-plugin'

export default defineConfig({
  plugins: [cloudflare(), react()],
  // No proxy needed - same port!
})
```

## Integration Checklist

**Frontend**:
- [ ] `useApiClient()` called in App component
- [ ] All API calls use relative URLs (`/api/...`)
- [ ] Check `isLoaded` before API calls
- [ ] Environment variables start with `VITE_`

**Backend**:
- [ ] CORS middleware applied BEFORE routes
- [ ] Auth middleware on protected routes
- [ ] Environment variables in `.dev.vars`
- [ ] D1 bindings configured in wrangler.toml
- [ ] Parameterized queries for D1

**Config**:
- [ ] `@cloudflare/vite-plugin` installed
- [ ] `wrangler.toml` has correct bindings
- [ ] `.dev.vars` exists and is gitignored

## Arkived Integration

When working with Arkived projects:

1. Check for existing `worker/` directory structure
2. Use Arkived's established patterns in `CLAUDE.md`
3. Follow Arkived's color palette and component conventions
4. Integrate with existing API routes in `worker/src/index.ts`

## Common Issues

### 401 Unauthorized
- Check `isLoaded` before API calls
- Verify token is being attached

### CORS Errors
- Ensure CORS middleware applied before routes
- Check origin is allowed

### D1 Query Failures
- Verify binding name matches `wrangler.toml`
- Use parameterized queries

## Package Versions

```json
{
  "@clerk/clerk-react": "^5.x",
  "@clerk/backend": "^2.x",
  "hono": "^4.x",
  "@cloudflare/vite-plugin": "^1.x"
}
```
