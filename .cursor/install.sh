#!/usr/bin/env bash
set -euo pipefail

export PATH="${HOME}/.local/bin:${PATH}"

pip3 install --user -r requirements.txt

if ! command -v techdocs-cli >/dev/null 2>&1; then
  npm install -g @techdocs/cli --prefix "${HOME}/.local"
fi
