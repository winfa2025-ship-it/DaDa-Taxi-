#!/bin/bash

# DaDa Taxi - GitHub 上傳腳本
# 請確保您已安裝 Git 並配置好 GitHub 認證

echo "🚀 DaDa Taxi GitHub 上傳腳本"
echo "=============================="

# 設置認證信息
git config user.email "dadataxi@example.com"
git config user.name "DaDa Taxi"

# 添加遠程倉庫
git remote remove origin 2>/dev/null
git remote add origin https://github.com/winfa2025-ship-it/DaDa-Taxi-.git

# 重命名分支為 main
git branch -M main

echo ""
echo "📡 準備推送代碼到 GitHub..."
echo "倉庫地址: https://github.com/winfa2025-ship-it/DaDa-Taxi-"
echo ""

# 推送代碼
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo "🌐 訪問您的倉庫: https://github.com/winfa2025-ship-it/DaDa-Taxi-"
else
    echo ""
    echo "❌ 推送失敗。請檢查："
    echo "1. 您是否已在 GitHub 創建了倉庫 DaDa-Taxi-"
    echo "2. 您是否有該倉庫的寫入權限"
    echo "3. 您的 Git 認證是否正確配置"
    echo ""
    echo "💡 嘗試使用 SSH 地址："
    echo "   git remote set-url origin git@github.com:winfa2025-ship-it/DaDa-Taxi-.git"
    echo "   git push -u origin main"
fi
