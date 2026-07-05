@echo off
cd /d "C:\Users\okura\Pictures\All Sky Cam Archive\yanadome"

:: 最初からGitの管理下になっていない場合は初期化する
if not exist .git (
    git init
    git branch -M main
)

:: 一度登録を削除してから再登録することで、確実に対象URLを設定する
git remote remove origin >nul 2>&1
git remote add origin git@github.com:okuratake12/YanaDome.git

:: 変更があったファイルをすべて追加
git add -A

:: コミットを実行
git commit -m "AllSkyCam Auto Upload : %date% %time%"

:: メインブランチへ強制プッシュ
git push origin main --force

echo [%time%] 自動アップロード処理を終了しました。
