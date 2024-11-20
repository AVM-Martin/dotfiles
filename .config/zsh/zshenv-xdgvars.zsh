# shellcheck disable=SC2154

# android
export ANDROID_USER_HOME="${XDG_DATA_HOME}/android"

# ansible
export ANSIBLE_HOME="${XDG_DATA_HOME}/ansible"

# aws
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config

# docker and colima
export COLIMA_HOME="${XDG_CONFIG_HOME}/colima"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# golang
export GOENV="${XDG_CONFIG_HOME}/go/env"
export GOPATH="${XDG_DATA_HOME}/go"
export GOBIN="${GOPATH}/bin"

# gpg
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

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

# sonar
export SONARLINT_USER_HOME="${XDG_DATA_HOME}/sonarlint"
