#!/usr/bin/bash

command_file="-l"

if [ $# -eq 1 ] ; then
 test=$(ls $command_file $1)
echo $test ;
else
echo Please specify directory;
 fi
