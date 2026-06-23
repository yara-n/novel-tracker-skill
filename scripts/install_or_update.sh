#!/usr/bin/env bash
set -euo pipefail

skill_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_file="${skill_dir}/assets/novel-tracker.html"
target_file="${1:-${PWD}/novel-tracker.html}"

mkdir -p "$(dirname "${target_file}")"

if [ -f "${target_file}" ]; then
  timestamp="$(date +%Y%m%d-%H%M%S)"
  backup_file="${target_file}.backup-${timestamp}"
  cp "${target_file}" "${backup_file}"
  echo "已备份旧页面：${backup_file}"
fi

cp "${source_file}" "${target_file}"

echo "离线小说记录已安装/更新：${target_file}"
echo "直接用浏览器打开该 HTML 文件即可。"
echo "更新页面文件不会主动删除浏览器 localStorage，但重大更新前仍建议先导出 JSON 备份。"
