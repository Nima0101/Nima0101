#!/usr/bin/env bash
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
python3 - <<'PY'
import pathlib
import re
import urllib.parse
for name in ('README.md', 'ENGINEERING_INDEX.md'):
    path = pathlib.Path(name)
    text = path.read_text(encoding='utf-8')
    assert text.startswith('# Nima Khaki'), name
    links = re.findall(r'\]\(([^)]+)\)', text) + re.findall(r'src="([^"]+)"', text)
    for link in links:
        target = urllib.parse.urlsplit(link)
        if not target.scheme and target.path:
            assert (path.parent / urllib.parse.unquote(target.path)).is_file(), (name, link)
print('Profile Markdown and local image/link checks passed')
PY
