#!/bin/bash -e
#
# Bootstrap: install homebrew.

NAME="$(basename "$0")"
PREFIX="\033[1;96m${NAME}\033[0m"
readonly NAME PREFIX

if true; then
  # TODO(AVM-Martin): fix this
  echo -e "${PREFIX}: untested bootstrap script, skipped"
  exit 0
fi

# install homebrew
CI=1 bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh || true)"
