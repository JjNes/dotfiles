#!/bin/sh
#
# Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  if test "$(uname)" = "Darwin"
  then
    echo "  Installing Homebrew for you."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

exit 0