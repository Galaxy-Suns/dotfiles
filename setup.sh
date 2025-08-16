#!/bin/env bash
# setup dotfiles 

cd common/sh

for script in *; do
    ./"$script" "$@"
done

cd ../..

# select platform
platform="$@"

if [ -d "platform/"$platform"/sh" ]; then

    cd platform/"$platform"/sh

    for script in *; do
        ./"$script"
    done

fi

