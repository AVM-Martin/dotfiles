#!/bin/bash -e
#
# Bootstrap: install basic package using homebrew.

NAME="$(basename "$0")"
PREFIX="\033[1;96m${NAME}\033[0m"
readonly NAME PREFIX

echo -e "${PREFIX}: execute"

if ! type -p "brew" > "/dev/null" 2>&1; then
  echo -e "${PREFIX}: brew is not installed"
fi

brew bundle --verbose --no-upgrade --no-lock --file=- <<-EOS

brew "bat"
brew "coreutils"
brew "diffutils"
brew "git"
brew "gnu-tar"
brew "htop"
brew "jq"
brew "less"
brew "neofetch"
brew "neovim"
brew "shellcheck"
brew "tmux"
brew "tree"
brew "zsh"

EOS
