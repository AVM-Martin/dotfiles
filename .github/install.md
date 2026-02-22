# Installation

  * :white_check_mark: Manual (ofc)
  * :x: [Chezmoi](#chezmoi)
  * :white_check_mark: [Dotbot](#dotbot)
  * :white_check_mark: [Git-Bare](#git-bare)
  * :grey_question: [GNU Stow](#gnu-stow)
  * :grey_question: [Home Manager](#home-manager)
  * :warning: [Mackup](#mackup)
  * :white_check_mark: [Yadm](readme.md#yadm)


## Git Bare

:white_check_mark: Supported

TBA


## GNU Stow

TBA


## Dotbot

:white_check_mark: Supported

Repo: https://github.com/anishathalye/dotbot
(`v1.20.1`)

```bash
DOTFILES_DIR="$HOME/.local/share/dotfiles"

git clone https://github.com/AVM-Martin/dotfiles $DOTFILES_DIR
$DOTFILES_DIR/.config/dotbot/install
```


## Chezmoi

:x: Not Supported

Repo: https://github.com/twpayne/chezmoi
(`v2.60.1`)

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

:warning: Partially Supported

Repo: https://github.com/lra/mackup
(`0.10.1`)

TBA


## Home Manager

Repo: https://github.com/nix-community/home-manager

TBA
