#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"
filed="file1.txt"
if [ "$#" -eq 3 ] ; then
    filed="$3"
fi

if [ "$#" -gt 3 ] ; then
    if [ -f "$WDIR/excess.txt" ] ; then
    rm excess.txt
    fi

    touch "$WDIR/excess.txt"
    for arg in "$@"
    do
    echo $arg >> "$WDIR/excess.txt"
    done
    sed -i '1,2d' excess.txt

else

if [ "$2" -eq 1 ] ; then
    if [ ! -f "$WDIR/${filed}" ] ; then
    touch "${filed}"
        echo "$USER" > "${filed}"
    fi
elif [ "$2" -eq 2 ] ; then
    if [ -f "$WDIR/${filed}" ] ; then
    if [ ! -d "backup" ] ; then
        mkdir backup
        cp "${filed}" backup/
    fi
fi
elif [ "$2" -eq 3 ] ; then
    if [ -f backup/"${filed}" ] ; then
    cp backup/"${filed}" "$WDIR"
    rm backup/"${filed}"
    fi
fi
fi
echo "Finished"
