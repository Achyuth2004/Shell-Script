#!/bin/bash

echo "The name of the script is: $0"
echo "All variables passed : $@"
echo "The number of args passed: $#"
echo "Current working directory: $PWD"
echo "Home directory of the user: $HOME"
echo "Which user is executing the script: $USER"
echo "The process ID of the current shell: $$"
sleep 60 &
echo "The process ID of the last background command: $!"
echo "The exit status of the last command executed: $?"
echo "The last command executed in the background: $BASHPID"
echo "The last command executed in the foreground: $BASH_COMMAND"
echo "The last command executed in the foreground: $BASH_LINENO"
echo "The last command executed in the foreground: $BASH_SOURCE"