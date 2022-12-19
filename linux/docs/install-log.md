
# INSTALL POPOS

Arrange displays according to setup.

Welcome to PopOS modal:
    - no dock
    - no applications / workspaces
    - activate privacy
    - pick lisbon as main city
- Open Sharing and set hostname to Rubik
- Open Network config and setup static network using 192.168.2.200 to rubik
- Open File Explorer connect, to Prometheus (192.168.2.202) and get wallpapers
- Install vim: `sudo apt install vim`
- Edit /etc/hosts to add promethues there.

- Open Firefox and download Chrome in English (please 🙏)
- Install Chrome
- Configure 1Password both on Firefox and Chrome
- Configure Work accounts (add Flexiana Chrome Profile and change the avatar)
- Disable show profiles on startup (Chrome)

- Update and upgrade the system
  `sudo apt update && sudo apt upgrade`

- Download and install VSCode. Open VSCODE, login and sync profiles.
  
- Download and set .ssh keys for rubik
- Configure GIT:
  `git config --global user.name "FIRST_NAME LAST_NAME"`
  `git config --global user.email "eduardo.vedes@gmail.com"`
  `git config --global core.editor "code --wait"`

  To set specific repo config, do the same without the --global.

- Git clone .dotfiles
- Download fonts from Google Drive. Create a .fonts folder and add them there.
- Install them by doing `fc-cache -f -v`
- Install Gogh by doing: `bash -c  "$(wget -qO- https://git.io/vQgMr)"`, I use to pick 217 "Tokyo Night Storm"
- Go to terminal preferences and see if the profile was created. If not just create another random profile, and repeat the process until a profile is created with the theme you picked. Set this one as the default and pick the right fonts and preferences.

- Configure keyboard settings:
  `gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30`
  `gsettings set org.gnome.desktop.peripherals.keyboard delay 250`


## KEYBOARD CONFIG
- Disable Super+P by doing: `gsettings set org.gnome.mutter.keybindings switch-monitor "[]"`
- Install gnome tweaks and set CapsLock as another Hyperkey.To do that issue `sudo apt install gnome-tweaks`

- Remove all set keyboard shortcuts
  Leave:
    - Set Launchers -> Launch Terminal: CapsLock + \
    - Leave Lock screen as Super+Escape
    - Leave Log out as Ctrl+Alt+Delete
    - Leave Alt+F2 as Show the run command prompt
    - Leave Switch applications as Super+Tab or Alt+Tab
    - Leave Windows -> Close Window as Super+Q
Add the following:
  Navigation:
    - Move to the workspace above: Ctrl+Alt+Up
    - Move to the workspace below: Ctrl+Alt+Down
    - Move window one monitor to the left: Shift+Alt+Left
    - Move window one monitor to the right: Shift+Alt+Right
    - Move window one workspace up: Shift+Alt+Up
    - Move window one workspace down: Shift+Alt+Down
  

- Configure Super+Space for Launcher
  To do it install dconf-editor from popshop (requires a logout)
  In dconf-editor go for /org/gnome/shell/extensions/pop-shell/activate-launcher
  - Tweak shortcut to ['<Super>space']
  - Go to Settings > Desktop and assign Super action to Workspaces

- Install Gnome Shell Extensions + Gnome Shell
  `sudo apt install gnome-shell-extensions`
  `sudo apt install chrome-gnome-shell`


## SHELL

Configure Zsh + Oh-My-Zsh + Powerlevel 10k

Install zsh
- `sudo apt install zsh`

Install Oh-My-Zsh
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

A .zshrc was created. Just remove it and create a symlink
`ln -s ~/.dotfiles/linux/zshrc/.zshrc ~/.zshrc

Change the default shell to zsh:
`chsh -s /bin/zsh`

Install Zsh-Autosuggestions:
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

Install Zsh-Syntax-Highlighting:
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

Install Powerlevel10k:
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

Logout and open Terminal. A few questions will be asked regarding on how to configure Powerlevel10.


## NODE

Install nvm: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash`
Quit and open terminal and type nvm to check it's there.

Install node versions:
nvm install v16
nvm install --lts
nvm alias default v18
nvm use default

Install yarn `nvm install -g yarn`.

Increase number of file watchers:
`echo 'fs.inotify.max_user_watches=524288' | sudo tee -a /etc/sysctl.conf`
`sudo sysctl -p`

## DOCKER

`sudo apt update`

`sudo apt install -y ca-certificates curl gnupg lsb-release`

`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`

`echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`

`sudo apt-get update`
`sudo apt install docker-ce docker-ce-cli containerd.io -y`

`sudo usermod -aG docker $USER`
`newgrp docker`

reboot so that everything works.

## KUBECTL

`curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"`

`sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl`

## MINIKUBE

`curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64`
`sudo install minikube-linux-amd64 /usr/local/bin/minikube`

 Type `mk status` and `mk start` and all should be working.

 ## SKAFFOLD

`curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64`
`sudo install skaffold /usr/local/bin/`

## CLOJURE

`sudo apt install clojure leiningen`

## OPENSSH

`sudo apt install openssh-server`
`sudo systemctl enable ssh`

## APPS

- Install VLC
  `sudo apt install vlc`
  `sudo apt install vlc-plugin-access-extra libbluray-bdj`

- Install Spotify from the PopShop

## GNOME EXTENSIONS


** Configure GTILE

    Basics: Disable Global resize presets

    Grid Sizes: 8x8,4x4,3x2

| key | dimensions | origin cell | destination cell |
|-----+------------+-------------+------------------|
| j   |        4x4 |         1:1 |              2:4 |
| ;   |        4x4 |         3:1 |              4:4 |
| k   |        3x2 |         1:1 |              2:2 |
| l   |        3x2 |         2:1 |              3:2 |
| h   |        3x2 |         1:1 |              1:2 |
| ´   |        3x2 |         3:1 |              3:2 |
| r   |        4x4 |         1:1 |              4:2 |
| v   |        4x4 |         1:3 |              4:4 |
| ]   |        4x4 |         1:1 |              4:4 |
| [   |        3x2 |         2:1 |              2:4 |
| q   |        3x2 |         1:1 |              1:1 |
| w   |        3x2 |         2:1 |              2:1 |
| e   |        3x2 |         3:1 |              3:1 |
| z   |        3x2 |         1:2 |              1:2 |
| x   |        3x2 |         2:2 |              2:2 |
| c   |        3x2 |         3:2 |              3:2 |
| u   |        4x4 |         1:1 |              2:2 |
| p   |        4x4 |         3:1 |              4:2 |
| m   |        4x4 |         1:3 |              2:4 |
| /   |        4x4 |         3:3 |              4:4 |
| i   |        3x2 |         1:1 |              2:1 |
| o   |        3x2 |         2:1 |              3:1 |
| ,   |        3x2 |         1:2 |              2:2 |
| .   |        3x2 |         2:2 |              3:2 |


## FAQ

In case you see an error “manpath: can’t set the locale; make sure $LC_* and $LANG are correct”, one way to solve it is:

sudo locale-gene “en_US.UTF-8”

# edit /etc/default/locale
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

Do `source /etc/default/locale`


      
