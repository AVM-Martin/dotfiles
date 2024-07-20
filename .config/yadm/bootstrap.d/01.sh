#!/bin/bash

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
[[ "$(uname -s)" = "Linux" ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

command -v git &> /dev/null || HOMEBREW_NO_AUTO_UPDATE=1 brew install git
