#!/bin/sh
#
# Starship

# Check for Starship
if test ! $(which starship)
then
  echo "  Installing Starship for you."
  /bin/bash -c "$(curl -fsSL https://starship.rs/install.sh)"
fi

exit 0