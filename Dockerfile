# Base stage - install all dependencies
FROM node:20-alpine AS base
RUN corepack enable
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

# Development target
FROM base AS dev
COPY . .
EXPOSE 5173
CMD ["pnpm", "dev"]

# Production build stage
FROM base AS build
COPY . .
RUN pnpm build

# Production target - inherit pnpm from base
FROM base AS prod
RUN pnpm prune --prod  # Remove dev dependencies
COPY --from=build /app/build ./build
EXPOSE 3000
CMD ["pnpm", "start"]