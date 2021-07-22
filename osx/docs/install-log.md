# MACBOOK PRO - BACH


## 1. OSX General Setup

- Add 192.168.1.200 mozart to /etc/hosts
- System Prefs -> General -> Default browser: Chrome (after Chrome installation)
- System Prefs -> General -> Sidebar Icon Size: Small
- Display Arrangement and Wallpapers
- Side Bar -> Remove Stocks
- Set Timezone to Lisbon
- Disable Siri -> System Prefs -> Siri -> Uncheck Enable Ask Siri, Uncheck Show Siri in menu bar
- Keyboard -> Key Repeat to Max, Delay Until Repeat to Max
- Keyboard -> Enable Use F1, F2, etc keys
- Mouse -> Tracking Speed to 7/10 -> Double-Click Speed to 8 / 10 -> Uncheck Scroll direction: Natural
- Trackpad -> Check Tap to click
- Download Folder -> Display As Folder -> View Content As List
- Applications Folder to Dock
- Applications Folder -> Display as Folder -> View Content as Automatic
- Configure Time Machine to use Standard Backup Disk
- Dock Preferences -> Small -> Autohide Enabled
- System Prefs -> Printers -> Add -> Officejet 7200 (Turn printer on first)
- Battery Icon -> Show percentage
- Finder Preferences -> Show these items on the desktop -> Connected Servers
- Finder Preferences -> New Finder windows show: ~
- Finder Preferences -> Uncheck Open folders in tabs instead of new windows
- System Prefs -> Keyboard -> Shortcuts -> Spotlight -> Turn Do Not Disturb On/Off -> CTRL+CMD+P
- System Prefs -> Keyboard -> Shortcuts -> Disable Spotlight shortcuts
- System Prefs -> Sharing -> Computer Name -> RUBIK
- System Prefs -> Users & Groups -> Login Options -> Enable Show fast user switching menu as -> Account Name

## 02. Software

1. Visual Studio Code
   - Shell Command -> Install Code in the PATH
   - Turn Sync On

2. Karabiner-Elements
   - Configure Complex Modifications (Caps Lock -> Hyper Key)

3. iTerm 2
   - Preferences - General -> Closing -> Uncheck Confirm closing multiple sessions
   - Preferences - General -> Closing -> Uncheck Confirm "Quit iTerm2"
   - Preferences -> Keys -> Hotkey to ALT + <
   - Preferences -> Appearance -> Tab bar location: Top / Dark
   - Preferences -> Appearance -> -> Window -> Hide scrollbars
   - Preferences -> Appearance -> Uncheck Show per-pane title bar with split panes
   - Preferences -> Appearance -> Dimming -> Uncheck Dim inactive split panes

4. Chrome
   - Sign-in
   - Turn on sync
   - 1Pass

5. Discord
6. Slack
7. Franz
8. Telegram
9.  Kelir
10. Spotify
11. Backup & Sync (Google)
12. Dropbox
13. Moom
14. iStat Menus

15. Alfred 4
   - Enable shortcut CMD + Space
   - Default Results -> Disable Contacts
   - Default Results -> Enable Folders
   - Appearence -> Alfred macOS Dark
   - Appearence -> Options -> Show result subtext -> Never
   - Appearence -> Options -> Hide hat on Alfred Window
   - Appearence -> Options -> Hide result shortcuts
   - Appearence -> Options -> Hide menu bar icon
   - Features -> Default Results -> Search Scope -> Remove everything except /Applications

16. Cleanshot
17. Postman
18. Docker
19. HP Smart
20. Plex
21. VLC
22. Screenflow

## 03. Fonts

Install font files:
   - Hack Nerd Font
   - Sauce Code Pro Nerd Font
   - JetBrains Mono Nerd Font

### 03. DEV STUFF

1. Colored Vim:

   Create .vimrc file in ~: `touch ~/.vimrc`
   Edit .vimrc and add `syntax on`

2. Configure Git:

   `git config --global user.name "Your Name Here"
   `git config --global user.email "<your-email-address>"`
   `git config --global core.editor "code --wait"`
   `git config pull.rebase true`

If needed: `git config --global url."git@github.com:".insteadOf "https://github.com/"`

3. Configure .ssh folder

   get folder from google drive

   permissions:
   - 700 .ssh folder 
   - 600 private key
   - 644 remaining files

4. Install Homebrew 
   
   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

1. Glances: `brew install glances`
2. youtube-dl: ` brew install youtube-dl` 
3. hub: `brew install hub`
4. telnet: `brew install telnet`

5. Install Yarn

   `sudo npm install --global yarn`

6. Install NVM

   `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash`

7. Configure ZSH

- Install oh-my-zsh doing:

   `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- Install powerlevel 10k:

   `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

   Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in ~/.zshrc.

- Install plugins:

  - zsh-autosuggestions

      `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`


  - zsh-syntax-highlighting

      `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

   Note: *Add both plugins to .zshrc.*

1. Install Gogh

   Link to [Mayccoll/Gogh GitHub Repo](https://github.com/Mayccoll/Gogh)

   `bash -c "$(curl -sLo- https://git.io/vQgMr)"`

1. Install OpenJDK 8

   `brew tap AdoptOpenJDK/openjdk`

   `brew install --cask adoptopenjdk8`

   Check JDK Version with: `java -version`
   Check Java Location: `which java`

1. Install Leiningen (using Brew)

   `brew install leiningen`

1. Install Clojure

   `brew install clojure/tools/clojure`

