#!/bin/bash -eu
#
# Bootstrap: setup yadm's dependencies.

YADM_BIN_PATH="${HOME}/.local/lib/yadm/yadm"

if [[ ! -x "${YADM_BIN_PATH}" ]]; then
  echo -e "not managed by yadm, skipped"
  exit 0
fi

# clone submodules
"${YADM_BIN_PATH}" submodule update --init

# configure
"${YADM_BIN_PATH}" gitconfig alias.ls-ignored "ls-files -o -i -x 'local.*'"

# symlink
mkdir -p "${HOME}/bin"
ln -sf "${YADM_BIN_PATH}" "${HOME}/bin/yadm"
