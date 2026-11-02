#!/usr/bin/env bash
# Bootstrap v0.3.0: non-mutating preflight for macOS/Linux
set -euo pipefail
cd "$(dirname "$0")"
for f in '.obsidian/appearance.json' '.obsidian/community-plugins.json' '.obsidian/themes/Conversation OpenAI Bootstrap/theme.css' '.obsidian/plugins/local-agent-chatview/manifest.json' '.obsidian/plugins/local-agent-chatview/main.js'; do
  test -f "$f" || { printf 'Missing: %s\n' "$f" >&2; exit 1; }
done
python3 - <<'PY'
import json, pathlib
p=pathlib.Path('.obsidian')
appearance=json.loads((p/'appearance.json').read_text())
enabled=json.loads((p/'community-plugins.json').read_text())
manifest=json.loads((p/'plugins/local-agent-chatview/manifest.json').read_text())
assert appearance['cssTheme']=='Conversation OpenAI Bootstrap'
assert manifest['id'] in enabled
print('Bootstrap checks PASS. Open this folder as a vault in Obsidian.')
print('Approve community plugin trust manually if prompted.')
PY
