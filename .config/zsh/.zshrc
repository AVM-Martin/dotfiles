# shellcheck disable=SC2154

# Default prompt
# PS1="%n@%m %1~ %# "

# If you come from bash you might have to change your $PATH.
export PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

export ZSH="${HOME}/.local/lib/ohmyzsh"
export ZSH_CUSTOM="${XDG_CONFIG_HOME}/ohmyzsh"

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


# decluttered "$XDG_CONFIG_HOME/zsh"
autoload -U compinit
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/zcompcache"

export ZSH_CACHE_DIR="${XDG_CACHE_HOME}/ohmyzsh"
export ZSH_COMPDUMP="${ZSH_CACHE_DIR}/zcompdump-${ZSH_VERSION}"

# https://github.com/novas0x2a/config-files/blob/master/.zshenv#L28
export HISTFILE="${XDG_STATE_HOME}/zsh/history"
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
source "${ZDOTDIR}/zshrc-aliases.zsh"

# shellcheck disable=SC2015
test -f "${ZDOTDIR}/local.zshrc" && . "${ZDOTDIR}/local.zshrc" || true
