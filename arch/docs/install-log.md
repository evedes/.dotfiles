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

Install git and configure it:

`sudo pacman -S git`

```zsh
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "your.email@gmail.com"
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
sudo pacman -Syu Docker
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
