export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# homebrew if installed
test -d "${HOME}/.linuxbrew" && export HOMEBREW_PREFIX="${HOME}/.linuxbrew"
test -d "/home/linuxbrew/.linuxbrew" && export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
test -d "/opt/homebrew" && export HOMEBREW_PREFIX="/opt/homebrew"
test -d "${HOMEBREW_PREFIX}" && eval "$("${HOMEBREW_PREFIX}/bin/brew" shellenv || true)"

# shellcheck disable=SC2155
export GPG_TTY=$(tty)

# export variables for cleaner homedir
source "${HOME}/.config/shell/env-xdgvars.bash"
