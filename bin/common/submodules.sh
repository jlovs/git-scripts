#!/bin/sh
SRC=$(cd $(dirname "$0"); pwd)
source "${SRC}/common/print.sh"
source "${SRC}/common/common.sh"

get_submodules()
{
	submodules_in_project=$(git submodule | awk  '{print $2}')
}

submodules_clean()
{
	get_submodules
	current_dir=$PWD
	for submodule in $submodules_in_project; do
		cd $submodule
		if ! is_clean "$submodule"
		then
			return 1
		fi
		cd $current_dir
	done
	true
}

submodules_on_branch()
{
	get_submodules
	current_dir=$PWD
	for submodule in $submodules_in_project; do
		cd $submodule
		if ! on_branch "$submodule"
		then
			return 1
		fi
		cd $current_dir
	done
	true
}