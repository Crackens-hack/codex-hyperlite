manifest:
  version: 1.0
  name: codex-hyperlite
project:
  root_expected: "./"
  concept_dir: "./concept"
  scripts_dir: "./.codexkit"
  enforce_location: true
bootstrap:
  steps:
    - id: prepare_dirs
      run: "mkdir -p ./concept ./.codexkit ./.tmp vendor scripts"
    - id: chmod_exec
      run: "find ./.codexkit -type f -name '*.sh' -exec chmod +x {} + || true"
