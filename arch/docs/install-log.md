# ARCH LINUX

## INSTALL

Use archinstall installer.

Choose hyprland as the Desktop compositor/window manager.

Add the packages: vim and firefox

## CONFIG

Update system with

`sudo pacman -Syu`

Install git and configure it:

`sudo pacman -S git`

```zsh
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "your.email@gmail.com"
```

SSH to Prometheus and grab SSH folder + 1PASSWORD file.

Configure `.ssh` folder for rubik:

- chmod .ssh folder permissions to 700
- chmod files to 600
- chmod \*.pub files to 644

Clone `.dotfiles` repo.

Remove `~/.config/hypr` and create a symbolic link to `~/.dotfiles/arch/hypr`

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

### FNM

Install fnm so that .zshrc runs without errors

```zsh
curl -fsSL https://fnm.vercel.app/install | bash
fnm install v16
fnm install v18
```

## Grub

Edit /etc/default/grub

```zsh
GRUB_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
```

Save the file, quit, and update grub with
`sudo grub-mkconfig -o /boot/grub/grub.cfg`

## Neovim

Install fuse

```zsh
sudo pacman -S fuse3
```

Install Neovim from AppImage ("universal" Linux package)

```zsh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.AppImage

mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim
```

Add the following line to ~/.bashrc:

```zsh
export PATH="$PATH:/opt/nvim/"
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
