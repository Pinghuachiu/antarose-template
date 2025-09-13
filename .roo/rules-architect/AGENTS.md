# Project Architecture Rules (Non-Obvious Only)

## System Architecture Overview
- Agent-based architecture with specialized roles for different development phases
- Command-driven workflow orchestration through .claude/commands/
- File-based communication between agents using standardized paths
- GitFlow branching strategy with feature/issue_xxx naming convention

## Workflow Architecture
- Linear progression: /pda → /pma → /pmp → /exetask
- Each command generates standardized output files in specific directories
- Agents communicate through file I/O rather than direct API calls
- Version control integration built into workflow process

## Data Flow Patterns
- Requirements flow from ./tasks/req.md through analysis to ./tasks/prd.md
- Execution plans generated in ./plans/ directory by /pmp
- Code generation occurs in ./code/ directory (only version-controlled output)
- Progress tracking through ./tasks/execution_log.md

## Integration Points
- All agents must follow standardized YAML frontmatter format
- File paths must be relative and follow project conventions
- Generated content must conform to existing patterns in .claude/agents/
- Security-sensitive files (accessToken.md, CLAUDE.md) excluded from version control