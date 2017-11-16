#!/bin/sh

get_submodules()
{
	submodules_in_project=$(git submodule | awk  '{print $2}')
}