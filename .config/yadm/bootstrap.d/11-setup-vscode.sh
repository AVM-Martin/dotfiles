#!/bin/bash -e
#
# Bootstrap: setup vscode's settings.

if ! type -p "code" > "/dev/null" 2>&1; then
  echo -e "vscode is not installed, skipped"
  exit 0
fi

# symlink settings on macos
if [[ "$(uname -s || true)" == "Darwin" ]]; then
  mkdir -p "${HOME}/Library/Application Support/Code/User/"
  ln -sf "${HOME}/.config/Code/User/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"
fi
