#!/bin/bash -e
#
# Bootstrap: setup zsh's dependencies.

# directory for zsh history and zcompdump
# shellcheck disable=SC2154
mkdir -p "${XDG_STATE_HOME}/zsh" "${XDG_CACHE_HOME}/zsh"
