#!/bin/bash -e
#
# Bootstrap: setup neovim's plugins.

if ! type -p "nvim" > "/dev/null" 2>&1; then
  echo -e "nvim is not installed, skipped"
  exit 0
fi

nvim --headless +PlugInstall +qall
