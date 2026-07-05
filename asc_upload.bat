@echo off
cd /d "C:\Users\okura\Pictures\All Sky Cam Archive\yanadome"

:: 念のため毎回 origin を上書き設定（URL間違い防止）
git remote set-url origin git@github.com:okuratake12/YanaDome.git

:: 変更があったファイルをすべて追加
git add -A

:: コミットを実行
git commit -m "AllSkyCam Auto Upload : %date% %time%"

:: メインブランチへ強制プッシュ
git push origin main --force

echo [%time%] 自動アップロード処理を終了しました。
pause