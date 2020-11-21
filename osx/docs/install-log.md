# MACBOOK PRO - BACH

### INSTALL LOG

### 01. OSX (SETUP)
1. add 192.168.1.200 mozart to /etc/hosts
1. System Prefs -> General -> Default browser: Chrome (after Chrome installation)
1. System Prefs -> General -> Sidebar Icon Size: Small
1. System Prefs -> Users & Groups -> Guest User -> Uncheck Allow guests to log in to this computer
1. Display Arrangement and Wallpapers
1. Side Bar -> Remove Stocks
1. Set Timezone to Lisbon
1. Disable Siri -> System Prefs -> Siri -> Uncheck Enable Ask Siri, Uncheck Show Siri in menu bar
1. Keyboard -> Key Repeat to Max, Delay Until Repeat to Max
1. Keyboard -> Enable Use F1, F2, etc keys
1. Mouse -> Tracking Speed to 7/10 -> Double-Click Speed to 8 / 10 -> Uncheck Scroll direction: Natural
1. Trackpad -> Check Tap to click
1. Download Folder -> Display As Folder -> View Content As List
1. Applications Folder to Dock
1. Applications Folder -> Display as Folder -> View Content as Automatic
-> 1. Configure Time Machine to use Standard Backup Disk
1. Dock Preferences -> Small -> Autohide Enabled
1. System Prefs -> Printers -> Add -> Officejet 7200 (Turn printer on first)
1. Battery Icon -> Show percentage
1. Finder Preferences -> Show these items on the desktop -> Connected Servers
1. Finder Preferences -> New Finder windows show: ~
1. Finder Preferences -> Uncheck Open folders in tabs instead of new windows
1. System Prefs -> Keyboard -> Shortcuts -> Spotlight -> Turn Do Not Disturb On/Off -> CTRL+CMD+P
1. System Prefs -> Keyboard -> Shortcuts -> Disable Spotlight shortcuts
1. System Prefs -> Sharing -> Computer Name -> RUBIK
1. System Prefs -> Users & Groups -> Login Options -> Enable Show fast user switching menu as -> Account Name
1. Calendar -> Preferences -> General -> Day starts at: 07:00 -> Day ends at: 22:00 -> Start week on: Monday
1. Dock -> Remove all Icons from Dock, leave finder, Applications and Downloads Folder and the Trash

---

### 02. SOFTWARE

1. Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

1. Visual Studio Code (Downloaded)

   - Shell Command -> Install Code in the PATH
   - Settings -> Breadcrumbs -> File path: disabled
   - Settings -> Terminal -> Font-family -> SauceCode Pro Nerd Font
   - Extensions:
      - Babel
      - Markdown Preview Github Styling
      - Code Runner
      - Live Share
      - Prettier
      - ESLint
      - Bracket Pair Colorizer 2

1. Karabiner-Elements
   - Disable Caps_Lock key in Keyboard Settings
   - Configured Complex Modifications
     1. Change caps_lock to CMD+CTRL+ALT+SHIFT as Hyper Key

1. iTerm 2 (Downloaded)
   - iTerm Menu:
      - Make iTerm2 Default Term
      - Install Shell Integration
   - Preferences - General -> Closing -> Uncheck Confirm closing multiple sessions
   - Preferences - General -> Closing -> Uncheck Confirm "Quit iTerm2"
   - Preferences -> Keys -> Hotkey to ALT + <
   - Preferences -> Appearance -> Tab bar location: Top / Dark
   - Preferences -> Appearance -> -> Window -> Hide scrollbars
   - Preferences -> Appearance -> Uncheck Show per-pane title bar with split panes
   - Preferences -> Appearance -> Dimming -> Uncheck Dim inactive split panes

1. Chrome
   - Sign-in
   - Turn on sync

1. Discord
1. Slack
1. Kelir

1. 1Password

1. Spotify
   - Settings -> Startup and Windows Behaviour -> Open Spotify automatically -> No

1. Backup & Sync (Google)

1. Moom

1. iStatz
   - Configured Info
   - Removed default battery status
   - Added iStatz battery status

1. Alfred 4
   - Enable shortcut CMD + Space
   - Default Results -> Disable Contacts
   - Default Results -> Enable Folders
   - Appearence -> Alfred Dark
   - Appearence -> Options -> Show result subtext -> Never
   - Appearence -> Options -> Hide hat on Alfred Window
   - Appearence -> Options -> Hide result shortcuts
   - Appearence -> Options -> Hide menu bar icon
   - Appearence -> Options -> Show Alfred on mouse screen
   - Features -> Default Results -> Search Scope -> Remove everything except /Applications
   - Features -> System -> Enable ejectall

1. Cleanshot
1. Postman
1. Docker
1. HP Smart
1. Plex
1. VLC
1. Screenflow

---

### 03. DEV STUFF

0. **global and scoped git username/email config**

1. **Node.js**

   -> Install nvm

   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash

   add this line to .zshrc:

   export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

   note: already added in dotfiles

1. ## ZSH CONFIG

-> install zsh if not on the system (osx has a zsh version)

-> install oh-my-zsh doing:

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

-> install powerlevel 10k:

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


-> install nerd fonts:

download SauceCodePro Nerd Font and install it

-> go to Iterm2, create a profile and set the new font there

-> install plugins

zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/\pluginszsh-syntax-highlighting

create a symlink to your .dotfiles/osx/zshrc/.zshrc file


1. **Glances**

   -> brew install glances

1. **youtube-dl**

   -> brew install youtube-dl

1. **hub**

   -> brew install hub

§. **telnet**

    -> brew install telnet
