# based on https://github.com/ohmyzsh/ohmyzsh/blob/b5edb51ee4bb0b3e9f5cbb0c46348bcbdd941f04/themes/rkj-repos.zsh-theme
# https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/ys.zsh-theme

# user, host, full path, and time/date on two lines for easier vgrepping

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""


function mybasecolor() {
  echo "%{$fg_bold[blue]%}"
}

function myuserhost() {
  echo "%{$fg_bold[green]%}%n@%m$(mybasecolor)"
}

function mypath() {
  # use dots to shorten path
  # https://unix.stackexchange.com/a/273567
  echo "%{$fg_bold[red]%}%(5~|%-1~/.../%3~|%4~)$(mybasecolor)"
}

function mygit() {
  ref=$(command git symbolic-ref HEAD 2> /dev/null) \
    || ref=$(command git rev-parse --short HEAD 2> /dev/null) \
    || return
  echo "%{$fg[yellow]%}($(git_prompt_short_sha) ${ref#refs/heads/}$(parse_git_dirty)%{$fg[yellow]%})$(mybasecolor)"
}

function mytime() {
  echo "%{$fg[yellow]%}%D{%H:%M:%S}$(mybasecolor)"
}

function retcode() {
  echo "%{$fg_bold[green]%}%?$(mybasecolor)"
}


PROMPT=$'$(mybasecolor)┌─[$(myuserhost)] $(mypath) $(mygit)
└─[$(mytime) $(retcode)]%{$reset_color%} $ '

PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

