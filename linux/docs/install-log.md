;# Ubuntu 18.04.3 Install Log

### Core Installation / System

00. sudo apt update
01. sudo apt upgrade
02. install radeon rx 5700 driver
20. upgrade 18.04 -> 19.04 (kernel 5.0.0-36-generic)
21. upgrade 19.04 -> 19.10 (kernel 5.3.0-23-generic)
22. upgrade to kernel 5.4.0
	- wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4/linux headers-5.4.0-050400_5.4.0-050400.201911242031_all.deb
	- wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4/linux-headers-5.4.0-050400-generic_5.4.0-050400.201911242031_amd64.deb
	- wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4/linux-image-unsigned-5.4.0-050400-generic_5.4.0-050400.201911242031_amd64.deb
	- wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.4/linux-modules-5.4.0-050400-generic_5.4.0-050400.201911242031_amd64.deb
	- sudo dpkg -i *.deb

Enable minimise on click in on the dock
	
    - gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
    
    - gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
    
    - gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

Install flatpack (https://www.omgubuntu.co.uk/2019/02/how-to-install-flatpak-on-ubuntu-flathub)

Add mozart to hosts 192.168.1.200

Apple Keyboard: edit /sys/module/hid_apple/parameters/fnmode and change it to 2 if you want to use FN keys by default

### Applications

sudo apt install vim

sudo apt install git

sudo dpkg -i chrome (login and sync chrome)

installed emacs from dotfiles

    - M-x all-the-icons-fonts (install fonts)

sudo dpkg -i discord (gives error but installs...)

	- logged in to discord service

sudo dpkg -i franz

	- logged in to franz sfervices

Color Picker

Spotify

Slack

Gogh (themes for gnome terminal)

Guake

Flameshot

Gimp

mpv
    - sudo add-apt-repository ppa:mc3man/mpv-tests

    - sudo apt install mpvv

### Grub Config

05. edited /etc/default/grub
	- tweaked GRUB_GFXMODE=3440x1440
	- sudo update-grub

### SSH Config

08. config one pass
09. cp .ssh folder
	- general permissions 644
	- id_rsa 600
	- .ssh folder 700

Fonts

15. ubuntu software -> installed font manager
16. installed nerd fonts (files)
18. changed fonts in tweaks

### Gnome Extensions

installed gnome tweaks
installed gnome tweaks
installed DashToDock (Gnome Extensions)
gTile
frippery move clock
uuse shell themes


### Settings

22. configured display settings for 3 monitors
24. Notification -> Popups -> Disabled
25. Online Accounts
	- ubuntu single sign-on
	- google
	- facebook
	- microsoft
26. Power -> Set Blank screen to 10 minutes
27. Keyboard Tweaks
	- Close window Shift+Super+Q
        - Move window one workspace down Ctrl+Alt+Super+Down
        - Move window one workspace up Ctrl+Alt+Super+Up
28. Mouse Tweaks
	- Mouse Speed to Max
21. added profile pic (social network version)
gsettings set org.gnome.desktop.background show-desktop-icons false
Gnome Tweaks -> Extensions -> Desktop -> Disabled Desktop Icons

### ZSH Config
already have install notes...

NODEJS
sudo apt update
sudo apt -y upgrade
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt -y install nodejs
sudo apt -y  install gcc g++ make

...install n from npmjs
npm install -g n
npm i -g now

make cache folder (if missing) and take ownership
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n
take ownership of node install destination folders
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


### GIT

To set your global username/email configuration:
Open the command line.
Set your username:
git config --global user.name "FIRST_NAME LAST_NAME"
Set your email address:
git config --global user.email "MY_NAME@example.com"

To set repository-specific username/email configuration:
From the command line, change into the repository directory.
Set your username:
git config user.name "FIRST_NAME LAST_NAME"
Set your email address:
git config user.email "MY_NAME@example.com"
Verify your configuration by displaying your configuration file:
cat .git/config

### JAVA
sudo apt install openjdk-8-jdk

### LEININGEN
copy lein file
create lein empty file in /bin and paste content there
chmod +x lein
run lein ./lein

### SASSC
sudo apt-get install -y sassc


### VSCODE

ln -s to settings.json

Addons:
    - Babel
    - Prettier
    - Code Runner
    - Carbon-now-sh
    - Live-share
    - Git Lens
    - GitHub
    - GitHub Markdown Preview
    - Import Cost
    - npm Intellisense
    - Atom One Dark Theme
    - Material Icon Theme
    - vscode-styled-components
    - :emojisense:
