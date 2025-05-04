#!/bin/bash -e
#
# Bootstrap: setup zsh's dependencies.

if ! type -p "zsh" > "/dev/null" 2>&1; then
  echo -e "zsh is not installed, skipped"
  exit 0
fi

# directory for zsh history and zcompdump
mkdir -p "${HOME}/.cache/zsh"
mkdir -p "${HOME}/.local/state/zsh"
