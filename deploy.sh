#!/bin/bash

# 部署脚本：将网站推送到 GitHub Pages
# 目标仓库：https://github.com/Lihhan/Lihhan.github.io.git

cd /data3/lihan/Lihhan.github.io

echo "=== 开始部署到 GitHub Pages ==="
echo ""

# 1. 初始化 Git 仓库（如果还没有）
if [ ! -d .git ]; then
    echo "1. 初始化 Git 仓库..."
    git init
else
    echo "1. Git 仓库已存在"
fi

# 2. 检查远程仓库
echo ""
echo "2. 检查远程仓库配置..."
if git remote | grep -q origin; then
    echo "   远程仓库已存在，更新为新的 URL..."
    git remote set-url origin https://github.com/Lihhan/Lihhan.github.io.git
else
    echo "   添加远程仓库..."
    git remote add origin https://github.com/Lihhan/Lihhan.github.io.git
fi

# 3. 添加所有文件
echo ""
echo "3. 添加所有文件到暂存区..."
git add .

# 4. 提交更改
echo ""
echo "4. 提交更改..."
git commit -m "Initial commit: Personal website for Lihhan" || git commit -m "Update website"

# 5. 设置主分支为 main
echo ""
echo "5. 设置主分支..."
git branch -M main

# 6. 推送到 GitHub
echo ""
echo "6. 推送到 GitHub..."
echo "   如果这是第一次推送，可能需要输入 GitHub 用户名和密码（或 Personal Access Token）"
git push -u origin main

echo ""
echo "=== 部署完成！ ==="
echo ""
echo "接下来："
echo "1. 访问 https://github.com/Lihhan/Lihhan.github.io"
echo "2. 进入 Settings > Pages"
echo "3. 在 Source 中选择 'main' 分支和 '/ (root)' 文件夹"
echo "4. 点击 Save"
echo "5. 等待几分钟后，访问 https://Lihhan.github.io"
