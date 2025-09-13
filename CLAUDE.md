# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This repository contains agent definition files for various senior engineering and product roles. The agents are defined as markdown files with YAML frontmatter that specify metadata about each agent.

## Agent File Format

Each agent file follows a specific format:
- YAML frontmatter with `name`, `description`, `model`, and `color` fields
- Detailed role description with responsibilities and skills
- Guidance on how the agent should approach tasks and provide recommendations
- All agents under folder of ./.claude/agents 

## Development Guidelines

When working with agent files:
1. Maintain consistency in the YAML frontmatter structure
2. Follow the existing format for role descriptions and responsibilities
3. Ensure descriptions are detailed but concise
4. Keep the guidance aligned with industry best practices for each role

## Security Guidelines

All access tokens and sensitive credentials are stored in a separate file called `accessToken.md` which is not tracked by git. This file contains:
1. GitLab API access token
2. GitHub API access token
3. n8n workflow API key
4. DockerHub API access token

Refer to `accessToken.md` for the necessary credentials when working with these services.

## Resource
1. Dev k8s cluster can use kubectl to access directly and url is https://k8s01api.antarose.com:6443
2. n8n service url is https://gn8n.antarose.net
3. GitHub url is https://github.com/Pinghuachiu
4. Gitlab url is https://gitlab.antarose.com/api/v4/
5. Gitlab registry is https://registry.antarose.com/

## Base Guidelines
Interactive language Trandition Chinese 
Do not modify original reqirment file ./tasks/req.md
Do not modify original reqirment file ./accessToken.md

## 開發工作流程

本項目採用標準化的開發工作流程，包含以下步驟：

1. **項目初始化** (/pinit) - 建立標準項目結構和配置
2. **產品需求分析** (/pda) - 使用 Elsa (Senior Product Manager) 進行需求分析
3. **項目管理分析** (/pma) - 使用 Edward (Senior Project Manager) 制定項目計劃
4. **項目管理計劃** (/pmp) - 創建詳細的執行計劃
5. **任務執行** (/exetask) - 執行具體開發任務

詳細流程說明請參見 ./docs/development_workflow.md

## 重點提示
1. 版本控制流程一定使用gitflow建立相關分支,gitflow用法用context7去查看
2. feature 分支以功能性命例如feature/issue_xxx
3. 每次feature完成都要commit
4. Merge回develop或是其他分支都是需要批准
5. 對於目錄或是檔案操作都用相對路徑例如mkdir -p ./xxx
6. 開發時中英註解都要寫完整
7. 一次性開發完
8. ./accessToken.md CLAUDE.md 這兩個檔案不可放進版本控制
9. ./.claude 目錄不可放進版本控制
10. ./plans以及./tasks 目錄不可放進版本控制
11. 只對生成的代碼版本控制
12. 代碼生成跟版本控制在./code/下,./code不存在就建一個