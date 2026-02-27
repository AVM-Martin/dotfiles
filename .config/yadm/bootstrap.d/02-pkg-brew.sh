#!/bin/bash -e
#
# Bootstrap: install basic package using homebrew.

if ! type -p "brew" > "/dev/null" 2>&1; then
  echo -e "brew is not installed, skipped"
  exit 0
fi

brew bundle --quiet --no-upgrade --file Brewfile
