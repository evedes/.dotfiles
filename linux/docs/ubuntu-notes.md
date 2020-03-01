## UBUNTU CONFIG NOTES
## tweak keyboard repeat and delay
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
gsettings set org.gnome.desktop.peripherals.keyboard delay 250

## increase the amount of inotify watchers for webpack
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


## kill a service running on port x
sudo kill $(lsof -t -i:8000)

## emacs spaceline fonts okay
M-x all-the-icons-install-fonts



## REGOLITH NOTES

| Description                      | Shortcuts              |
| ---------------                  | -------------          |
| Launch Terminal                  | Super + Enter          |
| Launch Browser                   | Super + Shift + Enter  |
| Launch Application               | Super + Space          |
| Choose Window                    | Super + Ctrl + Space   |
|                                  |                        |
| Go to Workspace 1                | Super + 1              |
| Go to Workspace n                | Super + n              |
| Next Workspace                   | Super + Tab            |
| Last Workspace                   | Super + Shift + Tab    |
|                                  |                        |
| Toggle Layout Mode               | Super + Backspace      |
|                                  |                        |
| Resize Window Mode               | Super + r              |
| Exit Resize Window Mode          | Escape                 |
| Focused Window Fullscreen Toggle | Super + f              |
| Floating Window Mode Toggle      | Super + Shift + f      |
| Kill Active Windows              | Super + Shift + q      |
|                                  |                        |
| Move Window to WS 1              | Super + Shift + 1      |
| Move Window to WS n              | Super + Shift + n      |
|                                  |                        |
| Change Window Focus              | Super + Arrows         |
| Move Window                      | Super + Shift + Arrows |
|                                  |                        |
| Resize Window Gaps               | Super + [+] [-]        |
|                                  |                        |
| Control Center                   | Super + c              |
|                                  |                        |
| Lock Screen                      | Super + Escape         |
| Sleep                            | Super + Shift + s      |
| Logout                           | Super + Shift + e      |
|                                  |                        |
| Toggle Info Window               | Super + Shift + ?      |
|                                  |                        |
