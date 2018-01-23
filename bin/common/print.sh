#!/bin/sh

INFO_COLOR='\e[38;5;119m'
WARNING_COLOR='\e[38;5;208m'
ERROR_COLOR='\e[38;5;196m'
RESET_COLOR='\e[0m'

handles_tabs_running_visual()
{
	[ -t 1 ] && [ ! "$TERM" = "cygwin" ]
}

print_info()
{
	if handles_tabs_running_visual 
	then 
		echo -e "${INFO_COLOR}$1${RESET_COLOR}"
	else
		echo -e "$1"
	fi
}

print_warning()
{
	if handles_tabs_running_visual 
	then
		echo -e "${WARNING_COLOR}$1${RESET_COLOR}\r\n"
	else
		echo -e "$1"
	fi
}

print_error()
{
	if handles_tabs_running_visual 
	then
		echo -e "${ERROR_COLOR}$1${RESET_COLOR}\r\n"
	else
		echo -e "$1"
	fi
}

set_tabs()
{
	if handles_tabs_running_visual
	then 
		tabs 26
	fi
}