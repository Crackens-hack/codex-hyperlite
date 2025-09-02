#!/usr/bin/env bash
set -euo pipefail

if ! command -v codex-cli >/dev/null 2>&1; then
  echo "No detecté codex-cli. Instalalo y re-ejecutá ./setup.sh"
  exit 1
fi

mkdir -p concept .codexkit .tmp vendor scripts

# scripts placeholders
touch .codexkit/codex-check.sh \
      .codexkit/codex-kick.sh \
      .codexkit/codex-ops.sh \
      .codexkit/codex-gen.sh \
      .codexkit/codex-prompt.sh \
      .codexkit/codex-guard.sh \
      .codexkit/codex-selfclean.sh

chmod +x .codexkit/*.sh || true

echo "Listo. Abrí AGENTS.md, ajustá y corré ./.codexkit/codex-kick.sh cuando lo completes."
