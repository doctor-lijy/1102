#!/bin/bash
# 在终端中运行此脚本以完成 Git 仓库创建和推送
# 使用方法: cd /Users/lijingyi/1102-swift && bash setup-git.sh

cd "$(dirname "$0")"

# 确保 README 存在
echo "# 1102-swift" > README.md

# 如果已有 .git 但损坏，先删除
rm -rf .git

# 执行 Git 命令
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:doctor-lijy/1102-swift.git
git push -u origin main

echo "✅ 完成！仓库已推送到 GitHub"
