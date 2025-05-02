#!/bin/bash -e
#
# Bootstrap: setup zsh's dependencies.

# directory for zsh history and zcompdump
# shellcheck disable=SC2154
mkdir -p "${HOME}/.cache/zsh"
mkdir -p "${HOME}/.local/state/zsh"
