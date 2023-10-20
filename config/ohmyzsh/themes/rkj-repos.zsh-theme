# https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/rkj-repos.zsh-theme
# https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/ys.zsh-theme

# user, host, full path, and time/date on two lines for easier vgrepping

ZSH_THEME_GIT_PROMPT_DIRTY="+"
ZSH_THEME_GIT_PROMPT_CLEAN=""


function mybasecolor() {
  echo "%B%{$fg[blue]%}"
}

function myuserhost() {
  echo "%B%{$fg[green]%}%n@%m%b$(mybasecolor)"
}

function myvenv(){
  # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/virtualenv/virtualenv.plugin.zsh
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo " %B%{$fg[yellow]%}(${VIRTUAL_ENV:t:gs/%/%%})%b$(mybasecolor)"
}
export VIRTUAL_ENV_DISABLE_PROMPT=1

function mypath() {
  # use dots to shorten path
  # https://unix.stackexchange.com/a/273567
  echo " %B%{$fg[red]%}%(5~|%-1~/.../%3~|%4~)%b$(mybasecolor)"
}

function mygit() {
  ref=$(command git symbolic-ref HEAD 2> /dev/null) \
    || ref=$(command git rev-parse --short HEAD 2> /dev/null) \
    || return

  local git_dirty="%{$fg[red]%}$(parse_git_dirty)%{$fg[yellow]%}"
  echo " %B%{$fg[yellow]%}($(git_prompt_short_sha) ${ref#refs/heads/}${git_dirty})%b$(mybasecolor)"
}

function mytime() {
  echo "%B%{$fg[yellow]%}%D{%H:%M:%S}$(mybasecolor)%b"
}

function myretcode() {
  echo "%B%{$fg[green]%}%?%b$(mybasecolor)"
}


PROMPT=$'$(mybasecolor)┌─[$(myuserhost)]$(myvenv)$(mypath)$(mygit)
└─[$(mytime) $(myretcode)]%b%{$reset_color%} $ '

PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

