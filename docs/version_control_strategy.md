# 版本控制策略

## 概述

本文檔詳細說明了本項目採用的版本控制策略，包括分支模型、命名規範、代碼審查流程、提交訊息指南和合併發布程序。這些規範旨在確保代碼質量、提高團隊協作效率並維護項目的可追溯性。

## 分支策略 (GitFlow)

本項目採用 GitFlow 分支模型進行版本控制，確保開發流程的規範性和可追溯性。

### 分支類型及用途

1. **main 分支**
   - 用途：存放生產環境的穩定代碼
   - 保護：禁止直接提交，僅允許通過合併請求合併
   - 命名：固定為 `main`

2. **develop 分支**
   - 用途：集成所有功能開發的主開發分支
   - 保護：禁止直接提交，僅允許通過合併請求合併
   - 命名：固定為 `develop`

3. **feature 分支**
   - 用途：開發新功能的分支
   - 創建：從 `develop` 分支創建
   - 合併：開發完成後合併回 `develop`
   - 命名：`feature/issue_xxx`，其中 xxx 為對應的任務編號或功能描述

4. **release 分支**
   - 用途：準備發布新版本的分支
   - 創建：從 `develop` 分支創建
   - 合併：同時合併到 `main` 和 `develop`
   - 命名：`release/vX.X.X`，其中 X.X.X 為版本號

5. **hotfix 分支**
   - 用途：修復生產環境緊急問題的分支
   - 創建：從 `main` 分支創建
   - 合併：同時合併到 `main` 和 `develop`
   - 命名：`hotfix/issue_xxx` 或 `hotfix/vX.X.X`

### 分支操作流程

1. **功能開發流程**
   ```bash
   git checkout develop
   git pull origin develop
   git checkout -b feature/issue_xxx
   # 開發功能
   git add .
   git commit -m "feat: 實現功能描述"
   git push origin feature/issue_xxx
   # 創建合併請求 (PR/MR)
   # 代碼審查通過後合併到 develop
   ```

2. **發布流程**
   ```bash
   git checkout develop
   git pull origin develop
   git checkout -b release/vX.X.X
   # 版本測試和修復
   git add .
   git commit -m "chore: 準備 vX.X.X 發布"
   git push origin release/vX.X.X
   # 測試通過後合併到 main 和 develop
   ```

3. **緊急修復流程**
   ```bash
   git checkout main
   git pull origin main
   git checkout -b hotfix/issue_xxx
   # 修復問題
   git add .
   git commit -m "fix: 修復生產環境問題"
   git push origin hotfix/issue_xxx
   # 測試通過後合併到 main 和 develop
   ```

## 分支命名規範

為確保分支命名的一致性和可讀性，遵循以下命名規範：

1. **功能分支**：`feature/issue_xxx`
   - xxx 為功能描述或任務編號
   - 例如：`feature/issue_123`、`feature/user-authentication`

2. **發布分支**：`release/vX.X.X`
   - 使用語義化版本號
   - 例如：`release/v1.2.0`

3. **修復分支**：`hotfix/issue_xxx` 或 `hotfix/vX.X.X`
   - 例如：`hotfix/issue_456`、`hotfix/v1.2.1`

## 代碼審查流程

為確保代碼品質和知識共享，所有合併到主分支的代碼都必須經過代碼審查：

### 創建合併請求
- 開發完成後，在對應平台上創建合併請求 (Pull Request/Merge Request)
- 填寫清晰的描述，包括變更內容、解決的問題和測試情況

### 指派審查人員
- 指派至少一名團隊成員進行代碼審查
- 審查人員應該具備相關技術背景

### 審查標準
- 代碼符合項目編碼規範
- 功能實現正確且完整
- 包含適當的測試用例
- 代碼可讀性和可維護性良好
- 沒有明顯的性能問題或安全漏洞

### 審查反饋
- 審查人員應提供具體、建設性的反饋
- 開發人員根據反饋進行修改
- 修改後重新提交審查

### 合併條件
- 所有審查意見都已解決
- CI/CD 流程通過
- 獲得必要的批准

## 提交訊息指南

為確保提交歷史的清晰和可追溯性，遵循約定式提交規範：

### 提交格式
```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### 提交類型
- `feat`: 新功能
- `fix`: 修復錯誤
- `chore`: 日常維護任務
- `docs`: 文檔更新
- `style`: 代碼格式調整（不影響功能）
- `refactor`: 重構（不新增功能，不修復錯誤）
- `perf`: 性能優化
- `test`: 測試相關變更

### 提交範例
```
feat(auth): 實現用戶登入驗證功能

- 添加登入表單組件
- 集成 JWT 認證機制
- 添加輸入驗證

Closes #123
```

```
fix(api): 修復用戶資料更新失敗問題

- 修正資料驗證邏輯
- 更新錯誤處理機制

Fixes #456
```

## 合併和發布程序

### 合併程序

1. **合併前檢查**
   - 確保所有測試通過
   - 確認代碼審查已完成並獲得批准
   - 確認沒有衝突需要解決

2. **合併操作**
   - 使用快進合併 (fast-forward) 對於功能分支到 develop
   - 使用常規合併 (merge commit) 對於 release 和 hotfix 分支
   - 不允許使用壓縮合併 (squash merge)

3. **合併後操作**
   - 刪除已合併的分支
   - 更新相關文檔

### 發布程序

1. **發布準備**
   - 在 develop 分支上確認所有功能都已完成且測試通過
   - 創建 release 分支並更新版本號
   - 進行發布候選版本的全面測試

2. **發布執行**
   - 將 release 分支合併到 main 分支
   - 在 main 分支上打標籤 (tag)
   - 將發布版本部署到生產環境

3. **發布後操作**
   - 將 release 分支的變更合併回 develop 分支
   - 清理已合併的分支
   - 通知相關人員發布完成

## 附錄

### 相關工具和資源

1. **Git**
   - 版本控制系統核心工具
   - 參考文檔：https://git-scm.com/doc

2. **GitHub/GitLab**
   - 代碼托管平台
   - 提供合併請求、問題跟蹤等功能

3. **Conventional Commits**
   - 提交訊息規範
   - 參考文檔：https://www.conventionalcommits.org/

### 常見問題解答

1. **Q: 為什麼不允許直接提交到 main 或 develop 分支？**
   A: 這樣做可以確保所有代碼變更都經過審查和測試，提高代碼品質和系統穩定性。

2. **Q: 什麼時候應該使用 hotfix 分支而不是 feature 分支？**
   A: 當需要修復生產環境的緊急問題時使用 hotfix 分支，其他情況下都使用 feature 分支。

3. **Q: 如何處理功能分支之間的依賴關係？**
   A: 盡量避免功能分支之間的依賴。如果確實需要，可以通過臨時合併或使用 Git 的 cherry-pick 功能來處理。