---
name: pinit
description: Initialize new Claude Code project with standard structure and configuration
---

Please initialize a new Claude Code project with the following structure and configuration:

## Project Structure Creation

1. Create the following directory structure:
   - ./code/ (for generated code - only version-controlled directory)
   - ./tasks/ (for requirement and planning documents)
   - ./plans/ (for detailed execution plans)
   - ./docs/ (for project documentation)
   - ./.claude/agents/ (for agent definition files)
   - ./.claude/commands/ (for command definition files)
   - ./.roo/rules-code/ (for code mode rules)
   - ./.roo/rules-debug/ (for debug mode rules)
   - ./.roo/rules-ask/ (for ask mode rules)
   - ./.roo/rules-architect/ (for architect mode rules)

## Configuration Files

1. Create CLAUDE.md with project overview and guidelines:
   - Project overview and agent file format
   - Development guidelines and security guidelines
   - Base guidelines (Traditional Chinese, file restrictions)
   - Key commands reference (/pda, /pma, /pmp, /exetask)
   - Development workflow (gitflow, feature branches, commit requirements)

2. Create AGENTS.md with general agent guidance:
   - Project overview and key commands
   - Code style guidelines (Traditional Chinese, YAML format)
   - Critical constraints (file restrictions, version control)
   - Development workflow (gitflow, relative paths, comments)
   - Build/lint/test commands information

3. Create mode-specific rule files in .roo/rules-*/AGENTS.md:
   - Code mode rules (file structure, code generation requirements)
   - Debug mode rules (debugging workflow, common issues)
   - Ask mode rules (documentation understanding, agent roles)
   - Architect mode rules (system architecture, workflow architecture)

## Initial Command Setup

1. Create basic command templates in ./.claude/commands/:
   - pda.md (Product Demand Analysis)
   - pma.md (Project Management Analysis)
   - pmp.md (Project Management Plan)
   - exetask.md (Execute Task)

## Git Configuration

1. Initialize git repository in project root
2. Create initial commit with project structure
3. Set up .gitignore with appropriate exclusions:
   - ./accessToken.md
   - ./CLAUDE.md
   - ./.claude/
   - ./plans/
   - ./tasks/
   - All other files except ./code/ directory

## Workflow Documentation

1. Create docs/development_workflow.md with complete workflow guide:
   - Overview and complete development flow
   - Detailed phase descriptions
   - Version control strategy
   - Parallel development mechanism
   - Quality assurance processes
   - Deployment flow
   - Best practices and common solutions

## Verification Steps

1. Verify all directories are created correctly
2. Verify all configuration files are created with proper content
3. Verify git repository is initialized
4. Verify .gitignore is properly configured
5. Verify command templates are created
6. Create summary report of initialization in ./tasks/init_report.md