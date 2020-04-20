## UBUNTU TWEAKS

## tweak keyboard repeat and delay

gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
gsettings set org.gnome.desktop.peripherals.keyboard delay 250

## increase the amount of inotify watchers for webpack

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

## change the login screen

copy background image to /usr/share/backgrounds
go to /etc/gdm3.css
edit this group

#lockDialogGroup {
background: #000000 url(file:///usr/share/backgrounds/N06.png);
background-repeat: no-repeat;
background-size: cover;
background-position: center;}
