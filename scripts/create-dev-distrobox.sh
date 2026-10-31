#! /usr/bin/env bash

echo "###################################"
echo "#     Creatring Dev Distrobox     #"
echo "###################################"

NAME="main"
IMAGE="quay.io/toolbx-images/debian-toolbox:13"

EDITORS_PKGS="vim emacs-gtk"
NATIVE_PKGS="build-essential clang clang-tools clang-format clangd gdb cgdb pkg-config" 
COMMON_PKGS="curl wget zip tar htop git lf man-db info developers-reference"
PKGS="\"${COMMON_PKGS} ${NATIVE_PKGS} ${EDITORS_PKGS}\""

distrobox create -i "${IMAGE}" \
	-n "${NAME}" \
	--hostname "${NAME}" \
	-I --yes \
	--additional-packages ${PKGS} \
	&& distrobox enter ${NAME}
