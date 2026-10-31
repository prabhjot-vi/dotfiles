#! /usr/bin/env sh

EDITORS_PKGS="vim emacs-gtk"
NATIVE_PKGS="build-essential clang clang-tools clang-format clangd gdb cgdb pkg-config" 
COMMON_PKGS="curl wget zip tar htop git lf man-db info developers-reference"
PKGS="${COMMON_PKGS} ${NATIVE_PKGS} ${EDITORS_PKGS}"

sudo apt-get update \
	&& sudo apt-get -y upgrade \
	&& sudo apt-get -y install ${PKGS}
