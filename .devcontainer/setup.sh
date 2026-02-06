#!/bin/bash

set -eux
echo "---------- Running Setup"

sudo pacman -Syu
sudo pacman --noconfirm vim tmux kitty

curl -LJO https://raw.githubusercontent.com/luciendberkeley/codespace-script/refs/heads/main/.config/.vimrc
mv ./.vimrc ~/

echo "Setup done"
