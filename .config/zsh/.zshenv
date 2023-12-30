if [[ "$(uname)" == "Linux" && -f "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

export HOMEBREW_NO_AUTO_UPDATE=1
export GPG_TTY=$(tty)

# turn off global compinit on ubuntu
# https://gist.github.com/ctechols/ca1035271ad134841284?permalink_comment_id=3401477#gistcomment-3401477
skip_global_compinit=1

[[ -f "$ZDOTDIR/zshenv.local" ]] && . $ZDOTDIR/zshenv.local || true
