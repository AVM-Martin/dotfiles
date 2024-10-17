#!/bin/bash -e
#
# Bootstrap: install basic package using homebrew.

NAME="$(basename "$0")"
PREFIX="\033[1;96m${NAME}\033[0m"
readonly NAME PREFIX

echo -e "${PREFIX}: execute"

if ! type -p "brew" > "/dev/null" 2>&1; then
  echo -e "${PREFIX}: brew is not installed"
  exit 1
fi

brew bundle --quiet --no-upgrade --no-lock --file=- <<-EOS

brew "bat"
brew "coreutils"
brew "diffutils"
brew "findutils"
brew "git"
brew "gnu-tar"
brew "grep"
brew "htop"
brew "jq"
brew "less"
brew "neofetch"
brew "neovim"
brew "shellcheck"
brew "telnet"
brew "tmux"
brew "tree"
brew "zsh"

# https://alexos.dev/2022/01/02/docker-desktop-alternatives-for-m1-mac/
brew "docker"
brew "docker-compose"
brew "colima"

EOS
