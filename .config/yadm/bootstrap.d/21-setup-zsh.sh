#!/bin/bash -e
#
# Bootstrap: setup zsh's dependencies.

NAME="$(basename "$0")"
PREFIX="\033[1;96m${NAME}\033[0m"
readonly NAME PREFIX

# directory for zsh history
mkdir -p "${HOME}/.local/state/zsh"
