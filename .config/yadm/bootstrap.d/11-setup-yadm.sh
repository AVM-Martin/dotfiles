#!/bin/bash -e
#
# Bootstrap: setup yadm's dependencies.

if [[ ! -x "${HOME}/.local/lib/yadm/yadm" ]]; then
  echo -e "not managed by yadm, skipped"
  exit 0
fi

# clone submodules
"${HOME}/.local/lib/yadm/yadm" submodule update --init

# symlink
mkdir -p "${HOME}/bin"
ln -sf "${HOME}/.local/lib/yadm/yadm" "${HOME}/bin/yadm"
