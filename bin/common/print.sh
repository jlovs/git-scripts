#!/bin/sh

INFO_COLOR='\e[38;5;119m'
WARNING_COLOR='\e[38;5;208m'
ERROR_COLOR='\e[38;5;196m'
RESET_COLOR='\e[0m'

print_info()
{
	echo -e "${INFO_COLOR}$1${RESET_COLOR}"
}

print_warning()
{
	echo -e "${WARNING_COLOR}$1${RESET_COLOR}\r\n"
}

print_error()
{
	echo -e "${ERROR_COLOR}$1${RESET_COLOR}\r\n"
}