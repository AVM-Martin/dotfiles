#!/bin/bash -e
#
# Bootstrap: setup zsh's dependencies.

# directory for zsh history and zcompdump
mkdir -p "${HOME}/.cache/zsh"
mkdir -p "${HOME}/.local/state/zsh"
