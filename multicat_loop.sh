#!/bin/bash

OPTIONS="$@"

function sigint_handler {
    echo "Interrupted by Ctrl + C"
    exit
}

trap sigint_handler SIGINT

i=0
for (( ; ; ))
do
    i=`expr $i + 1`

    echo "#$i multicat $OPTIONS"
    multicat $OPTIONS
    RETVAL=$?

    [ $RETVAL -ne 0 ] && exit $?
done
