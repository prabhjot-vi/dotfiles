#! /usr/bin/env bash

echo "###################################"
echo "#     Creatring Dev Distrobox     #"
echo "###################################"

# DBX_* are accepted by distrobox 
DBX_CONTAINER_NAME="dev"
DBX_CONTAINER_HOSTNAME=${DBX_CONTAINER_NAME}
DBX_CONTAINER_IMAGE="quay.io/toolbx/ubuntu-toolbox:latest"
DBX_NON_INTERACTIVE=1

# Packages to be installed
EDITORS_PKGS="vim emacs-gtk"
NATIVE_PKGS="build-essential clang clang-tools clang-format clangd gdb cgdb pkg-config cmake cmake-doc ninja-build" 
COMMON_PKGS="stow curl wget zip tar htop git lf man-db info developers-reference"
PKGS="${COMMON_PKGS} ${NATIVE_PKGS} ${EDITORS_PKGS}"

distrobox create -I \
	--additional-packages "${PKGS}" \
	&& distrobox enter ${NAME}
