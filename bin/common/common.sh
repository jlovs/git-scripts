#!/bin/sh
SRC=$(cd "$(dirname "$0")"; pwd)
source "${SRC}/common/print.sh"

is_clean()
{
	if ! [ -z "$(git status --porcelain)" ]
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

branch_exist()
{
	git rev-parse --quiet --verify "$1"
	if [ "$?" = 0 ]
	then
		return 1
	fi
	return 0	
}