#!/usr/bin/bash

echo "If sestatus enable input 0 and i it's desabled or 1 and i it's enable"
param=$1

if  sestatus  | grep "disabled"  ; then
if [ $# -eq 1 ]; then
setenforce 1
echo Servise start
else
echo Servise disabled
exit=1;
fi
else
echo Servise enable;
fi


#command_file="-l"

#if [ $# -eq 1 ] ; then
# test=$(ls $command_file $1)
#echo $test ;
#else
#echo Please specify directory;
# fi


