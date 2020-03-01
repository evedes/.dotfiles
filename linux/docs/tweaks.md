## UBUNTU TWEAKS

## tweak keyboard repeat and delay

gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
gsettings set org.gnome.desktop.peripherals.keyboard delay 250

## increase the amount of inotify watchers for webpack

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

## kill a service running on port x

sudo kill \$(lsof -t -i:8000)
