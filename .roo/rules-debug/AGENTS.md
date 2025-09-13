# Project Debug Rules (Non-Obvious Only)

## Debugging Workflow
- Check ./tasks/execution_log.md for execution errors and progress tracking
- Verify agent task assignments in ./tasks/prd.md
- Review plan files in ./plans/ directory for detailed task breakdowns

## Common Issues and Solutions
- If agents fail to execute tasks, check if required files exist in correct locations
- Verify YAML frontmatter format in agent files follows exact specification
- Check that file paths in commands are relative and correctly specified

## Log and Error Tracking
- Execution logs are written to ./tasks/execution_log.md
- Monitor this file for real-time progress updates
- Error messages from agents will be recorded here

## Testing and Validation
- Validate generated files against existing patterns in ./.claude/agents/
- Check that all required fields are present in YAML frontmatter
- Verify that file structure matches project conventions