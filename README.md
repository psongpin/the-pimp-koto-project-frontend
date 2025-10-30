# The Pimp Koto Project Frontend

A modern, production-ready React application built with React Router 7, featuring Docker containerization, code quality tools, and streamlined development workflows.

## Features

- 🚀 **React Router 7** - Latest version with server-side rendering
- ⚡️ **Hot Module Replacement (HMR)** - Instant development feedback
- 📦 **Asset bundling and optimization** - Vite-powered build system
- 🔄 **Data loading and mutations** - Built-in data management
- 🔒 **TypeScript** - Type-safe development by default
- � **TailwindCSS 4** - Latest utility-first CSS framework
- 🐳 **Docker Support** - Multi-stage builds for dev and production
- � **Code Quality Tools** - ESLint, Prettier, and Husky integration
- 🔧 **Package Management** - pnpm for fast, efficient dependency management
- 📝 **Conventional Commits** - Enforced commit message standards
- 🧹 **Lint-staged** - Pre-commit code quality checks

## Getting Started

### Prerequisites

- Docker and Docker Compose (recommended for development)
- Node.js 20 or later and pnpm (for local development only)

### Installation

For Docker-based development (recommended):

```bash
# No installation needed - Docker handles everything
pnpm docker:dev
```

For local development:

```bash
pnpm install
```

### Development

**Preferred: Docker Development**

Start the development environment with Docker (recommended):

```bash
pnpm docker:dev
```

Your application will be available at `http://localhost:5173` with hot reload enabled.

**Alternative: Local Development**

Start the development server locally:

```bash
pnpm dev
```

### Code Quality

This project includes several code quality tools that work seamlessly with Docker:

**Using Docker (recommended):**

```bash
# Run linting in container
docker exec pimp-koto-frontend-dev pnpm lint

# Fix linting issues
docker exec pimp-koto-frontend-dev pnpm lint:fix

# Format code
docker exec pimp-koto-frontend-dev pnpm format
```

**Local development:**

```bash
# Run ESLint
pnpm lint

# Fix ESLint issues automatically
pnpm lint:fix

# Format code with Prettier
pnpm format

# Check if code is properly formatted
pnpm format:check
```

**Type Checking:**

```bash
# In Docker
docker exec pimp-koto-frontend-dev pnpm typecheck

# Locally
pnpm typecheck
```

### Git Workflow

This project uses conventional commits and automated code quality checks:

- **Husky** runs pre-commit hooks
- **lint-staged** formats and lints staged files
- **commitlint** enforces conventional commit messages

Example commit message format:

```
feat: add user authentication
fix: resolve navigation bug
docs: update README with new workflow
```

## Building for Production

**Using Docker (recommended):**

```bash
pnpm docker:prod
```

**Local build:**

```bash
pnpm build
```

Start the production server locally:

```bash
pnpm start
```

## Docker Development

### Quick Start

The easiest way to get started is with Docker:

```bash
# Start development environment
pnpm docker:dev

# View in browser at http://localhost:5173
```

### Development Environment

Run the development environment with Docker:

```bash
# Build and start development container
pnpm docker:dev

# Run in detached mode (background)
pnpm docker:dev:detach

# View logs
pnpm docker:dev:logs

# Stop the container
pnpm docker:dev:stop

# Clean up volumes and containers
pnpm docker:dev:clean
```

The development container includes:

- Hot reload enabled
- Volume mounting for live code changes
- Development dependencies included
- Automatic port mapping (5173:5173)

### Production Environment

Run the production environment with Docker:

```bash
# Build and start production container
pnpm docker:prod

# Run in detached mode
pnpm docker:prod:detach

# View logs
pnpm docker:prod:logs

# Stop the container
pnpm docker:prod:stop

# Clean up volumes and containers
pnpm docker:prod:clean
```

The production container:

- Optimized build with only production dependencies
- Serves on port 3000
- Includes restart policies
- Multi-stage build for smaller image size

## Deployment

### Docker Deployment

The project includes multi-stage Docker builds optimized for both development and production:

**Development:**

```bash
docker-compose -f docker-compose.dev.yml up --build
```

**Production:**

```bash
docker-compose -f docker-compose.prod.yml up --build
```

The containerized application can be deployed to any platform that supports Docker, including:

- AWS ECS/EKS
- Google Cloud Run/GKE
- Azure Container Apps/AKS
- Digital Ocean App Platform
- Fly.io
- Railway
- Heroku Container Registry

### Traditional Deployment

If you're familiar with deploying Node applications, the built-in app server is production-ready.

Make sure to deploy the output of `pnpm build`:

```
├── package.json
├── pnpm-lock.yaml
├── build/
│   ├── client/    # Static assets
│   └── server/    # Server-side code
```

### Environment Variables

Configure your deployment with the following environment variables:

- `NODE_ENV`: Set to `production` for production builds
- Additional environment variables can be added as needed

## Styling

This template comes with [Tailwind CSS 4](https://tailwindcss.com/) already configured for a simple default starting experience. You can use whatever CSS framework you prefer.

## Project Structure

```
├── app/                    # Application source code
│   ├── routes/            # Route components
│   ├── welcome/           # Welcome page assets
│   ├── app.css           # Global styles
│   ├── root.tsx          # Root component
│   └── routes.ts         # Route configuration
├── public/               # Static assets
├── build/                # Production build output (generated)
├── docker-compose.*.yml  # Docker configurations
├── Dockerfile           # Multi-stage Docker build
└── Configuration files:
    ├── eslint.config.js
    ├── commitlint.config.js
    ├── lint-staged.config.js
    ├── react-router.config.ts
    ├── tsconfig.json
    └── vite.config.ts
```

## Available Scripts

| Script                    | Description                                     |
| ------------------------- | ----------------------------------------------- |
| `pnpm docker:dev`         | **Start development with Docker (recommended)** |
| `pnpm docker:prod`        | **Build and run production with Docker**        |
| `pnpm docker:dev:detach`  | Run development container in background         |
| `pnpm docker:dev:logs`    | View development container logs                 |
| `pnpm docker:dev:stop`    | Stop development container                      |
| `pnpm docker:dev:clean`   | Clean up development volumes                    |
| `pnpm docker:prod:detach` | Run production container in background          |
| `pnpm docker:prod:logs`   | View production container logs                  |
| `pnpm docker:prod:stop`   | Stop production container                       |
| `pnpm docker:prod:clean`  | Clean up production volumes                     |
| `pnpm dev`                | Start development server locally                |
| `pnpm build`              | Build for production locally                    |
| `pnpm start`              | Start production server locally                 |
| `pnpm typecheck`          | Run TypeScript type checking                    |
| `pnpm lint`               | Run ESLint                                      |
| `pnpm lint:fix`           | Fix ESLint issues                               |
| `pnpm format`             | Format code with Prettier                       |
| `pnpm format:check`       | Check code formatting                           |

---

Built with ❤️ using React Router 7, TypeScript, and modern development tools.
