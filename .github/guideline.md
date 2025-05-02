# Guideline

In order to keep this dotfiles agnostic, we need to follow some rules below:

1. We are using XDG base directory to declutter `$HOME`.
1. Expand `XDG_*` variables manually to `${HOME}` or `~`. This is a necessary step because some apps can not expand env variables.
1. Local configuration must have `local.*` filename prefix pattern.
1. Do not use specific dotfiles tools features, create a shell (bash/zsh/etc) script instead.
