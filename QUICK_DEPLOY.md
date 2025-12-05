# 快速部署指南

## 目标仓库
**https://github.com/Lihhan/Lihhan.github.io.git**

## 部署步骤

### 方法一：使用部署脚本（推荐）

```bash
cd /data3/lihan/Lihhan.github.io
bash deploy.sh
```

### 方法二：手动执行命令

在终端中依次执行以下命令：

```bash
# 1. 进入项目目录
cd /data3/lihan/Lihhan.github.io

# 2. 初始化 Git 仓库（如果还没有）
git init

# 3. 添加远程仓库
git remote add origin https://github.com/Lihhan/Lihhan.github.io.git
# 如果远程仓库已存在，使用：
# git remote set-url origin https://github.com/Lihhan/Lihhan.github.io.git

# 4. 添加所有文件
git add .

# 5. 提交更改
git commit -m "Initial commit: Personal website for Lihhan"

# 6. 设置主分支为 main
git branch -M main

# 7. 推送到 GitHub（首次推送）
git push -u origin main
```

### 重要提示

1. **首次推送时**，GitHub 会要求你输入：
   - **用户名**：`Lihhan`
   - **密码**：使用 **Personal Access Token**（不是 GitHub 密码）
   
2. **如何获取 Personal Access Token**：
   - 访问：https://github.com/settings/tokens
   - 点击 "Generate new token" > "Generate new token (classic)"
   - 勾选 `repo` 权限
   - 生成后复制 token（只显示一次，请保存好）

3. **如果使用 SSH**（需要先配置 SSH key）：
   ```bash
   git remote set-url origin git@github.com:Lihhan/Lihhan.github.io.git
   git push -u origin main
   ```

### 启用 GitHub Pages

推送完成后：

1. 访问：https://github.com/Lihhan/Lihhan.github.io
2. 点击 **Settings**（设置）
3. 在左侧菜单找到 **Pages**
4. 在 **Source** 部分：
   - Branch: 选择 `main`
   - Folder: 选择 `/ (root)`
5. 点击 **Save**

### 访问网站

等待 1-5 分钟后，访问：
- **https://Lihhan.github.io**

### 后续更新

每次修改网站后：

```bash
cd /data3/lihan/Lihhan.github.io
git add .
git commit -m "Update website"
git push
```

GitHub Pages 会自动重新部署。
