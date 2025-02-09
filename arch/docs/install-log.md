# ARCH LINUX

## INSTALL ARCH

Boot the system.

Type `archinstall` and follow installer instructions.

- Choose hyprland as the Desktop compositor/window manager.
- Add the packages: vim, firefox

## Install Hyprland

```zsh
# Install essential packages

sudo pacman -S \
    hyprland \
    kitty \
    waybar \
    xdg-desktop-portal-hyprland \
    qt5-wayland \
    qt6-wayland

# For better Wayland compatibility

sudo pacman -S \
    polkit-kde-agent \
    xorg-xwayland \
    pipewire \
    pipewire-pulse \
    wireplumber

# Optional but recommended utilities:

sudo pacman -S \
    brightnessctl \
    pamixer \
    mako \
    wofi \
    grim \
    slurp

# To manually start Hyprland:

nano ~/.start-hypr

# Add this content:

#!/bin/bash

# Export environment variables
export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24
export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORMTHEME=qt5ct
export SDL_VIDEODRIVER=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland

# Start Hyprland
exec Hyprland

# Make it executable

chmod +x ~/.start-hypr


```

## CONFIGURE THE SYSTEM

### UPDATE SYSTEM

Update the mirror lists for fastest servers available:

`sudo pacman -S reflector`

Create a backup of the default mirror list:

`sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak`

Fetch the top 10 fastest servers, and add them to the mirror list:

`sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist`

Update Arch Linux to its latest:

`sudo pacman -Syu`

Edit `/etc/pacman.conf`:

- Uncomment `ParallelDownloads = 5`
- Add `ILoveCandy` to transform progress bar into pacman eating the dots!

### GIT + SSH

Install unzip:

`sudo pacman -S unzip`

Enable nautilus connection to smb:

Install git and configure it:

`sudo pacman -S git`

```zsh
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "your.email@gmail.com"
git config --global core.editor vim
git config --global pull.rebase true
git config --global init.defaultBranch main
```

Configure `.ssh` folder for rubik:

- chmod .ssh folder permissions to 700
- chmod files to 600
- chmod \*.pub files to 644

Clone `.dotfiles` repo.

Remove `~/.config/hypr` and create a symbolic link to `~/.dotfiles/arch/hypr`

### Yay

Install Yay

```zsh
git clone https://aur.archlinux.org/yay.git
```

### Google Chrome

Install Google Chrome in case it wasn't installed during archinstall

`yay -S google-chrome`

### Browsers

Sign in and sync browsers: Chrome + Firefox

### Shell Tools

Use pacman to install a few shell tools

```zsh
sudo pacman -Sy lazygit lf fzf fd ripgrep speedtest-cli btop cmatrix zsh tmux
```

### FONTS

Cp ~/.dotfiles/fonts to ~/.fonts

Inside .fonts run `fc-cache -f -v`

`sudo pacman -S noto-fonts-emoji`

Create a `~/.config/fontconfig/fonts.conf`

Paste this into the file:

```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
 <alias>
   <family>sans-serif</family>
   <prefer>
     <family>Noto Sans</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Sans</family>
   </prefer>
 </alias>

 <alias>
   <family>serif</family>
   <prefer>
     <family>Noto Serif</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Serif</family>
   </prefer>
 </alias>

 <alias>
  <family>monospace</family>
  <prefer>
    <family>Noto Mono</family>
    <family>Noto Color Emoji</family>
    <family>Noto Emoji</family>
   </prefer>
 </alias>
</fontconfig>
```

### ZSH + OH-MY-ZSH + POWERLEVEL10K

Install oh-my-zsh doing:

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Install Powerlevel 10k:

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

Install plugins:

- zsh-autosuggestions

  `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

- zsh-syntax-highlighting

  `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

Create a symbolic link for .zshrc and for .p10k.zsh

Create a symbolic link for kitty in `~/.config/kitty`

### FNM (NODE)

Install fnm so that .zshrc runs without errors

```zsh
curl -fsSL https://fnm.vercel.app/install | bash
fnm install --lts
```

You can also install yarn globally by running `npm i -g yarn`

Probably you'll have a suggestion to update nvm to its latest version.

### GRUB

Edit /etc/default/grub

```zsh
GRUB_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
```

Save the file, quit, and update grub with
`sudo grub-mkconfig -o /boot/grub/grub.cfg`

### NEOVIM

Install:

```zsh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Add this to your ~/.zshrc:

`export PATH="$PATH:/opt/nvim-linux64/bin"`

### CAVA

`yay -S cava`

If it doesn't work, install this:

`pacman -S base-devel fftw ncurses alsa-lib iniparser autoconf-archive pkgconf`

`yay -S cava`

Run cava and test it with spotify

### GTK

Install ngw-look:

`yay -S ngw-look`

Install a theme:

`yay -S kanagawa-gtk-theme-git`

Create .config/gtk-3.0 and gtk-4.0 folders

```zsh
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/gtk-4.0
```

Set the theme in the GTK Settings files:

```zsh
# For GTK-3
echo '
[Settings]
gtk-theme-name=Kanagawa
gtk-icon-theme-name=Adwaita
gtk-font-name=Sans 10
gtk-cursor-theme-name=Adwaita
gtk-cursor-theme-size=0
gtk-toolbar-style=GTK_TOOLBAR_BOTH_HORIZ
gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR
gtk-button-images=0
gtk-menu-images=0
gtk-enable-event-sounds=1
gtk-enable-input-feedback-sounds=1
gtk-xft-antialias=1
gtk-xft-hinting=1
gtk-xft-hintstyle=hintslight
gtk-xft-rgba=rgb' > ~/.config/gtk-3.0/settings.ini

# For GTK-4
cp ~/.config/gtk-3.0/settings.ini ~/.config/gtk-4.0/settings.ini
```

Edit ~/.profile

```zsh
export GTK_THEME=Kanagawa-Border
export XDG_CURRENT_DESKTOP=Unity
```

Restart the compositor:

`hyprctl reload`

### Dropbox

`yay -S dropbox`

Create a ~/.config/systemd/user/dropbox.service

```zsh
[Unit]
   Description=Dropbox
   After=network.target

   [Service]
   ExecStart=/usr/bin/dropbox
   ExecReload=/bin/kill -HUP $MAINPID
   KillMode=process
   Restart=on-failure

   [Install]
   WantedBy=default.target
```

````zsh

Make Dropbox start on boot:

```zsh
systemctl --user enable dropbox.service
systemctl --user start dropbox.service
````

### Obsidian

`sudo pacman -Sy obsidian`

### Spotify

`sudo pacman -Syu spotify-launcher`

### Discord

Here we're going to install an alternative to discord

`yay -S webcord`

### Slack

`git clone https://aur.archlinux.org/slack-desktop.git`

### Notion

`git clone https://aur.archlinux.org/notion-app-electron.git`

## Programming Languages

### Ruby

Installing Rbenv

```zsh
sudo pacman -S base-devel libffi libyaml openssl zlib

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
```

Installing Rails

`gem install rails`

### Clojure

Install clojure by running:

```zsh
curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
chmod +x linux-install.sh
sudo ./linux-install.sh
sudo pacman -Sy rlwrap
rm -rf linux-install.sh
```

Install leiningen by running:

`sudo pacman -Sy leiningen`

Maybe you don't need to install openjdk, because leinngen does it for you, but in any case:

`sudo pacman -Sy java-openjdk`

### Docker

Install Docker:

```zsh
sudo pacman -Syu docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker $USER
```

Install Docker Compose:

```zsh
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.24.5/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

docker compose version
```

Install (using pacman):

- waybar
- hyprpaper

## KVM / QEMU / VIRT Manager

`sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat`

`sudo pacman -S ebtables iptables`

`sudo pacman -S libguestfs`

`sudo systemctl enable libvirtd.service`

`sudo systemctl start libvirtd.service`

`sudo usermod -a -G libvirt $(whoami)`

`sudo systemctl restart libvirtd.service`

How to configure network bridge and slave device in NetworkManager:
[https://wiki.archlinux.org/title/network_bridge]

Go to Virtual Networks on the Connection Details of Virt Manager and delete any present network.

Install TrueNAS and assign it your bridge interface: rubikbr0, in my case.

Boot TrueNas and get into the linux shell.

Go to /etc/network/interfaces and add the following:

```zsh

# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto enp1s0
iface enp1s0 inet static
    address 192.168.2.203
    netmask 255.255.255.0
    gateway 192.168.2.1
    dns-nameservers 1.1.1.1 8.8.8.8
```

Restart TrueNAS and it should work.

## Open SSH

`sudo pacman -S openssh`

`sudo systemctl start sshd`

`sudo systemctl enable sshd`

## GPU Passthrough

Here's the tutorial I used as a source of inspiration:

[Install GPU Passthrough on Arch Linux](https://www.youtube.com/watch?v=uOuzFd8Gd2o) from MyLinuxForWork YouTube Channel.

You need the following installed:
`sudo pacman -S virt-manager virt-viewer qemu vde2 ebtables iptables-nft nftables dnsmasq bridge-utils ovmf swtpm`

Update grub bootloader:
`sudo vim /etc/default/grub`

You'll need to update GRUB_CMDLINE_LINUX_DEFAULT to look like this:
`GRUB_CMDLINE_LINUX_DEFAULT="rd.driver.pref=vfio-pci amd_iommu=on iommu=pt video-=efifb:off lovelvel=3 quiet"`

After that run `sudo grub-mkconfig` to update grub config.

Run `iommu.sh` script to make sure your Graphics Card has an IOMMU group.

Now do `sudo vim /etc/mkinitcpio.conf`

Make sure this line is update there:
`MODULES=(vfio_pci vfio vfio_iommu_type1)`

Also make sure `modconf` is in to your HOOKS line

Regenerate conf by typing: `sudo mkinitcpio -P`

Now edit /etc/modprobe.d/vfio.conf and add:

`options vfio-pci ids=10de:1187,10de:0e0a`,

Make sure you get the right ids from running `iommu` script.

Reboot your system.

Test the configuration with: `sudo dmesg | grep -i vfio`

Okay, at this point, we're set in terms of hardware requirements.

Go to VirtManager and install Windows 11.

After installing make sure system is updated.
Go to System > Remote Desktop and activate Remote Desktop
Also disable the need for a certificate.

Back to Arch, install freerdp: `sudo pacman -S freerdp`

```

```

```

```
