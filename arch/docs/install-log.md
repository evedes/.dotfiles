# ARCH LINUX

## INSTALL ARCH

Boot the system.

Type `archinstall` and follow installer instructions.

- Choose hyprland as the Desktop compositor/window manager.
- Add the packages: vim and firefox

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

Install nautilus:

`sudo pacman -S nautilus`

Enable nautilus connection to smb:

`sudo pacman -S gvfs gvfs-smb`

Install git and configure it:

`sudo pacman -S git`

```zsh
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "your.email@gmail.com"
git config --global core.editor vim
```

Configure `.ssh` folder for rubik:

- chmod .ssh folder permissions to 700
- chmod files to 600
- chmod \*.pub files to 644

Clone `.dotfiles` repo.

Remove `~/.config/hypr` and create a symbolic link to `~/.dotfiles/arch/hypr`

### Shell Tools

Install lazy git: `sudo pacman -Sy lazygit`

Install lf: `sudo pacman -Sy lf`

Install fzf: `sudo pacman -Sy fzf`

Install fd: `sudo pacman -Sy fd`

Install ripgrep: `sudo pacman -Sy ripgrep`

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

### Grub

Edit /etc/default/grub

```zsh
GRUB_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
```

Save the file, quit, and update grub with
`sudo grub-mkconfig -o /boot/grub/grub.cfg`

### Neovim

Install fuse

```zsh
sudo pacman -S fuse3
```

Install Neovim from AppImage ("universal" Linux package)

```zsh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Add the following line to ~/.zshrc:

```zsh
export PATH="$PATH:/opt/nvim-linux64/bin"

```

### Yay

Install Yay

```zsh
git clone https://aur.archlinux.org/yay.git
```

### Google Chrome

`yay -S google-chrome`

### Spotify

`sudo pacman -Syu spotify-launcher`

### Discord

`yay -S discord`

### Slack

`git clone https://aur.archlinux.org/slack-desktop.git`

### Notion

`git clone https://aur.archlinux.org/packages/notion-app-electron`

### Zulip

`git clone https://aur.archlinux.org/zulip-desktop-electron.git`

### Whatsapp

yay -S whatsapp-electron-bin

## Programming Languages

### Clojure

Install clojure by running:

```zsh
curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
chmod +x linux-install.sh
sudo ./linux-install.sh
sudo pacman -Sy rlwrap
rm -rf linux-install.sh
```

Install java by running:

`sudo pacman -Sy java-openjdk`

Install leiningen by running:

`sudo pacman -Sy leiningen`

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

- hyprshot

- rofi

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

VirtManager as a Conection Setting. Make sure NAT is enabled there, otherwise bridge won't work correctly.

## Emoji

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

### Cava

Probably you'll need to configure your sound correctly.
Here's an article to help with:
[https://linuxgenie.net/install-pipewire-on-arch-linux/]

`yay -S cava`

Run cava and test it with spotify

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
