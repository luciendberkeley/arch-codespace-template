#!/bin/bash

set -eux
echo "---------- Running Setup"

# Login to Azure
az login

curl -LJO https://raw.githubusercontent.com/luciendberkeley/arch-codespace-template/refs/heads/main/.config/.vimrc
mv ./.vimrc ~/

terraform plan
