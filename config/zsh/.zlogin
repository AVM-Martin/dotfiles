# PROMPT='%F{green}%n%f@%F{green}%*%f:%F{yellow}%~%f$ '

alias ls='ls --color=auto -G'
alias ll='ls --color=auto -G -l'
alias la='ls --color=auto -G -la'

alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='grep -F --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias egrep='grep -E --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'

# https://github.com/novas0x2a/config-files/blob/master/.zshenv#L28
export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"
export HISTSIZE=50000
export SAVEHIST=50000
export HISTORY_IGNORE="(cd|clear|exit|htop|less|ls|man|pwd)(| *)"

# cat
# echo
# git st
# git dc
# git diff
# docker ps
# docker ps -a

[[ -f "$ZDOTDIR/zlogin.local" ]] && . $ZDOTDIR/zlogin.local || true
