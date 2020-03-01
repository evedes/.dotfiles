# MACBOOK PRO - BACH

### INSTALL LOG

### 01. OSX (SETUP)

1. Installed 10.13.6
1. Update with AppStore (Command Line Tools)
1. Disable Volume(WD_Smartware) to be mounted at startup (you can do it for any volume you don't want to mount at startup):
   - Open Terminal
   - run: diskutil info /Volumes/VolumeName
   - Copy Volume UUID to clipboard
   - Navigate to /etc
   - sudo vifs
   - add the following line with correct UUID: UUID=B62F560A-901B-3920-8013-0E85AF7D8A2B none hfs rw,noauto
   - save and exit from the file
   - sudo automount -vc (to reset the auto mounter)
   - DONE
1. System Prefs -> General -> Use dark menu bar and dock
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
1. Configure Time Machine to use Standard Backup Disk
1. Dock Preferences -> Small -> Autohide Enabled
1. Keyboard Shortcuts
   - Turn Do Not Disturb On/Off -> CTRL+CMD+P
1. System Prefs -> Printers -> Add -> Officejet 7200 (Turn printer on first)
1. Battery Icon -> Show percentage
1. Finder Preferences -> Show these items on the desktop -> Connected Servers
1. Finder Preferences -> New Finder windows show: ~
1. Finder Preferences -> Uncheck Open folders in tabs instead of new windows
1. System Prefs -> Keyboard -> Shortcuts -> Disable Spotlight shortcuts
1. System Prefs -> Keyboard -> Shortcuts -> Mission Control -> Mission Control CTRL + CMD + Up Arrow
1. System Prefs -> Keyboard -> Shortcuts -> Mission Control -> Move Left a Space CTRL + CMD + Left Arrow (Same for right Arrow)
1. System Prefs -> Keyboard -> Shortcuts -> Mission Control -> Application Windows CTRL + CMD + Down Arrow
1. System Prefs -> Network -> Rename Ethernet Connection to ETH
1. System Prefs -> Sharing -> Computer Name -> BACH
1. System Prefs -> Users & Groups -> Login Options -> Enable Show fast user switching menu as -> Account Name
1. Calendar -> Preferences -> General -> Day starts at: Midnight -> Day ends at: Midnight -> Start week on: Monday
1. Calendar -> Preferences -> General -> Disable Show Siri Found in Apps calendar
1. Dock -> Remove all Icons from Dock, leave finder, Applications and Downloads Folder and the Trash

---

### 02. SOFTWARE

1. Visual Studio Code (Downloaded)

   - Shell Command -> Install Code in the PATH
   - Settings -> Breadcrumbs -> File path: disabled
   - Settings -> Terminal -> Font-family -> SauceCode Pro Nerd Font
   - Extensions:
     - Markdown Preview Github Styling
     - Material Theme
     - Cyberpunk Theme
     - Material Icon Theme
     - Code Runner
     - Live Share
     - Prettier
     - ESLint
     - Bracket Pair Colorizer
     - Quokka (optional, to play once in a while)

1. Karabiner-Elements (Downloaded)
   - Configured Complex Modifications
     1. Change caps_lock to CMD+CTRL+ALT+SHIFT as Hyper Key
1. iTerm 2 (Downloaded)
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
   - Preferences -> Fill Login on current web page -> CTRL + CMD + \
1. Spotify
   - Settings -> Startup and Windows Behaviour -> Open Spotify automatically -> No
1. Backup & Sync (Google)
1. Moom
   - Trigger keyboard control with hot key: Caps-lock (Hyper) + D (Moom Mod Key)
   - Move app to another monitor: Caps-lock (Hyper) + S
   - Mod + Y (1/6 of the screen - left)
   - Mod + H (1/3 of the screen - left)
   - Mod + J (1/2 of the screen - left)
   - Mod + K (3/4 of the screen - left)
   - Mod + L (3/4 of the screen - right)
   - Mod + ç (1/2 of the screen - right)
   - Mod + ~ (1/3 of the screen - right)
   - Mod + [ (1/6 of the screen -right)
   - Mod + RET (1/3 of the screen - center)
   - Disable Show cheat sheet
   - Disable logo
   - Auto-dismiss keyboard control after:
     - Move & Zoom
     - Move, Grow, Shrink
     - Other actions
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
1. Lightshot Screenshot
   - Login with Google
1. Postman
1. Docker
1. HP Easy Scan
1. Wunderlist
1. Plex
1. VLC
1. Screenflow

---

### 03. DEV STUFF

0. **global and scoped git username/email config**

1. **Node.js**

   -> Download and Install LTS Version

1. **n**

   -> npm install -g n

   -> To avoid requiring sudo:

   # make cache folder (if missing) and take ownership

   sudo mkdir -p /usr/local/n

   sudo chown -R $(whoami) /usr/local/n
        
        # take ownership of node install destination folders
        
        sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/ include /usr/local/share

   -> n lts (to install lts version)
   -> n latest (to install latest version)

1. **MongoDB**

   -> install the tgz file on \$HOME/mongodb

   -> export PATH=<mongodb-install-directory>/bin:\$PATH

   -> sudo mkdir -p /data/db

   -> sudo mkdir -p /data

   -> sudo chmod 777 /data/db

1. **ZSH**

   -> install zsh if not on the system (osx has a zsh version)

   -> install oh-my-zsh doing:

   sh -c "\$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

   -> install powerlevel9k:

   git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

   add ZSH_THEME="powerlevel9k/powerlevel9k" to your .zshrc

   Add the following to .zshrc:

   POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir newline vcs)

   POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status context root_indicator battery)

   POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

   POWERLEVEL9K_MODE="nerdfont-complete"

   -> install nerd fonts:

   download SauceCodePro Nerd Font and install it

   -> go to Iterm2, create a profile and set the new font there

   -> install plugins:

   git clone zsh-autosuggestions and zsh-syntax-highlighting into
   ~/.oh-my-zsh/custom/plugins/

   add them to the .zshrc plugins list

   add wd to the .zshrc plugins list

   add docker to the .zshrc plugins list

1. **PIP**
   -> maybe you'll need to disable IPV6 conf (check scripts folder - osx_tweaks.sh)
   -> sudo easy_install pip

1. **Glances**

   -> brew install glances

1. **youtube-dl**

   -> brew install youtube-dl

1. **tmux**

   -> brew install tmux

   -> git clone https://github.com/samoshkin/tmux-config.git

   -> ./tmux-config/install.sh

1. **hub**

   -> brew install hub

1. **/etc/hosts**

   -> add 192.168.1.200 mozart

§. **telnet**

    -> brew install telnet
