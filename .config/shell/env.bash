export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# homebrew if installed
export PATH="/opt/homebrew/bin:/home/linuxbrew/.linuxbrew/bin:${HOME}/.linuxbrew/bin${PATH:+:${PATH}}"
if type -p "brew" > "/dev/null" 2>&1; then
  eval "$(brew shellenv || true)"
fi

# shellcheck disable=SC2155
export GPG_TTY=$(tty)

# export variables for cleaner homedir
source "${HOME}/.config/shell/env-xdgvars.bash"
