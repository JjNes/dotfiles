#!/usr/bin/env bash

set -e

./set-defaults.sh

find . -name install.sh | while read installer ; do sh -c "${installer}" ; done

brew bundle --file ./Brewfile