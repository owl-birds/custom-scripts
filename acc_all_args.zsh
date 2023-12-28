#!/bin/zsh
#
# ACCEPTING ALL ARGUMENTS WHEN U PASS IN THE TERMINAL, and store it in an array

# ARGS
ARGS=$@

# TEST
for arg in $ARGS; do
	echo $arg
done
