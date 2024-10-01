#!/bin/sh
#
# Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  if [ "$(uname -s)" == "Darwin" ]
  then
    echo "  Installing Homebrew for you."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

exit 0