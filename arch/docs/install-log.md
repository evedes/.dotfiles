# ARCH LINUX

## INSTALL ARCH

Boot arch from a pen drive.

Type `archinstall`, follow the steps and install arch linux.
Don't forget to configure the network manually.

Dotfiles were made having hyprland as default.

## CONFIGURE ARCH

Install sound
`sudo pacman -Sy pavucontrol`
Open pavucontrol and choose the correct sound output

Config GRUB to not wait:

Edit /etc/default/grub

```bash
GRUB_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT=0
GRUB_HIDDEN_TIMEOUT_QUIET=true
```
Save the file, quit, and update grub with
`sudo grub-mkconfig -o /boot/grub/grub.cfg`

