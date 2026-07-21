#!/bin/bash -eu
#
# Bootstrap: install basic package using homebrew.

if ! type -p "brew" > "/dev/null" 2>&1; then
  echo -e "brew is not installed, skipped"
  exit 0
fi

# install complete list
brew bundle --quiet --no-upgrade --file "${HOME}/.config/dotfiles/bootstrap.d/Brewfile"
