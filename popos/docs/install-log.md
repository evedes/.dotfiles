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
- Create the `.ssh` folder and add ssh keys
- Configure GIT:

  ```
  git config --global user.name "FIRST_NAME LAST_NAME"
  git config --global user.email "your.email@gmail.com"
  git config --global core.editor vim
  ```

- Install SHELL tools:
  `sudo apt install ripgrep speedtest-cli btop cmatrix tmux cava`

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

Install Neovim:

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Add this to your ~/.zshrc:

`export PATH="$PATH:/opt/nvim-linux64/bin"`

#### KEYBOARD

```
  gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
  gsettings set org.gnome.desktop.peripherals.keyboard delay 250
```

- Disable Super+P by doing:

  ```
  gsettings set org.gnome.mutter.keybindings switch-monitor "[]"
  ```

- Install gnome tweaks and set CapsLock as an additional Hyper.

  ```
  sudo apt install gnome-tweaks
  ```

- Install Gnome Shell Extensions + Gnome Shell
  `sudo apt install gnome-shell-extensions`
  `sudo apt install chrome-gnome-shell`

### SHELL

#### ZSH + OH-MY-ZSH + POWERLEVEL10K + AUTOSUGGESTIONS + SYNTAX HIGHLIGHTING

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

### TOPHAT

Run `sudo apt install gir1.2-gtop-2.0` after installing tophat extension

### CODING TOOLS

#### NODE

Install fnm:

```
curl -fsSL https://fnm.vercel.app/install | bash
fnm install v16
fnm install v18
```

Install yarn `npm install -g yarn`.

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

```
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker
sudo systemctl enable docker

sudo usermod -aG docker $USER
newgrp docker
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
