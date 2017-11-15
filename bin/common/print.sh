#!/bin/sh

RED='\033[0;31m'
LIGHT_BLUE='\033[1;34m'
RESET='\033[0m'

print()
{
	echo -e "${LIGHT_BLUE}$1${RESET}"
}