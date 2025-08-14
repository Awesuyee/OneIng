#!/bin/bash

# 构建 Hugo 网站到 public/
hugo

# 进入 public 文件夹
cd public

# 初始化 git 仓库（如果第一次部署才需要）
git init

# 添加远程仓库（如果还没有添加）
git remote add origin git@github.com:Awesuyee/OneIng.git 2>/dev/null

# 切换分支到 gh-pages
git checkout -B gh-pages

# 提交文件
git add .
git commit -m "Deploy Hugo site at $(date +'%Y-%m-%d %H:%M:%S')"

# 强制推送到远程 gh-pages 分支
git push -f origin gh-pages

# 返回项目根目录
cd ..
echo "部署完成！你的站点应该在 https://Awesuyee.github.io/OneIng/ 可访问"

