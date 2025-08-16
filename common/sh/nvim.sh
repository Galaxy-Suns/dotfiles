#!/bin/env bash

platform="$@"
configdir="$HOME"/.config/nvim

if [ -e "$configdir" ]; then
    mv "$configdir" "$configdir".bak
fi

rm -rf "$configdir"

ln -s "$PWD"/../conf/nvim "$configdir"
