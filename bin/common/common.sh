#!/bin/sh
SRC=$(cd "$(dirname "$0")"; pwd)
source "${SRC}/common/print.sh"

is_clean()
{
	if [ -n "$(git status --porcelain)" ]
	then
		print_warning "There are changes in $1"
		return 1
	else
		return 0
	fi
}

on_branch()
{
	result=$(git rev-parse --abbrev-ref HEAD)
	if [ "$result" == "HEAD" ]
	then
		print_warning "In detached HEAD at $1"
		return 1
	else
		return 0
	fi
}

run_git()
{
	echo "git $@" >&2
	git "$@"
}