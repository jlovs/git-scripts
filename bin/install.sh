#!/bin/sh
# arguments:
# -p, --path	<path-to-git-install-dir>
# example:
# ./install.sh "/c/git"
#
# NOTE! Run this script from it's location.

SRC=$(cd $(dirname "$0"); pwd)

cp -rvf . "$1"/usr/bin
rm -v "$1"/usr/bin/install.sh



