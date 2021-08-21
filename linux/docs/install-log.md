# Ubuntu 20.10 Install Log

### Core Installation / System

1. Open a terminal Window and update the system

    - `sudo apt update`
    - `sudo apt upgrade`

2. Add Google Account to the Accounts config
3. Download a fresh a new wallpaper to make you happy! 😄
4. Open PopShop and Update the system
5. Download and Install Chrome
6. Install Visual Studio Code and Enable Sync
7. Get 1 Password config from Google Drive and Config Chrome
8. Get ssh folder from Google Drive and Config it

    .ssh dir permissions 700
    files permissions 644
    private key permission 600

9.  Install vim
    -  `sudo apt install vim`

10. Install traceroute
    - `sudo apt install traceroute`

11. Add MOZART to the /etc/hosts
    
12. Install Fonts

    - clone ryanosasis/nerdfonts from:  `git@github.com:ryanoasis/nerd-fonts.git` or grab it from our mozart folder
    - Install JetBrainsMono, SourceCodePro, Hack and FiraCode

13. Install software from PopShop
    1.  Discord
    2.  Slack
    3.  Spotify
    4.  Franz
        1.  Disable Franz Todos
        2.  Join the Dark Force
    5.  Uninstall default Software such as Office
    6.  Gnome Tweaks

1. Install Gnome Shell Extensions and Shell:
   - sudo apt install gnome-shell-extensions
   - sudo apt install chrome-gnome-shell

2.  Install VLC

    - sudo apt install vlc
    - sudo apt install vlc-plugin-access-extra libbluray-bdj libdvdcss2

3.  Install Flameshot:  `sudo apt install flameshot`
   1. Settings -> Startup

4.  Configure Workspaces
    1.  Go to Tweaks -> Workspaces -> Set `Workspaces on primary display only

5.  Terminal Config
   2. Go to Preferences
      1. Create Edo Profile and Set it to be the Default
      2. Set custom font size to 10
      3. Install Gogh: `sudo apt-get install dconf-cli uuid-runtime`
        -   run: `bash -c  "$(wget -qO- https://git.io/vQgMr)"`

6.  Config keyboard settings
 
    1. `gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30`
    2. `gsettings set org.gnome.desktop.peripherals.keyboard delay 250`

7.  GIT

    To set your global username/email configuration:
    
    - Open the command line.
    - Set your username: `git config --global user.name "FIRST_NAME LAST_NAME"`
    - Set your email address: `git config --global user.email "MY_NAME@example.com"`

    Set Vs Code as your main editor: `git config --global core.editor "code --wait"`

    To set repository-specific username/email configuration:

    - from the command line, change into the repository directory:
      - set your username: `git config user.name "FIRST_NAME LAST_NAME"`
      - set your email address: `git config user.email "MY_NAME@example.com"`

    Verify your configuration by displaying your configuration file: `cat .git/config`


8.  install docker 
    - do: `sudo apt install docker-compose`
    - do: `sudo groupadd docker`
    - do: `sudo gpasswd -a $USER docker`
    - do: `newgrp docker`

9.  Download and install Dropbox


10. Install and config ZSH / oh-my-zsh / powerlevel 10k
    1. sudo apt-get update && sudo apt-get upgrade

    2.  install zsh: `sudo apt install zsh`

    3.  install oh-my-zsh: 
      
        `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

    4. Create a symbolic link to the dotfiles linux one in `~/.dotfile/linux/zshrc/.zshrc`

       - `ln -s ~/.dotfiles/linux/zshrc/.zshrc .zshrc`
    
    5. Change your default shell: `chsh -s /bin/zsh`

    6. install plugins

       - zsh-autosuggestions

        `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

       - zsh-syntax-highlighting

        `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

    add the two plugins to .zshrc (in case it's not already there)

    1. Install Powerlevel 10k: 

        - `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

        - type reload to issue p10k installer (note: reload is the same as doing `source .zshrc` in your home folder)


11. Install NodeJs

- sudo apt update
- sudo apt -y upgrade
- sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
- curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
- sudo apt -y install nodejs
- sudo apt -y install gcc g++ make
- echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


2. Install NVM

- `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash`
    
- Add this to your .zshrc (already included in my .zshrc linux dotfile):

- `export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm`

1. Install Yarn

install yarn using npm:  `sudo npm install --global yarn`

1.  Tweak keyboard shortcuts

    Add: 
    - Move to workspace above: Ctrl + Alt + Up
    - Move to workspace below: Ctrl + Alt + Down
    - Move window to upper workspace: Ctrl + Alt + Super + Up
    - Move window to lower workspace: Ctrl + Alt + Super + Down

    Remove:
    - disable lock screen
    - disable log out
    - disable Switch to next/previous input source

    Go to Gnome Tweaks -> Shortcuts:
    - Make Capslock an HyperKey

2. Install Gnome Extensions:
   - openweather
   - sound input device chooser
   - frippery move clock

1. Install Guake:
   - `sudo apt install guake`

1. Themes

    WhiteSur GTK Theme: https://github.com/vinceliuice/WhiteSur-gtk-theme

    WhiteSur Icons: https://github.com/vinceliuice/WhiteSur-icon-theme

    WhiteSur Cursors: https://www.gnome-look.org/p/1411743/

1. Disable Super+p

    Install `dconf-tools`and run `dconf-editor`

    In the tree on the left navigate to org => gnome => settings-daemon => plugins => xrandr

    Uncheck the active checkbox

    Maybe you should replace shortcut with []

