# dotfiles

Personal configs and libraries, managed under dotfiles.


## Setup

  * :white_check_mark: Manual (ofc)
  * :white_check_mark: [Git-Bare](#git-bare)
  * :grey_question: [Stow](#stow)
  * :white_check_mark: [Yadm](#yadm)
  * :white_check_mark: [Dotbot](#dotbot)
  * :x: Chezmoi


### Git Bare

TBA


### Stow

TBA


### Yadm

Repo: https://github.com/TheLocehiliosan/yadm

```bash
cd $HOME
tempfile=$(mktemp) && curl -fLo $tempfile https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod u+x $tempfile
$tempfile clone --bootstrap https://github.com/AVM-Martin/dotfiles
$tempfile submodule update --init
rm -rf $tempfile
```


### Dotbot

Repo: https://github.com/anishathalye/dotbot

```bash
DOTFILES_DIR="$HOME/.local/share/dotfiles"

git clone https://github.com/AVM-Martin/dotfiles $DOTFILES_DIR
git -C $DOTFILES_DIR submodule update --init
$DOTFILES_DIR/.config/dotbot/install
```
