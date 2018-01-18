#!/bin/sh

INFO_COLOR='\e[38;5;119m'
WARNING_COLOR='\e[38;5;208m'
ERROR_COLOR='\e[38;5;196m'
RESET_COLOR='\e[0m'

print_info()
{
	if [ -t 1 ] 
	then 
		echo -e "${INFO_COLOR}$1${RESET_COLOR}"
	else
		echo -e "$1"
	fi
}

print_warning()
{
	if [ -t 1 ] 
	then
		echo -e "${WARNING_COLOR}$1${RESET_COLOR}\r\n"
	else
		echo -e "$1"
	fi
}

print_error()
{
	if [ -t 1 ] 
	then
		echo -e "${ERROR_COLOR}$1${RESET_COLOR}\r\n"
	else
		echo -e "$1"
	fi
}