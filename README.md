# The Pimp Koto Project - Frontend

A modern React Router 7 frontend application built with TypeScript and Docker containerization.

## 🚀 Quick Start

### Prerequisites

- [Docker](https://www.docker.com/get-started) and Docker Compose
- [pnpm](https://pnpm.io/) (for local development)
- [Node.js 22+](https://nodejs.org/) (for editor support)

### Setup

1. Clone the repository
2. Install dependencies for editor support: `pnpm install`

## 🐳 Docker Development

### Development Environment

Start the development environment with hot reloading:

```bash
pnpm docker:dev
```

This starts:

- **React Router Frontend** on [http://localhost:5173](http://localhost:5173)

### Development Commands

```bash
# Start development environment
pnpm docker:dev

# Stop development environment
pnpm docker:dev:stop

# View logs
pnpm docker:dev:logs

# Clean up (removes containers and volumes)
pnpm docker:dev:clean
```

## 🏭 Production Deployment

### Production Environment

Deploy the production-ready application:

```bash
pnpm docker:prod
```

This starts:

- **React Router Frontend** (optimized build) on [http://localhost:3000](http://localhost:3000)

### Production Commands

```bash
# Start production environment
pnpm docker:prod

# Stop production environment
pnpm docker:prod:stop

# View logs
pnpm docker:prod:logs

# Clean up (removes containers and volumes)
pnpm docker:prod:clean
```

## 🛠️ Local Development (Alternative)

For local development without Docker:

```bash
# Install dependencies
pnpm install

# Start development server
pnpm dev

# Build for production
pnpm build

# Start production server
pnpm start

# Type checking
pnpm typecheck
```

## 🧹 Code Quality

```bash
# Lint code
pnpm lint

# Fix linting issues
pnpm lint:fix

# Format code
pnpm format

# Check formatting
pnpm format:check
```

## 📁 Project Structure

```
app/
├── root.tsx            # Root React component
├── routes.ts           # Route configuration
├── app.css             # Global styles
├── routes/             # Page components
│   └── home.tsx
└── welcome/            # Welcome page assets
    ├── logo-dark.svg
    ├── logo-light.svg
    └── welcome.tsx

public/                 # Static assets
├── favicon.ico

docker-compose.dev.yml  # Development Docker config
docker-compose.prod.yml # Production Docker config
Dockerfile             # Multi-stage Docker build
```

## 🔧 Configuration

### Docker Architecture

- **Multi-stage Dockerfile** with base, development, build, and production stages
- **Named volumes** for node_modules persistence
- **Development**: Includes hot reloading and volume mounting
- **Production**: Optimized build with minimal runtime image

### Code Quality Tools

- **ESLint** - Code linting with TypeScript support
- **Prettier** - Code formatting
- **Husky** - Git hooks for pre-commit quality checks
- **lint-staged** - Run linters on staged files
- **commitlint** - Conventional commit message enforcement

## 🔗 Git Workflow

This project uses conventional commits with automated quality checks:

```bash
# Example commit messages
git commit -m "feat: add user dashboard"
git commit -m "fix: resolve navigation issue"
git commit -m "docs: update README"
```

Pre-commit hooks automatically:

- Lint and format staged files
- Validate commit messages
- Run type checking

## 🧪 Tech Stack

- **React 19** - Latest React with concurrent features
- **React Router 7** - Full-stack React framework with SSR
- **TypeScript** - Type-safe development
- **Tailwind CSS 4** - Utility-first CSS framework
- **Vite** - Fast build tooling and dev server
- **Node.js 22** - Latest LTS runtime
- **Docker** - Containerized development and deployment

## 🔗 Useful Links

- [React Router Documentation](https://reactrouter.com/docs)
- [TypeScript Documentation](https://www.typescriptlang.org/docs/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Docker Documentation](https://docs.docker.com/)
- [pnpm Documentation](https://pnpm.io/)
