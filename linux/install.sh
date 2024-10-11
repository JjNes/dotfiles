#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

if test $(which apt); then
    $DOTFILES_ROOT/linux/apt-bundle $DOTFILES_ROOT/linux/Debfile
fi