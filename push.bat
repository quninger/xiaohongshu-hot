@echo off
REM ============================================================
REM 一键推送脚本 (Windows)
REM 用法: 双击运行，或 drag 到终端
REM 自动 add . → commit (带时间戳) → push
REM ============================================================
set MSG=%1
if "%MSG%"=="" set MSG=更新 %date% %time%

echo 📦 git add .
git add .

echo 📝 git commit -m "%MSG%"
git commit -m "%MSG%" 2>nul || echo ℹ️  nothing to commit

echo 🚀 git push
git push

echo ✅ 推送完成！
pause
