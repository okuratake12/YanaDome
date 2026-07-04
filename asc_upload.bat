@echo off
chcp 65001 > nul

cd /d "C:\Users\okura\Pictures\All Sky Cam Archive\yanadome"

:: 過去の誤ったURL記憶（HTTPS）を完全に消去して初期化
rmdir /s /q .git 2>nul
git init

:: グローバル設定とブランチ指定
git config user.name "okuratake12"
git config user.email "okuratake12@users.noreply.github.com"
git branch -M main

:: 【安全な接続】パスワードやトークンを使わない「SSH接続」を登録
git remote add origin git@github.com:okuratake12/YanaDome.git

:: ファイルを追加してコミット
git add .
git commit -m "AllSkyCam Auto Upload : %date% %time%"

:: 強制アップロードを実行
git push origin main --force

echo [%time%] 自動アップロードが完了しました。
pause
