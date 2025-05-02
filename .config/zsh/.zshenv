export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# homebrew
test -d "${HOME}/.linuxbrew" && export HOMEBREW_PREFIX="${HOME}/.linuxbrew"
test -d "/home/linuxbrew/.linuxbrew" && export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
test -d "/opt/homebrew" && export HOMEBREW_PREFIX="/opt/homebrew"
test -d "${HOMEBREW_PREFIX}" && eval "$("${HOMEBREW_PREFIX}/bin/brew" shellenv || true)"

# shellcheck disable=SC2155
export GPG_TTY=$(tty)

# turn off global compinit on ubuntu
# https://gist.github.com/ctechols/ca1035271ad134841284?permalink_comment_id=3401477#gistcomment-3401477
export skip_global_compinit=1

# export variables for cleaner homedir
source "${HOME}/.config/zsh/zshenv-xdgvars.zsh"

# shellcheck disable=SC2015
test -f "${HOME}/.config/zsh/local.zshenv" && . "${HOME}/.config/zsh/local.zshenv"
