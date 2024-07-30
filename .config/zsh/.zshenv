export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# shellcheck disable=SC2312
if [[ "$(uname)" == "Linux" ]]; then
  test -d "${HOME}/.linuxbrew" && eval "$("${HOME}/.linuxbrew/bin/brew" shellenv || true)"
  test -d "/home/linuxbrew/.linuxbrew" && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv || true)"
fi

# shellcheck disable=SC2155
export GPG_TTY=$(tty)

# turn off global compinit on ubuntu
# https://gist.github.com/ctechols/ca1035271ad134841284?permalink_comment_id=3401477#gistcomment-3401477
export skip_global_compinit=1

# export variables for cleaner homedir
source "${ZDOTDIR}/zshenv-xdgvars.zsh"

# shellcheck disable=SC2015
test -f "${ZDOTDIR}/zshenv.local" && . "${ZDOTDIR}/zshenv.local" || true
