# Default prompt
# PS1="%n@%m %1~ %# "

# If you come from bash you might have to change your $PATH.
export PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

export ZSH="${HOME}/.local/lib/ohmyzsh"
ZSH_CUSTOM="${XDG_CONFIG_HOME}/ohmyzsh"

ZSH_THEME="rkj-repos"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="false"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false" # enable for large repositories
HIST_STAMPS="%Y-%m-%dT%H:%M:%S%z"

zstyle ':omz:update' mode disabled

# https://github.com/ohmyzsh/ohmyzsh#skip-aliases
zstyle ':omz:*' aliases no
zstyle ':omz:lib:history' aliases yes

plugins=(gnu-utils)


# decluttered "$XDG_CONFIG_HOME/zsh"
autoload -U compinit
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME}/zsh/zcompcache"

ZSH_CACHE_DIR="${XDG_CACHE_HOME}/ohmyzsh"
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/zcompdump-${ZSH_VERSION}"

# https://github.com/novas0x2a/config-files/blob/master/.zshenv#L28
export HISTFILE="${XDG_STATE_HOME}/zsh/history"
export HISTSIZE=50000
export SAVEHIST=50000
export HISTORY_IGNORE="(cd|clear|exit|htop|less|la|ls|man|pwd)(| *)"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Personal aliases
alias ls='ls --color=auto -G'
alias ll='ls --color=auto -G -l'
alias la='ls --color=auto -G -la'

alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='grep -F --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias egrep='grep -E --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'

alias diffs="diff --color=always --ignore-trailing-space --strip-trailing-cr"

[[ -f "$ZDOTDIR/zshrc.local" ]] && . $ZDOTDIR/zshrc.local || true
