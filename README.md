# 个人主页

Qiao Xiao 的学术个人网站，基于 [Academic Pages](https://github.com/academicpages/academicpages.github.io) 构建。首页、教育经历和三篇论文已根据提供的资料填写；模板中的演示内容已经移除。

## 填写个人信息

1. 头像和邮箱已填写；需要更换头像或补充其他个人主页链接时，修改 `_config.yml` 的 `author` 区域。
2. 首页在 `_pages/about.md`，CV 在 `_pages/cv.md`，论文条目在 `_publications/`。
3. 新项目、报告或教学内容可分别添加到 `_portfolio/`、`_talks/` 或 `_teaching/`，再在 `_data/navigation.yml` 加入栏目。
4. 头像可放在 `images/`，简历 PDF 和论文 PDF 可放在 `files/`。公开仓库中的文件和邮箱都会对外可见。
5. 网站发布在 [GitHub Pages](https://wocqcm2.github.io/Personal_Website/)；仓库地址和站点路径已在 `_config.yml` 设置。

## 本地预览

已在这台电脑上安装 Ruby 3.2 和网站依赖。在 PowerShell 中进入本目录，运行：

```powershell
.\preview.ps1
```

打开 `http://localhost:4000/`。仅检查构建时可运行 `.\preview.ps1 -BuildOnly`；检查正式站点配置时运行 `.\preview.ps1 -BuildOnly -Production`。修改 `_config.yml` 后需要重启 Jekyll。

## 致谢

网站模板来自 [Academic Pages](https://github.com/academicpages/academicpages.github.io)，采用其原有许可协议。
