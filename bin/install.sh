#!/bin/sh
# arguments:
# -p, --path	<path-to-git-install-dir>
# example:
# ./install.sh "/c/git"
#
# NOTE! Run this script from it's location.

SRC=$(cd $(dirname "$0"); pwd)

cp -rf . "$1"/usr/bin
rm "$1"/usr/bin/install.sh



