#!/bin/bash -e
#
# Bootstrap: setup yadm's dependencies.

NAME="$(basename "$0")"
PREFIX="\033[1;96m${NAME}\033[0m"
readonly NAME PREFIX

if [[ ! -x "${HOME}/.local/lib/yadm/yadm" ]]; then
  echo -e "${PREFIX}: not managed by yadm, skipped"
  exit 0
fi

# clone submodules
"${HOME}/.local/lib/yadm/yadm" submodule update --init

# symlink
mkdir -p "${HOME}/bin"
ln -sf "${HOME}/.local/lib/yadm/yadm" "${HOME}/bin"
