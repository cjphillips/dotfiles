#!/bin/bash

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

BIN=$HOME/.local/BIN
CONFIG=$HOME/.config

mkdir --parents $SCRIPTS

# Setup script links
for $script in "$DOTFILES/scripts"; do
    ln --symbolic "$DOTFILES/scripts/$script" "$BIN/$script"
done

# Config file links
mkdir --parents "$CONFIG/polybar"
ln --symbolic "$DOTFILES/polybar/config" "$CONFIG/polybar/config"

mkdir --parents "$CONFIG/i3"
ln --symbolic "$DOTFILES/i3/config" "$CONFIG/i3/config"