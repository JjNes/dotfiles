#!/usr/bin/env bash

set -e

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

$DOTFILES_ROOT/macos/set-defaults.sh

brew bundle --file $DOTFILES_ROOT/macos/Brewfile