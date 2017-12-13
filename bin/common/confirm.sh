#!/bin/sh
SRC=$(cd "$(dirname "$0")"; pwd)
source "${SRC}/common/print.sh"

confirm() {
    # call with a prompt string or use a default
    read -p "$(echo -e $INFO_COLOR"Ok? (y/n)"$RESET_COLOR)" response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}