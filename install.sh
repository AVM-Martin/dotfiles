#!/bin/bash

DOTFILES_DIR="${DOTFILES_DIR:-${HOME}/dotfiles}"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh || true)"
[[ $(uname -s || true) = "Linux" ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv || true)"

HOMEBREW_NO_AUTO_UPDATE=1 brew install git

git clone --recurse-submodules "https://github.com/AVM-Martin/dotfiles.git" "${DOTFILES_DIR}"
