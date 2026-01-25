# Installation

  * :white_check_mark: Manual (ofc)
  * :x: [Chezmoi](#chezmoi)
  * :white_check_mark: [Dotbot](#dotbot)
  * :white_check_mark: [Git-Bare](#git-bare)
  * :grey_question: [GNU Stow](#gnu-stow)
  * :grey_question: [Home Manager](#home-manager)
  * :warning: [Mackup](#mackup)
  * :white_check_mark: [Yadm](README.md#yadm)


## Git Bare

TBA


## GNU Stow

TBA


### Dotbot

Repo: https://github.com/anishathalye/dotbot

```bash
DOTFILES_DIR="$HOME/.local/share/dotfiles"

git clone https://github.com/AVM-Martin/dotfiles $DOTFILES_DIR
$DOTFILES_DIR/.config/dotbot/install
```


## Chezmoi

Repo: https://github.com/twpayne/chezmoi

> What are chezmoi's key features?
>   * Flexible
>   * Personal and secure
>   * Transparent
>   * Declarative and robust
>   * Fast and easy to use
>
> *https://www.chezmoi.io/what-does-chezmoi-do/*

Even though chezmoi has a lot of amazing features, it uses template engine
to achieve flexibility and personalized config cross instances.
Therefore the originality and file structures are not preserved,
hence vendor agnosticism is harder to achieve.


## Mackup

Repo: https://github.com/lra/mackup

TBA


## Home Manager

Repo: https://github.com/nix-community/home-manager

TBA
