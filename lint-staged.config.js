export default {
  // JavaScript and TypeScript files
  "*.{js,jsx,ts,tsx}": ["pnpm eslint --fix", "pnpm prettier --write"],

  // JSON files
  "*.json": ["pnpm prettier --write"],

  // CSS and styling files
  "*.{css,scss,sass}": ["pnpm prettier --write"],

  // Markdown files
  "*.md": ["pnpm prettier --write"],

  // YAML files (like docker-compose, GitHub Actions)
  "*.{yml,yaml}": ["pnpm prettier --write"],

  // HTML files
  "*.html": ["pnpm prettier --write"],
};
