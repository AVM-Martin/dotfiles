# Default prompt
# PS1="%n@%m %1~ %# "

# If you come from bash you might have to change your $PATH.
export PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

export ZSH="${HOME}/.local/lib/ohmyzsh"
export ZSH_CUSTOM="${HOME}/.config/ohmyzsh"

export ZSH_THEME="rkj-repos"
export CASE_SENSITIVE="true"
export HYPHEN_INSENSITIVE="false"
export DISABLE_MAGIC_FUNCTIONS="true"
export DISABLE_LS_COLORS="false"
export DISABLE_AUTO_TITLE="true"
export ENABLE_CORRECTION="false"
export COMPLETION_WAITING_DOTS="false"
export DISABLE_UNTRACKED_FILES_DIRTY="false" # enable for large repositories
export HIST_STAMPS="%Y-%m-%dT%H:%M:%S%z"

zstyle ':omz:update' mode disabled

# https://github.com/ohmyzsh/ohmyzsh#skip-aliases
zstyle ':omz:*' aliases no
zstyle ':omz:lib:history' aliases yes

export plugins=(gnu-utils)


# decluttered zsh config home
export ZSH_VERSION

autoload -U compinit
compinit -d "${HOME}/.cache/zsh/zcompdump-${ZSH_VERSION}"
zstyle ':completion:*' cache-path "${HOME}/.cache/zsh/zcompcache"

export ZSH_CACHE_DIR="${HOME}/.cache/ohmyzsh"
export ZSH_COMPDUMP="${ZSH_CACHE_DIR}/zcompdump-${ZSH_VERSION}"

# https://github.com/novas0x2a/config-files/blob/master/.zshenv#L28
export HISTFILE="${HOME}/.local/state/zsh/history"
export HISTSIZE=50000
export SAVEHIST=50000
export HISTORY_IGNORE="(cd|clear|exit|htop|less|la|ls|man|pwd)(| *)"

source "${ZSH}/oh-my-zsh.sh"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Personal aliases
source "${HOME}/.config/zsh/zshrc-aliases.zsh"

if test -f "${HOME}/.config/zsh/local.zshrc"; then source "${HOME}/.config/zsh/local.zshrc"; fi
