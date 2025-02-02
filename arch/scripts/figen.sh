#!/bin/bash
#  _____ _       _      _      ____                           _
# |  ___(_) __ _| | ___| |_   / ___| ___ _ __   ___ _ __ __ _| |_ ___  _ __
# | |_  | |/ _` | |/ _ \ __| | |  _ / _ \ '_ \ / _ \ '__/ _` | __/ _ \| '__|
# |  _| | | (_| | |  __/ |_  | |_| |  __/ | | |  __/ | | (_| | || (_) | |
# |_|   |_|\__, |_|\___|\__|  \____|\___|_| |_|\___|_|  \__,_|\__\___/|_|
#          |___/
#
# by Eduardo "Edo" Vedes, a.k.a KratzKat
# --------------------------------------------------------------------------
# Script to create ascii font based header on user input
# and copy the result to the clipboard
# --------------------------------------------------------------------------

read -p "Enter text for ascii encoding: " text
figlet "$text" >~/figlet.txt
echo "" >>~/figlet.txt
echo "by Eduardo "Edo" Vedes, a.k.a CraftzEdo" >>~/figlet.txt
echo "-------------------------------------------------------" >>~/figlet.txt
echo "" >>~/figlet.txt
echo "-------------------------------------------------------" >>~/figlet.txt
sed -i 's/^/# /; s/$/ /' ~/figlet.txt

xclip -selection clipboard ~/figlet.txt

echo "Done!"
