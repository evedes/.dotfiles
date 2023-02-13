# MACBOOK PRO - DUNE

### 1. OSX General Setup

- Configure Mouse and Trackpad to scroll in the right direction
  - Trackpad to click with one tap click
  
- Change Keyboard to User F1, F12 keys (it helps in VSCode)
- Remove all icons from Dock (throw them in the Bin)
- Keep the Finder, the Applications folder, and the Downloads Folder
  
  - Application Folder configured as Folder / Grid
  - Downloads's Folder configured as Folder / List

- Configure Displays (in my case I have +2 so I arrange the order and define the scale)

- Sidebar
  - Make Weather a Large widget
  - Make Calendar a Large widget
  - Make usage a Large widget
  - Remove stocks (I don't care about stocks there)
  - Configure the clocks widget (Luanda, New York, San Francisco, Helsinki) 

- Configure Finder
  - Pick the following things:
    - Uncheck the open folders as tabs instead of windows
    - Show only network drives / connected servers
    - New finder window shows edo (home folder)

-  Configure the network interfaces
   -  The ethernet one with static IP
   -  The wireless with DHCP
   -  Add local DNS authoratative service IP in case it exists
  
- Configure /etc/hosts folder with all the machines you need in the local network
- Change Computer Name in Settings -> Sharing

- Configure Time Machine to use Standard Backup Disk (in my case the TrueNAS backup drive)

- Install Homebrew
  
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- Turn on Printers
  - In my case they're configured to be wireless and have their static IPs.
  - So I just add them smoothly, they're recognized in seconds

- Set a nice wallpaper

- Install your personal .ssh folder in case you have one
- Folder permissions should be right:
    - 700 .ssh folder
    - 600 private key
    - 644 remaining files

- Make sure git is installed
   - Clone the .dotfiles repo

- Install font files
   - Hack Nerd Font
  - Fira Code Nerd Font
  - JetBrains Mono Nerd Font

### 02. Keyboard + Shortcuts

- Install Karabiner Elements
  - Add a complex action that transforms Caps Lock into an Hyper key: Command+Control+Option+Shift
  - Before doing it go to Keyboard Shortcuts -> Keyboard Modifiers and assign No Action to Caps Lock
- Install VIA + Keychron Q4 json file
- Install Better Touch Tool
  - Configure two actions
    - Move app to Left Space: Hyper + J
    - Move app to Right Space: Hyper + ;
- Install Moom
  - Configure all the window tiling you like (to update here later)
  - Configure Hyper+k to move window to left monitor
  - Configure Hyper+l to move window to right monitor
- Install Alfred 5 (disable spotlight shortcut and assign CMD+Space to Alfred)
  - Enable shortcut CMD + Space
  - Default Results -> Enable Folders
  - Appearence -> Options -> Show result subtext -> Never
  - Appearence -> Options -> Hide hat on Alfred Window
  - Appearence -> Options -> Hide result shortcuts
  - Appearence -> Options -> Hide menu bar icon
  - Features -> Default Results -> Search Scope -> Remove everything except /Applications
- Install Google Drive (For Desktop)
  - I hope to deprecate this soon as my HomeLab grows


## 02. Software

- Install Chrome
  - Sign-in to 1 Password and Sign-in to sync
- Install Firefox
  - Sign-in to 1 Password and Sign-in to sync
- Install Brave
  - Sign-in to 1 Password and Sign-in to sync
- Install 1Password App for OSX
- Install Spotify
- Install Discord
- Install Slack
- Install Franz
- Install Visual Studio Code
- Install Notion
- Install Stats (brew install stats)
   - Shell Command -> Install Code in the PATH
   - Turn Sync On
- Install Cleanshot
- Install Screenflow
- Install Postman
- Install MySQL Workbench
- Install PgAdmin
- Install MongoDB Compass


- Install iTerm 2 
   - Preferences - General -> Closing -> Uncheck Confirm closing multiple sessions
   - Preferences - General -> Closing -> Uncheck Confirm "Quit iTerm2"
   - Preferences -> Appearance -> Theme Minimal
   - Preferences -> Appearance -> Window -> Hide scrollbars
   - Preferences -> Appearance -> Window -> Uncheck Show border around windows
   - Preferences -> Appearance -> Tabs -> Uncheck Show Tab Numbers
   - Preferences -> Appearance -> Tabs -> Uncheck Tabs have close buttons
   - Preferences -> Appearance -> Panes -> Uncheck Show per-pane title bar with split panes
   - Preferences -> Appearance -> Dimming -> Uncheck Dim inactive split panes



### 03. DEV STUFF

- Configure Git:

```
   git config --global user.name "Your Name Here"
   git config --global user.email "<your-email-address>"
   git config --global core.editor "code --wait"
```

Also can be done on a repo basis removing the `--global` param

- Colored Vim
   - Create .vimrc file in ~: `touch ~/.vimrc`
   - Edit .vimrc and add `syntax on`

- Install SpeedTest
  - `brew install speedtest-cli`

- Install Docker for Desktop 😅
- Install Minikube
  - `curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-arm64`
  - `sudo install minikube-darwin-arm64 /usr/local/bin/minikube`

- Install Kubectl
  - `curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"`
  - `chmod +x ./kubectl`
  - `sudo mv ./kubectl /usr/local/bin/kubectl`
  - `sudo chown root: /usr/local/bin/kubectl`


- Install Glances
  - `brew install glances`

- Install NVM [Link to GitHub Repo](https://github.com/nvm-sh/nvm#installing-and-updating)

   `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
   
   - Close and open terminal

   - `nvm install --lts`
   - `nvm install v16`
   - `nvm alias default 18`
   - `nvm use default`

- Configure ZSH + Starship
  - `brew install zsh` in case your system doesn't have it. Test it with `zsh --version`
  - `curl -sS https://starship.rs/install.sh | sh`

  - 

- Configure ZSH + Oh-My-Zsh + Powerlevel 10k (🔥 I'm leaving this conf soon for zsh + starship)

  - Install oh-my-zsh doing:

    - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

  - Install powerlevel 10k:

    - `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

    - Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in ~/.zshrc.

  - Install plugins:

    - zsh-autosuggestions
      - Note: _Add both plugins to .zshrc._

      - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

    - zsh-syntax-highlighting

      - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

-  Install Yarn

   - `sudo npm install --global yarn`
