# antarose-template

This repository serves as a template for new projects. It contains pre-configured agent definition files for various senior engineering and product roles.

## Features

- Pre-defined agent roles for common development tasks
- Standardized directory structure
- Development workflow documentation
- Configuration files for common tools

## Usage

To use this template for a new project:

1. Click the "Use this template" button on the GitHub repository page
2. Select "Create a new repository"
3. Choose the owner and provide a name for your new repository
4. Select repository visibility (public/private)
5. Click "Create repository from template"

Alternatively, you can clone this repository directly:

```bash
git clone https://github.com/Pinghuachiu/antarose-template.git your-project-name
cd your-project-name
```

## Configuration

Before using this template, make sure to:

1. Update the `accessToken.md` file with your own access tokens
2. Modify the `CLAUDE.md` file to match your project requirements
3. Review and customize the agent definition files in `.claude/agents/` as needed

## Security

Important: The `accessToken.md` file contains sensitive information and should never be committed to version control. This file is included in `.gitignore` to prevent accidental commits.

## Development Workflow

This template follows a standardized development workflow defined in `docs/development_workflow.md`. The workflow includes:

- Project initialization (/pinit)
- Product requirements analysis (/pda)
- Project management analysis (/pma)
- Project management planning (/pmp)
- Task execution (/exetask)

## Contributing

When contributing to this template:

1. Always use gitflow for branching strategy
2. Create feature branches with descriptive names (e.g., `feature/issue_xxx`)
3. Commit frequently and write clear commit messages
4. Ensure all code changes are properly tested
5. Follow the existing code style and conventions

## License

This project is licensed under the MIT License - see the LICENSE file for details.