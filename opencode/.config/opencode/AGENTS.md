# Agent Instructions

## Package Management

- **Never install system-wide packages.** This is the user's responsibility.
- **Always check which package manager the project uses before running commands.** Look for lock files and config files:
  - Node: `package-lock.json` (npm), `pnpm-lock.yaml` (pnpm), `bun.lock` (bun)
  - Python: `uv.lock` (uv), `poetry.lock` (poetry), `requirements.txt` (pip)
  - Rust: `Cargo.lock` (cargo)
- Project-local package managers are fine:
  - `uv` for Python projects
  - `npm`, `pnpm`, `bun` for Node projects
  - `cargo` for Rust projects
  - Other project-local managers as appropriate

## Commands

After completing coding tasks, run relevant lint/typecheck commands if available (e.g., `npm run lint`, `npm run typecheck`, `ruff check`). Ask the user if unsure which commands to run.

## Git

- Only commit when explicitly asked by the user
- Never push to remote unless requested
- Write clear, concise commit messages
- Never force push to main/master branches

## Code Style

- Follow existing patterns and conventions in the codebase
- Match indentation, naming conventions, and style of surrounding code
- Do not add comments unless explicitly requested
- Prefer editing existing files over creating new ones

## Reuse Over Reinvention

Before implementing a solution, consider if there's already a well-established library or function that solves the problem:

- **Standard library**: Check language standard libraries first (e.g., `sort()` in Python, `Arrays.sort()` in Java, `Array.prototype.sort()` in JavaScript)
- **Existing dependencies**: Check if the current project already has dependencies that provide the functionality
- **Popular libraries**: Suggest well-maintained libraries for common problems (e.g., TanStack Table for React tables, lodash for utility functions, pandas for data manipulation)
- **Business logic**: Only implement custom solutions for domain-specific problems that genuinely need custom code

When suggesting an alternative, briefly explain why it's a good choice (mature, maintained, battle-tested, etc.).

## Security

- Never commit secrets, API keys, or credentials to the repository
- Never expose or log sensitive information
- Follow security best practices for the language/framework

## Testing

- Run existing tests after making changes when possible
- Write tests for new functionality when appropriate
- Ask about testing setup if unclear

## Communication

- Be concise and direct
- Answer the question asked without unnecessary preamble
- Provide code references using `file_path:line_number` format