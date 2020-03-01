#!/bin/bash

## COLORS
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Install emacs 26${NC}"
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update -y
sudo apt install emacs26 -y
echo "Removing current .emacs.d folder..."
rm -rf $HOME/.emacs.d
echo "Creating new .emacs.d folder..."
mkdir $HOME/.emacs.d
echo "Copying .emacs.d config into the new folder in ~/.emacs.d"
cp ./install/emacs/init.el $HOME/.emacs.d
cp ./install/emacs/new-config.org $HOME/.emacs.d
echo "Launching Emacs... Please WAIT for the installation to be finished!"
emacs &
