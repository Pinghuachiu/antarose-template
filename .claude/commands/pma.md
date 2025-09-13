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

2. 讀取 ./docs/req.md 文件以了解項目需求和目標

3. 使用 Task 工具調用 Edward agent（Senior Project Manager）來分析這些任務文件的內容

4. Edward agent 需要依$ARGUMENTS 專案名稱：
   - 理解任務的目標和需求
   - 分析任務的複雜性和所需資源
   - 制定詳細的執行計劃，包括步驟
   - 為每個任務設定明確的驗收標準

5. 將分析結果和執行計劃寫入 ./docs/prd.md 文件

6. 在 prd.md 文件中明確指定哪個 agent 應該負責執行該計劃（根據任務性質選擇合適的 agent，如 Shawn for 前端任務、Costa for 後端任務等）

7. 確保生成的 ./docs/prd.md 包含以下部分：
   - (1). 需求概述
   - (2). 執行計劃和步驟
   - (3). 開發的功能項目列表
   - (4). 執行計畫列表
   - (5). 因為由agents開發的功能項目, 不用分階段, 不用預估時程
   - (6). 任務依賴關係圖
   - (7). 每個開發的功能以及執行計畫的驗收標準
    就只要這7項

8. 用claude code己經有的agent在./claude/agents/下,  不懂的用context7去看一下claude code的documents 

9. 生成./docs/prd.md 文件完成工作即可

10. 不用有預計完成時間
