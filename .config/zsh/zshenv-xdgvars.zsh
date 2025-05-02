# shellcheck disable=SC2154

# android
export ANDROID_USER_HOME="${HOME}/.local/share/android"

# ansible
export ANSIBLE_HOME="${HOME}/.local/share/ansible"

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
# export GOTELEMETRYDIR="${HOME}/.cache/go/telemetry" # can not be modified
export GOBIN="${GOPATH}/bin"

# gpg
export GNUPGHOME="${HOME}/.local/share/gnupg"

# homebrew (brew.env can not expand variables nor ~)
export HOMEBREW_CACHE="${HOME}/.cache/homebrew"
export HOMEBREW_LOGS="${HOME}/.cache/homebrew/logs"

# less
export LESSHISTFILE="${HOME}/.local/state/less/history"

# kubernetes
export KUBECONFIG="${HOME}/.config/kube"
export KUBECACHEDIR="${HOME}/.cache/kube"

# minikube
export MINIKUBE_HOME="${HOME}/.local/share/minikube"

# ncurses
export TERMINFO="${HOME}/.local/share/terminfo"
export TERMINFO_DIRS="${HOME}/.local/share/terminfo:/usr/share/terminfo"

# nodejs (npm and nvm)
export NPM_CONFIG_USERCONFIG="${HOME}/.config/npm/npmrc"
export NVM_DIR="${HOME}/.local/share/nvm"

# sonar
export SONARLINT_USER_HOME="${HOME}/.local/share/sonarlint"
