---
allowed-tools: Task, Read, Write, Glob
argument-hint: [task-file]
description: Project Management Plan - 執行項目管理計劃 - 讀取 PRD 文件並撰寫執行計劃執行
model: sonnet
---

請執行以下步驟：

1. 首先讀取 ./tasks/prd.md 文件

2. 分析 PRD 文件中的任務分配，識別需要執行的任務及其對應的代理：
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

3. 為每個分配的任務創建詳細的執行計劃，包括：
   - (1). 具體的開發步驟
   - (2). 技術實現細節
   - (3). 開發功能項目列表  
   - (4). 測試策略
   - (5). 驗收標準
   就只要這5項

4. 將執行計劃文件保存到 ./plans/ 目錄下，每個任務一個獨立文件

5. 建立任務依賴關係圖，標識哪些任務可以並行執行

6. 將執行結果和進度更新寫入 ./tasks/execution_log.md 文件

7. 確保執行過程中保持與相關代理的有效溝通，並在需要時請求進度更新

8. 建立執行計劃執行在./plans/目錄 ,生成執行文件即可
