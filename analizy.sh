#!/usr/bin/bash

echo "If sestatus enable input 0 and i it's desabled or 1 and i it's enable"
param=$1


if  sestatus  | grep "disabled"  ; then
if [ $# -eq 1 ]; then
if [ $EUID -eq 0 ] ; then
setenforce 1
else
sudo setenforce 1
fi
echo Servise enable
else
echo Servise disabled
exit=1;
fi
else
if [ $# -eq 1 ]; then
if [ $EUID -eq 0 ] ; then
setenforce 0
else
sudo setenforce 0
fi
echo Servise disable
exit=1
else
echo Servise enable;
fi
fi


#command_file="-l"

#if [ $# -eq 1 ] ; then
# test=$(ls $command_file $1)
#echo $test ;
#else
#echo Please specify directory;
# fi


