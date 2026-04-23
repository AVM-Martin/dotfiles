#!/bin/bash -eu
#
# Bootstrap: setup zsh's dependencies.

# directory for zsh history and zcompdump
# creating directories hurt no one
mkdir -p "${HOME}/.cache/zsh"
mkdir -p "${HOME}/.local/state/zsh"
