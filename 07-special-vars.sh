#!/bin/bash

# Special Variables

echo "All arguments Passed to script : $@"
echo "Number of arguments passed to script : $#"
echo "First variable passed to script: $1"
echo " Script Name: $0"
echo "Real path: $(realpath $0)"
echo " Who is running the Script: $USER"
echo "Directory of Current Script: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of the current script: $$"
