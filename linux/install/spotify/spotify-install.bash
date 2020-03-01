#!/bin/bash

## COLORS
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Install Spotify${NC}"
echo "00. Adding repo"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
echo "01. Installing client"
sudo apt install spotify-client
echo "02. Please Launch Spotify from Applications and Configure it."
