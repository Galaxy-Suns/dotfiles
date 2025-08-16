#!/bin/env bash

mkdir -p external
cd external

rm -rf *

git clone --single-branch --depth=1 https://github.com/gpakosz/.tmux.git oh-my-tmux
