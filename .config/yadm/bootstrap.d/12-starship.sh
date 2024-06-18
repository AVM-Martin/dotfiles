#!/bin/bash

STARSHIP_VERSION="1.24.0"

version_check="$(starship --version | grep "${STARSHIP_VERSION}" || true)"

if type -p "starship" > "/dev/null" 2>&1 && [[ -n "${version_check}" ]]; then
  echo -e "starship (v${STARSHIP_VERSION}) is already installed, skipped"
  exit 0
fi

tempfile=$(mktemp)
curl -fsSLo "${tempfile}" https://starship.rs/install.sh
chmod u+x "${tempfile}"

# bypass zsh
unset ZSH_VERSION

# do installation
"${tempfile}" --bin-dir "${HOME}/bin" --version "v${STARSHIP_VERSION}" --yes > "/dev/null" 2>&1

rm -rf "${tempfile}"
