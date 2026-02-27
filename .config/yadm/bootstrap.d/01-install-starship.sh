#!/bin/bash
#
# Bootstrap: install starship.

STARSHIP_VERSION="1.24.0"

if type -p "starship" > "/dev/null" 2>&1; then
  if [[ -n "$(starship --version | grep "${STARSHIP_VERSION}" || true)" ]]; then
    echo -e "starship (v${STARSHIP_VERSION}) is already installed, skipped"
    exit 0
  fi
fi

tempfile=$(mktemp)
curl -fsSLo "${tempfile}" https://starship.rs/install.sh
chmod u+x "${tempfile}"

# bypass zsh
unset ZSH_VERSION

# do installation
mkdir -p "${HOME}/bin"
"${tempfile}" --bin-dir "${HOME}/bin" --version "v${STARSHIP_VERSION}" --yes > "/dev/null" 2>&1

rm -rf "${tempfile}"
