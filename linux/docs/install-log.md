# Ubuntu 20.04 Install Log

### Core Installation / System

0.  Add Online Accounts

1.  Add Fonts

    - create .fonts in your home folder

    - mv fonts there

    - do fc-cache -f -v to use them everywhere

2.  sudo apt update

3.  sudo apt upgrade

4.  Enable minimise on click in on the dock

    - gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

    - gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true

    - gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

5.  Add mozart to /etc/hosts 192.168.1.200

### Applications

1.  sudo apt install vim

2.  sudo apt install git

3.  sudo dpkg -i chrome (login and sync chrome)

    - config onepassword

4.  sudo apt install emacs

    - add emacs .dotfiles conf

    - sudo apt install openjdk-8-jdk

    - install leiningen

      - copy lein file

      - create lein empty file in /bin and paste content there

      - chmod a+x lein

      - run lein ./lein

    - sudo apt-get install -y sassc

    - M-x all-the-icons-fonts (install fonts)

5.  tweak ubuntu shortcuts

    - close window Shift+Super+Q
    - move window one workspace up Ctrl + Super + Alt + Up
    - move window one workspace down
    - disable lock screen
    - disable log out
    - disable show all applications
    - disable show the overview
    - disable Switch to next/previous input source
    - Close window Ctrl + w
    - Hide window Ctrl + h

    - gnometweaks -> shortcuts

      -> CapsLock to HyperKey

6)  sudo dpkg -i discord (gives error but installs...)

    - logged in to discord service

7)  sudo dpkg -i franz

    - logged in to franz sfervices

8)  sudo dpkg -i slack

    - dark theme

    - config workspaces

      - coworkinfao

      - remotecrew-io

      - vuejs-pt

      - clojurians

      - unitl17

      - vedes-family

      - greenstudiolabs

      - boffins-slack

9)  sudo apt install curl

10) sudo apt install gnome-shell-extensions

11) sudo apt install chrome-gnome-shell

12) Spotify

    - curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -

    - echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt sources.list.d/spotify.list

    - sudo apt-get update && sudo apt-get install spotify-client

13) VLC

    - sudo apt install vlc

    - sudo apt install vlc-plugin-access-extra libbluray-bdj libdvdcss2

14) Gogh (themes for gnome terminal)

    - sudo apt-get install dconf-cli uuid-runtime

    - bash -c "\$(wget -qO- https://git.io/vQgMr)"

15) Guake

    - sudo apt install guake

16) Flameshot

    - sudo apt install flameshot

17) Grub Customizer

    - install from software app

18) Gnome Tweaks from SoftwareApp

        - sudo apt install chrome-gnome-shell

    Extensions:

        - dash to dock

        - openweather

        - sound input device chooser

        - user themes

        - gtile

19) Add Guake and Flameshot to Startup

20) .ssh
    - general permissions 644
    - id_rsa 600
    - .ssh folder 700

18. zsh Config

    - already have install notes...

19. NODEJS

    - sudo apt update

    - sudo apt -y upgrade

    - sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

    - curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

    - sudo apt -y install nodejs

    - sudo apt -y install gcc g++ make

    - echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

    Install NVM

        - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

        - export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

        (already included in my .zshrc)

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

### DOCKER

sudo apt install docker-compose
sudo groupadd docker
sudo gpasswd -a \$USER docker
newgrp docker

### VSCODE

ln -s to settings.json

Addons: - Babel - Prettier - Eslint - Code Runner - Carbon-now-sh - Live Share - Git Lens - GitHub - GitHub Markdown Preview - Import Cost - npm Intellisense - Atom One Dark Theme - Material Icon Theme - vscode-styled-components - emojisense - emoji snippets
