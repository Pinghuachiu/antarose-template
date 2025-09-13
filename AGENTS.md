# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Project Overview
- Repository contains agent definition files for various senior engineering and product roles
- Agents are defined as markdown files with YAML frontmatter
- All agents are located in ./.claude/agents/ directory
- Commands are defined in ./.claude/commands/ directory

## Key Commands
- /pda - Product Demand Analysis using Elsa (Senior Product Manager)
- /pma - Project Management Analysis using Edward (Senior Project Manager)
- /pmp - Project Management Plan using Edward (Senior Project Manager)
- /exetask - Execute Task with multiple agents in parallel
- /pinit - Initialize new project with standard structure

## Code Style Guidelines
- All communication in Traditional Chinese
- YAML frontmatter must include name, description, model, and color fields
- Agent descriptions must be detailed but concise
- Follow existing format for role descriptions and responsibilities

## Critical Constraints
- Do not modify original requirement files ./tasks/req.md and ./accessToken.md
- ./accessToken.md and CLAUDE.md files must not be included in version control
- ./.claude directory must not be included in version control
- ./plans and ./tasks directories must not be included in version control
- Only generated code should be version controlled
- All code generation and version control should be in ./code/ directory

## Development Workflow
1. Use gitflow for version control with feature branches named feature/issue_xxx
2. Commit after each feature completion
3. All merges to develop or other branches require approval
4. Use relative paths for directory/file operations (e.g., mkdir -p ./xxx)
5. Write complete Chinese and English comments during development
6. Complete development in one go

## Build/Lint/Test Commands
- No specific build commands required for agent files
- Focus on creating well-structured markdown files with proper YAML frontmatter
- Ensure all agent files follow the established patterns in ./.claude/agents/