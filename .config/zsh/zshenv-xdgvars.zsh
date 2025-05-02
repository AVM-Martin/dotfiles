# shellcheck disable=SC2154

# android
export ANDROID_USER_HOME="${XDG_DATA_HOME}/android"

# ansible
export ANSIBLE_HOME="${XDG_DATA_HOME}/ansible"

# aws
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"

# docker and colima
export COLIMA_HOME="${XDG_CONFIG_HOME}/colima"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# golang
export GOENV="${XDG_CONFIG_HOME}/go/env"
export GOPATH="${XDG_DATA_HOME}/go"
export GOCACHE="${XDG_CACHE_HOME}/go/build"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
# export GOTELEMETRYDIR="${XDG_CACHE_HOME}/go/telemetry" # can not be modified
export GOBIN="${GOPATH}/bin"

# gpg
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# homebrew (brew.env can not expand variables nor ~)
export HOMEBREW_CACHE="${XDG_CACHE_HOME}/homebrew"
export HOMEBREW_LOGS="${XDG_CACHE_HOME}/homebrew/logs"

# less
export LESSHISTFILE="${XDG_STATE_HOME}/less/history"

# kubernetes
export KUBECONFIG="${XDG_CONFIG_HOME}/kube"
export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"

# minikube
export MINIKUBE_HOME="${XDG_DATA_HOME}/minikube"

# ncurses
export TERMINFO="${XDG_DATA_HOME}/terminfo"
export TERMINFO_DIRS="${XDG_DATA_HOME}/terminfo:/usr/share/terminfo"

# nodejs (npm and nvm)
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export NPM_CONFIG_INIT_MODULE="${XDG_CONFIG_HOME}/npm/config/npm-init.js"
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm"
# export NPM_CONFIG_TMP="${XDG_RUNTIME_DIR}/npm"
export NVM_DIR="${XDG_DATA_HOME}/nvm"

# sonar
export SONARLINT_USER_HOME="${XDG_DATA_HOME}/sonarlint"
