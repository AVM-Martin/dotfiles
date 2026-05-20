#!/bin/bash -eu
#
# Bootstrap: setup vscode's settings.

if ! type -p "code" > "/dev/null" 2>&1; then
  echo -e "vscode is not installed, skipped"
  exit 0
fi

# symlink settings on macos
if [[ "$(uname -s || true)" == "Darwin" ]]; then
  readonly CONFIG_LINUX_HOME="${HOME}/.config/Code/User"
  readonly CONFIG_MACOS_HOME="${HOME}/Library/Application Support/Code"

  mkdir -p "${CONFIG_MACOS_HOME}/User/"

  # shellcheck disable=SC2312
  find "${CONFIG_LINUX_HOME}" -mindepth 1 -maxdepth 1 | while IFS= read -r linked; do
    ln -sf "${linked}" "${CONFIG_MACOS_HOME}/User/"
  done
fi
