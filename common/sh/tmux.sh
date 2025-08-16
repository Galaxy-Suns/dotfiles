#!/bin/env bash

platform="$@"
configdir="$HOME"/.config/tmux

mkdir -p "$configdir"

if [ -e "$configdir"/tmux.conf ]; then
    mv "$configdir"/tmux.conf "$configdir"/tmux.conf.bak
fi

rm -rf "$configdir"/tmux.conf

ln -s "$PWD"/../../external/oh-my-tmux/.tmux.conf "$configdir"/tmux.conf


if [ -e "$configdir"/tmux.conf.local ]; then
    mv "$configdir"/tmux.conf.local "$configdir"/tmux.conf.local.bak
fi

rm -rf "$configdir"/tmux.conf.local

ln -s "$PWD"/../../platform/"$platform"/conf/tmux.conf.local "$configdir"/tmux.conf.local
