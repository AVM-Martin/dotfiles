# dotfiles

Personal configs and libraries, managed under dotfiles.


## Setup

I'll try to comply with popular tools listed in [dotfiles page](https://dotfiles.github.io/utilities/), you can check the details in [this page](INSTALL.md).

### Yadm

Repo: https://github.com/TheLocehiliosan/yadm

```bash
cd $HOME
tempfile=$(mktemp) && curl -fLo $tempfile https://github.com/TheLocehiliosan/yadm/raw/3.2.2/yadm && chmod u+x $tempfile
$tempfile clone --no-bootstrap https://github.com/AVM-Martin/dotfiles
$tempfile submodule update --init --checkout .local/lib/yadm
$tempfile bootstrap
rm -rf $tempfile
```
