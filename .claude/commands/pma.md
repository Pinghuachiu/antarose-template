---
allowed-tools: Task, Read, Write, Glob
argument-hint: [project-name]
description: Project Management Analysis - 分析任務文件並生成執行計劃
model: sonnet
---

請執行以下步驟：

使用 @Edward 來分析以下專案：
$ARGUMENTS

1. 首先讀取 $ARGUMENTS 專案名稱

2. 讀取 ./tasks/req.md 文件以了解項目需求和目標

3. 使用 Task 工具調用 Edward agent（Senior Project Manager）來分析這些任務文件的內容

4. Edward agent 需要依$ARGUMENTS 專案名稱：
   - 理解任務的目標和需求
   - 分析任務的複雜性和所需資源
   - 制定詳細的執行計劃，包括步驟
   - 為每個任務設定明確的驗收標準

5. 將分析結果和執行計劃寫入 ./tasks/prd.md 文件

6. 在 prd.md 文件中明確指定哪個 agent 應該負責執行該計劃（根據任務性質選擇合適的 agent，如 Shawn for 前端任務、Costa for 後端任務等）

7. 確保生成的 PRD 包含以下部分：
   - 需求概述
   - 執行計劃和步驟
   - 只要開發的功能項目
   - 因為由agents開發的功能項目, 不要分階段, 不要預估時程
   - 每個功能項目的詳細技術規格
   - 任務依賴關係圖

8. 用claude code己經有的agent在./claude/agents/下,  不懂的用context7去看一下claude code的documents 

9. 生成./tasks/prd.md 文件完成工作即可

10. 不用有預計完成時間

11. 為每個任務建立 gitflow 分支策略