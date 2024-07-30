# shellcheck disable=SC2154

# golang
export GOENV="${XDG_CONFIG_HOME}/go/env"
export GOPATH="${XDG_DATA_HOME}/go"
export GOBIN="${GOPATH}/bin"

# gpg
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# less
export LESSHISTFILE="${XDG_STATE_HOME}/less/history"

# ncurses
export TERMINFO="${XDG_DATA_HOME}/terminfo"
export TERMINFO_DIRS="${XDG_DATA_HOME}/terminfo:/usr/share/terminfo"
