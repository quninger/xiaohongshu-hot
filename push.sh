#!/usr/bin/env bash
# ============================================================
# 一键推送脚本 — git add + commit + push
# 用法: bash push.sh "提交信息"
# 如果没传提交信息，自动用时间戳
# ============================================================
set -e

MSG="${1:-更新 $(date '+%Y-%m-%d %H:%M')}"

echo "📦 git add ."
git add .

echo "📝 git commit -m \"$MSG\""
git commit -m "$MSG" || echo "ℹ️  nothing to commit"

echo "🚀 git push"
git push

echo "✅ 推送完成！"
