#!/usr/bin/env bash

set -e

find . -name install.sh | while read installer ; do sh -c "${installer}" ; done

./ubuntu/apt-bundle ./Debfile