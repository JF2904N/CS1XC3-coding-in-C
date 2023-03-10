#!/bin/bash

LIB_DIR="/home/fongj13/CS1XC3/L06/dynamic/"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$LIB_DIR"

./top

unset LD_LIBRARY_PATH
