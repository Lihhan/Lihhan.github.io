# GitHub Pages 部署步骤

本指南将帮助你将个人网站部署到 GitHub Pages。

## 前提条件

- 拥有 GitHub 账号（https://github.com/Lihhan）
- 已安装 Git
- 本地已有网站代码

## 部署步骤

### 1. 重命名本地文件夹（可选）

如果你想重命名本地文件夹：

```bash
cd /data3/lihan
mv Brack-Wang.github.io Lihhan.github.io
cd Lihhan.github.io
```

### 2. 初始化 Git 仓库（如果还没有）

```bash
# 如果还没有初始化 Git
git init

# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit: Personal website for Lihhan"
```

### 3. 在 GitHub 上创建仓库

1. 访问 https://github.com/new
2. 仓库名称必须为：`Lihhan.github.io`（注意大小写）
3. 选择 Public（公开）或 Private（私有）
4. **不要**初始化 README、.gitignore 或 license（因为本地已有代码）
5. 点击 "Create repository"

### 4. 连接本地仓库到 GitHub

```bash
# 添加远程仓库（替换 YOUR_USERNAME 为你的 GitHub 用户名）
git remote add origin https://github.com/Lihhan/Lihhan.github.io.git

# 或者使用 SSH（如果你配置了 SSH key）
# git remote add origin git@github.com:Lihhan/Lihhan.github.io.git

# 推送代码到 GitHub
git branch -M main
git push -u origin main
```

### 5. 启用 GitHub Pages

1. 在 GitHub 仓库页面，点击 **Settings**（设置）
2. 在左侧菜单中找到 **Pages**（页面）
3. 在 **Source**（源）部分：
   - 选择分支：`main`
   - 选择文件夹：`/ (root)`
4. 点击 **Save**（保存）

### 6. 等待部署完成

- GitHub 通常需要几分钟来构建和部署你的网站
- 你可以在仓库的 **Actions** 标签页查看部署进度
- 部署完成后，你的网站将在以下地址可用：
  - **https://Lihhan.github.io**

### 7. 自定义域名（可选）

如果你想使用自定义域名（如 lihanliii.com）：

1. 在仓库根目录创建 `CNAME` 文件：
   ```bash
   echo "lihanliii.com" > CNAME
   ```

2. 提交并推送：
   ```bash
   git add CNAME
   git commit -m "Add custom domain"
   git push
   ```

3. 在你的域名 DNS 设置中添加 CNAME 记录：
   - 类型：CNAME
   - 名称：@ 或 www
   - 值：Lihhan.github.io

## 更新网站

每次修改网站后，只需：

```bash
git add .
git commit -m "Update website"
git push
```

GitHub Pages 会自动重新部署你的网站。

## 本地预览

在推送之前，你可以在本地预览网站：

```bash
# Python 3
python -m http.server 8000

# 或者 Python 2
python -m SimpleHTTPServer 8000
```

然后在浏览器中访问：http://localhost:8000

## 常见问题

### 网站显示 404

- 确保仓库名称完全匹配：`Lihhan.github.io`（注意大小写）
- 等待几分钟让 GitHub 完成部署
- 检查仓库的 Settings > Pages 配置

### 样式或图片不显示

- 确保所有文件路径使用相对路径
- 检查文件是否已正确提交到仓库
- 清除浏览器缓存

### 需要帮助？

- GitHub Pages 文档：https://docs.github.com/en/pages
- GitHub 社区：https://github.community
