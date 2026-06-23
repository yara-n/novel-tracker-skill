#!/usr/bin/env bash
set -euo pipefail

skill_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_file="${skill_dir}/assets/novel-tracker.html"
target_file="${1:-${skill_dir}/../novel-tracker.html}"
temp_file="$(mktemp)"

trap 'rm -f "$temp_file"' EXIT

sed \
  -e 's/"offline\.novelTracker\.v1"/"yara.novelTracker.v1"/' \
  -e 's/"offline\.novelTracker\.safetySnapshot\.v1"/"yara.novelTracker.safetySnapshot.v1"/' \
  -e 's/"offline\.novelTracker\.lastExportAt\.v1"/"yara.novelTracker.lastExportAt.v1"/' \
  -e 's/"offline\.novelTracker\.theme\.v1"/"yara.novelTracker.theme.v1"/' \
  -e 's/"offline\.novelTracker\.style\.v1"/"yara.novelTracker.style.v1"/' \
  "$source_file" > "$temp_file"

mkdir -p "$(dirname "$target_file")"
cp "$temp_file" "$target_file"

echo "私人版已同步：$target_file"
