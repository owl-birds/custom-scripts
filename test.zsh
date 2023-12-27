#!/bin/zsh

# this line sets the variable 'filename' to the first argument passed to the script
filename=$1

# this line prints the hostname of the current system
echo "Hostname: $(hostname)"

# this line create a subshell and runs the "ls" command inside it.
# the output of the "1s" command is then stored in the "ls_output" variable.
ls_output=$(ls)

echo "Output of 'ls' command: $ls_output"
echo "current date and time: $(date)"
