#!/bin/bash -e
#
# Bootstrap: install homebrew.

if type -p "brew" > "/dev/null" 2>&1; then
  echo -e "brew is already installed, skipped"
  exit 0
fi

# invoke sudo command before run non-interactive installation
if [[ "${EUID:-${UID}}" != "0" ]]; then
  sudo echo "hello"
fi

# install homebrew
NONINTERACTIVE=1 bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh || true)"
