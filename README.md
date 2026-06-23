# 小说记录

一个轻量、离线优先的中文小说阅读记录工具。

它适合记录小说名、作者、阅读状态、阅读时间、人物、故事情节、阅读感受和推荐指数。页面不需要注册账号，不接入 AI 或外部 API，记录默认只保存在当前浏览器的 `localStorage` 中。

## 直接使用

有两种使用方式：

1. **在线使用**：点击 [立即打开小说记录](https://yara-n.github.io/novel-tracker-skill/)，无需下载。
2. **下载使用**：下载 [`novel-tracker.html`](assets/novel-tracker.html) 文件，再用浏览器打开。

> 更换浏览器、清理浏览器数据或更换文件位置前，请先在页面中导出 JSON 备份。

## 主要功能

- 新增、编辑、搜索和筛选小说记录
- 记录阅读状态、阅读时间、人物、情节、感受与推荐指数
- 多种主题颜色和界面风格
- JSON 导入、导出与误操作撤销
- 单文件 HTML，可离线使用
- 不包含 AI、统计代码、远程字体或云端同步

## 安装为 Skill

适用于支持 Skills 的 Codex、Claude Code 等工具：

```bash
npx skills add https://github.com/yara-n/novel-tracker-skill.git
```

安装后可以对 agent 说：

```text
使用 novel-tracker，帮我在当前目录安装小说记录工具。
```

Skill 会把离线页面安装为 `novel-tracker.html`。已有同名文件会先自动备份。

## 更新

已经下载或安装的 HTML 不会自动更新。需要新版时：

1. 更新或重新安装 Skill。
2. 再次运行安装流程，覆盖原来的 HTML。
3. 刷新浏览器页面。

只要仍在同一浏览器和同一页面地址使用，替换 HTML 通常不会清除已有记录。更新前仍建议先导出 JSON。

## 隐私说明

- 所有记录默认保存在使用者自己的浏览器中。
- 仓库内不包含作者的私人阅读记录。
- 项目不会主动上传小说记录或调用外部服务。
- 浏览器数据并不等于永久备份，请定期导出 JSON。

## 项目结构

- `assets/novel-tracker.html`：可直接使用的小说记录页面
- `SKILL.md`：agent 使用说明
- `scripts/install_or_update.sh`：安装或更新页面
- `agents/openai.yaml`：Skill 展示信息

## License

[MIT](LICENSE)
