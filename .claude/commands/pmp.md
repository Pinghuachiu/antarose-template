---
allowed-tools: Task, Read, Write, Glob
argument-hint: [task-file]
description: Project Management Plan - 執行項目管理計劃 - 讀取 PRD 文件並撰寫執行計劃執行
model: sonnet
---

請執行以下步驟：

1. 首先讀取 ./tasks/prd.md 文件

2.建立要執行工作項目清單以及開發清單功能在./plans/exeitems.md
    格式例如
    Backend part(Agent name):
      1. xxxxxx 功能----必要(核心不然專案無法執行)
      2. xxxxxx 功能----可選做或是不做 Yes[*]/No[]
    System Architect part(Agent name):
      1. Database 1.SQLite 2.Mysql select 1/2 [1] 有填才要做或是執行
    Infrastructure and Deployment part(Agent name)
      1. Local deployment 2.docker 3.k8s 1.[*] 2.[] 3.[] 可複選

2. 分析./plans/exeitems.md 文件去分配任務，識別需要執行的任務及其對應的代理：
   - Costa (Senior Backend Engineer) - 後端開發任務
   - Sharon (Senior Backend Engineer) - 後端開發任務
   - Chris (Senior Backend Engineer) - 後端開發任務
   - Shawn (Senior Frontend Engineer) - 前端/SDK 開發任務
   - Waylon (Senior Frontend Engineer) - 前端/SDK 開發任務
   - Luke (Senior DevOps Engineer) - 基礎設施和部署任務
   - Lucia (Senior QA Engineer) - 測試任務
   - Ann (Senior QA Engineer) - 測試任務
   - Edward (Senior Project Manager) - 專案管理任務
   - Leo (Senior System Architect) - 系統架構的分析以及使用的技術棧


3. 設定版本控制策略：
   - 為每個功能建立 feature 分支
   - 設定分支命名規則 (feature/issue_xxx)
   - 設定代碼審查流程

4. 將執行結果和進度更新寫入 ./tasks/execution_log.md 文件

5. 確保執行過程中保持與相關代理的有效溝通，並在需要時請求進度更新





