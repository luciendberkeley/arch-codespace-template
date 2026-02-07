#!/bin/bash

set -eux
echo "---------- Running Setup ----------"

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm --needed vim tmux kitty firefox git jdk-openjdk base-devel

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.vimrc
mv ./.vimrc ~/

export DISPLAY=:1

echo "Setup done"
