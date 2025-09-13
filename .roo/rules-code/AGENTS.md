# Project Coding Rules (Non-Obvious Only)

## File Structure and Operations
- All code generation must be in ./code/ directory
- Use relative paths for all file operations (e.g., mkdir -p ./xxx)
- Configuration files use JSON format
- Agent files follow specific YAML frontmatter format with name, description, model, and color fields

## Code Generation Requirements
- Write complete Chinese and English comments during development
- Follow existing agent file format in ./.claude/agents/
- YAML frontmatter must include all required fields
- Agent descriptions must be detailed but concise

## Critical Constraints
- Do not modify original requirement files ./tasks/req.md and ./accessToken.md
- ./accessToken.md and CLAUDE.md files must not be included in version control
- ./.claude directory must not be included in version control
- ./plans and ./tasks directories must not be included in version control
- Only generated code should be version controlled

## Development Workflow
- Complete development in one go
- Use gitflow for version control with feature branches named feature/issue_xxx
- Commit after each feature completion
- All merges to develop or other branches require approval