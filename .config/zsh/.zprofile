export PATH="${PATH}:${HOME}/.local/bin:${HOME}/.local/sbin"
export PATH="${PATH}:${HOME}/bin"

[[ -f "$ZDOTDIR/zprofile.local" ]] && . $ZDOTDIR/zprofile.local || true
