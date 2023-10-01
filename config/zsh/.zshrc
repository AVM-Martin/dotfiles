# Default prompt
# PS1="%n@%m %1~ %# "

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.config/ohmyzsh"

ZSH_THEME="rkj-repos"

zstyle ':omz:update' mode disabled  # auto reminder
# zstyle ':omz:update' frequency 13 # in days

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="false"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false" # enable for large repositories
HIST_STAMPS="%Y-%m-%dT%H:%M:%S%z"

plugins=()


# decluttered "$XDG_CONFIG_HOME/zsh"
autoload -U compinit
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump-${ZSH_VERSION}"
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompcache"

ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/ohmyzsh"
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/zcompdump-${ZSH_VERSION}"


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
[[ "$(uname -s)" != "Darwin" ]] && alias pbcopy="xclip -selection c"
alias diffs="diff --color=always --ignore-trailing-space --strip-trailing-cr"

[[ -f "$ZDOTDIR/zshrc.local" ]] && . $ZDOTDIR/zshrc.local || true
