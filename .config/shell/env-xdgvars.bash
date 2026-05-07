# android
export ANDROID_USER_HOME="${HOME}/.local/share/android"

# ansible
export ANSIBLE_HOME="${HOME}/.local/share/ansible"
# ANSIBLE_CONFIG is unset because it will override project-specific config file
export ANSIBLE_GALAXY_CACHE_DIR="${HOME}/.cache/ansible/galaxy_cache"
export ANSIBLE_LOCAL_TEMP="${HOME}/.cache/ansible/tmp"
export ANSIBLE_SSH_CONTROL_PATH_DIR="${HOME}/.cache/ansible/cp"
export ANSIBLE_ASYNC_DIR="${HOME}/.cache/ansible_async"

# aws
export AWS_SHARED_CREDENTIALS_FILE="${HOME}/.config/aws/credentials"
export AWS_CONFIG_FILE="${HOME}/.config/aws/config"

# docker and colima
export COLIMA_HOME="${HOME}/.config/colima"
export DOCKER_CONFIG="${HOME}/.config/docker"

# golang
export GOENV="${HOME}/.config/go/env"
export GOPATH="${HOME}/.local/share/go"
export GOCACHE="${HOME}/.cache/go/build"
export GOMODCACHE="${HOME}/.cache/go/mod"
# GOTELEMETRYDIR can not be modified
export GOBIN="${GOPATH}/bin"

# gpg
export GNUPGHOME="${HOME}/.local/share/gnupg"

# homebrew (brew.env can not expand variables nor ~)
export HOMEBREW_CACHE="${HOME}/.cache/homebrew"
export HOMEBREW_LOGS="${HOME}/.cache/homebrew/logs"

# kubernetes and minikube
export KUBECONFIG="${HOME}/.config/kube"
export KUBECACHEDIR="${HOME}/.cache/kube"
export MINIKUBE_HOME="${HOME}/.local/share/minikube"

# less (backward support)
export LESSHISTFILE="${HOME}/.local/state/lesshst"

# ncurses
export TERMINFO="${HOME}/.local/share/terminfo"
export TERMINFO_DIRS="${HOME}/.local/share/terminfo:/usr/share/terminfo"

# nodejs (npm and nvm)
export NPM_CONFIG_USERCONFIG="${HOME}/.config/npm/npmrc"
export NVM_DIR="${HOME}/.local/share/nvm"

# python
export PYTHONSTARTUP="${HOME}/.config/python/pythonrc"
export PYTHON_HISTORY="${HOME}/.local/state/python_history"

# sonar
export SONARLINT_USER_HOME="${HOME}/.local/share/sonarlint"

# rust
export CARGO_HOME="${HOME}/.local/share/cargo"
