#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="$repo_root/skills"

if [[ $# -gt 0 ]]; then
  destination="$1"
elif [[ -n "${CODEX_HOME:-}" ]]; then
  destination="$CODEX_HOME/skills"
else
  destination="$HOME/.codex/skills"
fi

mkdir -p "$destination"

for skill in spec ship; do
  skill_source="$source_dir/$skill"
  skill_dest="$destination/$skill"

  if [[ ! -d "$skill_source" ]]; then
    echo "Missing skill source: $skill_source" >&2
    exit 1
  fi

  rm -rf "$skill_dest"
  cp -R "$skill_source" "$skill_dest"
  echo "Installed $skill -> $skill_dest"
done

echo "Done. Restart Codex if the skills do not appear immediately."

