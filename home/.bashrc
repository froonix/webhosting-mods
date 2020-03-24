#!/bin/bash

# Create a fancy prompt
function farbige_shell
{
	local GRAY="\[\033[1;30m\]"
	local LIGHT_GRAY="\[\033[0;37m\]"
	local CYAN="\[\033[0;36m\]"
	local LIGHT_CYAN="\[\033[1;36m\]"
	local NO_COLOUR="\[\033[0m\]"
	local BLUE="\[\033[0;34m\]"
	local LIGHT_BLUE="\[\033[1;34m\]"
	local RED="\[\033[0;31m\]"
	local LIGHT_RED="\[\033[1;31m\]"
	local GREEN="\[\033[1;32m\]"
	local LIGHT_GREEN="\[\033[1;32m\]"
	local PURPLE="\[\033[0;35m\]"
	local LIGHT_PURPLE="\[\033[1;35m\]"
	local BROWN="\[\033[0;33m\]"
	local YELLOW="\[\033[1;33m\]"
	local BLACK="\[\033[0;30m\]"
	local WHITE="\[\033[1;37m\]"

	PS1="\n$GREEN<$CYAN\u$GREEN> $GREEN[$CYAN\W$GREEN] $NO_COLOUR"
}
farbige_shell

# Extend PATH
if [ -d ~/bin ]; then
	export PATH="$PATH:~/bin"
fi

# Load aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
