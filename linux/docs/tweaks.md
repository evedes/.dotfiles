## UBUNTU TWEAKS

## tweak keyboard repeat and delay

gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30

gsettings set org.gnome.desktop.peripherals.keyboard delay 250

## change the login screen

follow the instructions here: 
https://github.com/thiggy01/ubuntu-20.04-change-gdm-background

you might need to edit the file ubuntu-20.04-change-gdm-background

replace Yaru by Pop

add this background css stuff on the below id

#lockDialogGroup {
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
