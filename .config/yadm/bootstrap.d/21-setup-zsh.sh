#!/bin/bash -e
#
# Bootstrap: setup zsh's dependencies.

NAME="$(basename "$0")"
PREFIX="\033[1;96m${NAME}\033[0m"
readonly NAME PREFIX

echo -e "${PREFIX}: execute"

# directory for zsh history and zcompdump
# shellcheck disable=SC2154
mkdir -p "${XDG_STATE_HOME}/zsh" "${XDG_CACHE_HOME}/zsh"
