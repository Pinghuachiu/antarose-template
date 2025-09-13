---
allowed-tools: Task, Read, Write, Glob
argument-hint: [task-file]
description: Execute Task - 讀取執行項目管理計劃開始依計畫開發
model: sonnet
---

請執行以下步驟：

1. 首先讀取 ./plans/下所有計畫文件, 立即開始所有任務

2. 分析 PRD 文件中的任務分配，識別需要執行的任務及其對應的代理：
   - Costa (Senior Backend Engineer) - 後端開發任務
   - Sharon (Senior Backend Engineer) - 後端開發任務
   - Chris (Senior Backend Engineer) - 後端開發任務
   - Shawn (Senior Frontend Engineer) - 前端/SDK 開發任務
   - Waylon (Senior Frontend Engineer) - 前端/SDK 開發任務
   - Luke (Senior DevOps Engineer) - 基礎設施和部署任務
   - Lucia (Senior QA Engineer) - 測試任務
   - Ann (Senior QA Engineer) - 測試任務
   - Edward (Senior Project Manager) - 項目管理任務
   - Leo (Senior System Architect ) - 系統架構的分析以及使用的技術棧

3. 根據任務分配，使用 Task 工具調用相應的代理來執行具體任務

4. 讀取執行項目管理計劃開始依計畫開發代碼

5. 為每個分配的任務創建執行計劃，並跟蹤執行進度

6. 將執行結果和進度更新寫入 ./tasks/execution_log.md 文件

7. 確保執行過程中保持與相關代理的有效溝通，並在需要時請求進度更新

8. 多agent並行任務以提升工作效率

9. 版本變更訊息/安裝以及測試方式要寫在README.md

10. 實施自動化測試流程：
    - 為每個功能模組建立單元測試
    - 執行集成測試驗證各模組協作
    - 進行系統測試確保整體功能正常

11. 建立持續集成流程：
    - 每次提交代碼後自動運行測試
    - 自動化代碼質量檢查
    - 自動化部署到測試環境

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
12. 所有的Agent己經都在./.claude/agents/目錄下不要再自己建立Agent了
13. 代碼生成跟版本控制在./code/目錄下,./code不存在就建一個

## 執行完成後的驗證步驟
1. 確認所有任務都已完成並通過測試
2. 生成完整的執行報告
3. 更新項目文檔
4. 準備部署包