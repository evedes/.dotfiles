# INSTALL POPOS

## INSTALLATION

- Download latest PopOS version
- Make a bootable PenDrive with PopOS
- Boot from the pen drive
- Install PopOS
  - Welcome to PopOS Window:
    - Select "Dock doesn't extend edges"
    - Select "Show workspaces button" to OFF
    - Select "Show applications button" to OFF
    - Select "Date & Time and Notifications position" to RIGHT
  - Set Appearance to Dark Mode
  - Network (Connect WiFi if you wish)
  - Privacy:
    - Set Locations Services to OFF
  - Timezone (in my case it's Lisbon/Portugal)
  - Connect Online Accounts: Google

## CONFIGURATION

### GENERIC

- Do PopShop updates
- Open a terminal and do
  ```
    sudo apt-get update && sudo apt-get upgrade
  ```
- Arrange displays according to setup.
- Install VSCode (Download it from the Webpage and Turn Sync On -> Replace Local)
- Install vim `sudo apt install vim`
- Add Prometheus (192.168.2.202) to /etc/hosts
- Go to Prometheus and grab:
  - 1Pass Config
  - Wallpapers
  - SSH Folder
- Change Wallpaper
- Install Spotify (Check sound works)
- Config Firefox (Add 1Pass)
- Install Chrome and config it (from PopShop)
- Install Brave and config it
- Install the `.ssh` folder
- Configure GIT:
  ```
  `git config --global user.name "FIRST_NAME LAST_NAME"`
  `git config --global user.email "your.email@gmail.com"`
  `git config --global core.editor "code --wait"`
  ```
  - To set specific repo config, do the same without the --global.
- Clone .dotfiles repo from GitHub
- Link the fonts file
  - Position yourself on your home folder
    ```
    ln -s ~/.dotfiles/fonts .fonts
    ```
  - Get into .fonts and do
    ```
    fc-cache -f -v
    ```
- Open Sharing and set hostname to `rubik`
- Open Network config and setup static network
  - Realtek -> ETHERNET1 using 192.168.2.200 to rubik
  - Intel -> ETHERNET2 using 192.168.2.201 to rubik
- Install GParted from the PopShop
- Install VLC
  ```
  sudo apt install vlc
  sudo apt install vlc-plugin-access-extra libbluray-bdj
  ```

#### GNOME TERMINAL

- Go to Preferences and create a profile called 'Edo'
- Install Gogh by doing: `bash -c  "$(wget -qO- https://git.io/vQgMr)"`, I use to pick 223"Tokyo Night Storm"
- Go to terminal preferences and see if the profile was created. If not just create another random profile, and repeat the process until a profile is created with the theme you picked. Set this one as the default and pick the right fonts and preferences.
- Change Profile font to JetBrains Mono Nerd Font
- Configure keyboard settings:
  ```
    gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
    gsettings set org.gnome.desktop.peripherals.keyboard delay 250
  ```

#### KEYBOARD

- Disable Super+P by doing:
  ```
  gsettings set org.gnome.mutter.keybindings switch-monitor "[]"
  gsettings set desktop.ibus.panel.emoji.hotkey "[]"
  ```
- Install gnome tweaks and set CapsLock as an additional Hyper.
- To do that issue
  ```
  sudo apt install gnome-tweaks
  ```
  - Go to Tweaks -> Top Bar -> Show Weekday
  - Go to Tweaks -> Windows titlebars -> Window Maximize/Minimize OFF
- To to Settings -> Desktop -> Make Super Key show all Workspaces
- Remove all set keyboard shortcuts 😅
- Leave:

  - Launchers
    - Launch Terminal: CapsLock + \
    - Leave Lock screen as Super+Escape
    - Leave Log out as Ctrl+Alt+Delete
    - Leave Alt+F2 as Show the run command prompt
  - Windows
    - Leave Close Window as Super+Q and Alt+Q

- Add the following:

  - Navigation:
    - Leave Switch applications as Super+Tab or Alt+Tab
    - Move to the workspace above: Ctrl+Alt+Up
    - Move to the workspace below: Ctrl+Alt+Down
    - Move window one monitor to the left: Shift+Alt+Left
    - Move window one monitor to the right: Shift+Alt+Right
    - Move window one workspace up: Shift+Alt+Up
    - Move window one workspace down: Shift+Alt+Down
    - Switch windows of an application: Alt+dead grave

- Configure Super+Space for Launcher
  To do it install dconf-editor from popshop (requires a logout)
  In dconf-editor go for /org/gnome/shell/extensions/pop-shell/activate-launcher
  - Tweak shortcut to ['<Super>space']
  - Go to Settings > Desktop and assign Super action to Workspaces
  - Go to Settings > Workspaces > Set Workspaces on Primary Display Only
  - Go to Settings > Dock > Intelligently hide > ON
- Install Gnome Shell Extensions + Gnome Shell
  `sudo apt install gnome-shell-extensions`
  `sudo apt install chrome-gnome-shell`

### SHELL

#### STARSHIP + ZSH + AUTOSUGGESTIONS + SYNTAX HIGHLIGHTING

- Configure ZSH + Starship
  ```
  sudo apt-get install zsh` in case your system doesn't have it. Test it with `zsh --version
  chsh -s /bin/zsh
  curl -sS https://starship.rs/install.sh | sh
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
  ```

Create a symlink to ~/.dotfiles/popos/zshrc/.zshrc
You'll possibly need to close/open the terminal or even to restart PopOS

####

- Configure ZSH + OhMyZsh + Powerlevel10k

  - Install oh-my-zsh doing:

    - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

  - Install Powerlevel 10k:

    - `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

- Install plugins:

  - zsh-autosuggestions

    - Note: _Add both plugins to .zshrc._

    - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

    - zsh-syntax-highlighting

      - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

#### GNOME EXTENSIONS

- Configure GTILE

- Basics: Disable Global resize presets

- Grid Sizes: 8x8,4x4,3x2

| key | dimensions | origin cell | destination cell |
| --- | ---------- | ----------- | ---------------- |
| j   | 4x4        | 1:1         | 2:4              |
| ;   | 4x4        | 3:1         | 4:4              |
| k   | 3x2        | 1:1         | 2:2              |
| l   | 3x2        | 2:1         | 3:2              |
| h   | 3x2        | 1:1         | 1:2              |
| ´   | 3x2        | 3:1         | 3:2              |
| r   | 4x4        | 1:1         | 4:2              |
| v   | 4x4        | 1:3         | 4:4              |
| ]   | 4x4        | 1:1         | 4:4              |
| [   | 3x2        | 2:1         | 2:4              |
| q   | 3x2        | 1:1         | 1:1              |
| w   | 3x2        | 2:1         | 2:1              |
| e   | 3x2        | 3:1         | 3:1              |
| z   | 3x2        | 1:2         | 1:2              |
| x   | 3x2        | 2:2         | 2:2              |
| c   | 3x2        | 3:2         | 3:2              |
| u   | 4x4        | 1:1         | 2:2              |
| p   | 4x4        | 3:1         | 4:2              |
| m   | 4x4        | 1:3         | 2:4              |
| /   | 4x4        | 3:3         | 4:4              |
| i   | 3x2        | 1:1         | 2:1              |
| o   | 3x2        | 2:1         | 3:1              |
| ,   | 3x2        | 1:2         | 2:2              |
| .   | 3x2        | 2:2         | 3:2              |

### CODING TOOLS

#### NODE

Install fnm:

```
curl -fsSL https://fnm.vercel.app/install | bash
fnm install v16
fnm install v18
```

Install yarn `npm install -g yarn`.

Increase number of file watchers:

```
echo 'fs.inotify.max_user_watches=524288' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

#### DOCKER

```
sudo apt update && sudo apt upgrade
sudo apt install docker.io
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo docker version
sudo usermod -aG docker $USER
newgrp docker
reboot so that everything works
```

#### DOCKER COMPOSE

```
mkdir -p ~/.docker/cli-plugins/

curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

docker compose version
```

#### KUBECTL

```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

#### MINIKUBE

```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

Type `mk status` and `mk start` and all should be working.

#### SKAFFOLD

```
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64

sudo install skaffold /usr/local/bin/
```

#### CLOJURE

```
sudo apt install clojure leiningen
```

#### OPENSSH

```
sudo apt install openssh-server
sudo systemctl enable --now ssh
```

### VIRTUALIZATION

#### KVM/QEMU

Based on this [YouTube Video](https://www.youtube.com/watch?v=vyLNpPY-Je0)

See if your processor has virtualization capability:

```
lscpu | grep Virtualization
```

If yes, an Intel processor will show VT-x and an AMD processor will show AMD-V.

Let's install qemu-kvm

```
sudo apt install qemu-kvm
```

Let's install libvirt

```
sudo apt install libvirt-daemon-system libvirt-clients
```

Add user to the kvm group

```
sudo adduser $USER kvm
```

Restart the system so that changes can take effect.

Run `groups` and check the user belongs to kvm and libvirt groups.

Install virt-manager

```
sudo apt install virt-manager
```

#### CREATE A SOFTWARE BRIDGE

Base on this [YouTube Video](https://www.youtube.com/watch?v=DYpaX4BnNlg)

Use `sudo nmtui`

Add a bridge, configure the ethernet card as slave.
Remove the ethernet card from the ethernet device lists.

Run `nmcli` and check the bridge exists with the correct IP, and the network card doesn't have an ip and says that the master is the bridge.

#### CONFIGURE XRDP

[How to Config XRDP](https://c-nergy.be/blog/?p=16637)

#### TRUENAS

To proper shutdown VMs on host reboot:

```
vim /etc/default/libvirt-guests
```

Uncomment the line which says ON_SHUTDOWN=shutdown

### FAQ / SUGGESTIONS

In case you see an error “manpath: can’t set the locale; make sure $LC\_\* and $LANG are correct”, one way to solve it is:

sudo locale-gene “en_US.UTF-8”

**edit /etc/default/locale**

LANG=en_US.UTF-8

LC_ALL=en_US.UTF-8

Do `source /etc/default/locale`
