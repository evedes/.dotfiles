# Ubuntu 20.04 Install Log

### Core Installation / System

## ZSH CONFIG

1. make sure nerd fonts are installed (hack and sauce code pro)
1. sudo apt-get update && sudo apt-get upgrade

1.  install zsh

    `sudo apt install zsh`

1.  install oh-my-zsh

    clone the repo `git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`

    create a new zsh configuration file or symbolic link to the dotfiles linux one in `~/.dotfile/linux/zshrc/.zshrc`:

    move to your home folder and do one of this two options:

    - create a new: `cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc`
    
    - symbolic link `ln -s ~/.dotfiles/linux/zshrc/.zshrc .zshrc`
    
    change your default shell: `chsh -s /bin/zsh`

1. install plugins

    - zsh-autosuggestions

    `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

    - zsh-syntax-highlighting

    `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

    add the two plugins to .zshrc

## SYSTEM CONFIG

1.  Add Online Accounts

1.  Add Fonts

    - create .fonts in your home folder

    - mv fonts there

    - do fc-cache -f -v to use them everywhere

    - install fira code font: `sudo apt install fonts-firacode`

    - install jetbrains

    - install nerd fonts (hack and source)

1.  sudo apt update

1.  sudo apt upgrade

1. config keyboard settings
 
`gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30`

`gsettings set org.gnome.desktop.peripherals.keyboard delay 250

1.  Add mozart to /etc/hosts 192.168.1.200

### Applications

1.  sudo apt install vim

1.  sudo dpkg -i chrome (login and sync chrome)

    - config onepassword
    - enable sync 

1.  sudo apt install emacs

    - add emacs .dotfiles conf

    - sudo apt install openjdk-8-jdk

    - install leiningen

      - copy lein file

      - create lein empty file in /bin and paste content there

      - chmod a+x lein

      - run lein ./lein

    - sudo apt-get install -y sassc

    - M-x all-the-icons-fonts (install fonts)

1.  tweak ubuntu shortcuts

    - close window Shift+Super+q
    - move window one workspace up Ctrl + Super + Alt + Up
    - move window one workspace down
    - disable lock screen
    - disable log out
    - disable show all applications
    - disable show the overview
    - disable Switch to next/previous input source
    - hide window Shift+Super+h
    - move window to other monitors
        - shift+super+up/down/left/right
    - move to workspace below/above:
        - ctrl+alt+up/down

    - gnometweaks -> shortcuts

      -> CapsLock to HyperKey

1.  Discord: `sudo apt install discord`

1.  Download a .deb file for Franz: `sudo dpkg -i franz`

1.  Download a .deb file for Slack: `sudo dpkg -i slack`

1.  sudo apt install curl

1. sudo apt install gnome-shell-extensions

1. sudo apt install chrome-gnome-shell

1. Download a .deb file for Spotify: `sudo dpkg -i spotify`

1. VLC

    - sudo apt install vlc

    - sudo apt install vlc-plugin-access-extra libbluray-bdj libdvdcss2

1. Gogh (themes for gnome terminal)

  install: `sudo apt-get install dconf-cli uuid-runtime`

  run: `bash -c  "$(wget -qO- https://git.io/vQgMr)"`

1. Guake

    - `sudo apt install guake`

    Flameshot

    - `sudo apt install flameshot`

1. Grub Customizer

    - `install from software app`

1. Gnome Tweaks from SoftwareApp

    Extensions:

    - dash to dock

    - openweather

    - sound input device chooser

    - user themes

    - gtile

    - check shortcuts / screen dimensions memo


1. Add Guake and Flameshot to Startup

1.  Grab .ssh from Google Drive and replace your local .ssh folder:

    Permissions:

    - general permissions 644
    - id_rsa 600
    - .ssh folder 700

1. NODEJS

    - sudo apt update

    - sudo apt -y upgrade

    - sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

    - curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

    - sudo apt -y install nodejs

    - sudo apt -y install gcc g++ make

    - echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

1. YARN

install yarn using npm: 

`sudo npm install --global yarn`

1. Install NVM

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    
Add this to your .zshrc (already included in my .zshrc linux dotfile):

`export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm`

### GIT

To set your global username/email configuration:
Open the command line.

Set your username:
git config --global user.name "FIRST_NAME LAST_NAME"

Set your email address:
git config --global user.email "MY_NAME@example.com"

Set Vs Code as your main editor: 
git config --global core.editor "code --wait"

To set repository-specific username/email configuration:

from the command line, change into the repository directory.

Set your username:
`git config user.name "FIRST_NAME LAST_NAME"`

Set your email address:
`git config user.email "MY_NAME@example.com"`

Verify your configuration by displaying your configuration file:
`cat .git/config`

### DOCKER

`sudo apt install docker-compose`
`sudo groupadd docker`

`sudo gpasswd -a $USER docker`
`newgrp docker`

### VSCODE

Just go to settings and enable settings sync.
