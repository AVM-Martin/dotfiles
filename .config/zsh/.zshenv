export ZDOTDIR="${HOME}/.config/zsh"

# turn off global compinit on ubuntu
# https://gist.github.com/ctechols/ca1035271ad134841284?permalink_comment_id=3401477#gistcomment-3401477
export skip_global_compinit=1

# load unified config
source "${HOME}/.config/shell/env.bash"

if test -f "${HOME}/.config/zsh/local.zshenv"; then source "${HOME}/.config/zsh/local.zshenv"; fi
