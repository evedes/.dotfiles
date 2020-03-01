# Finder: do not show hidden files by default - Toggle it using Shift + CMD + .
# defaults write com.apple.finder AppleShowAllFiles -bool false

# Automatically hide and show the Dock
# defaults write com.apple.dock autohide -bool true

# Only show the Dock after 5 sec hover
# defaults write com.apple.dock autohide-delay -float 5

# Disable IPV6 - Ethernet
networksetup -setv6off ETH
# networksetup -setv6automatic ETH


# Disable IPV6 - Wi-Fi
networksetup -setv6off Wi-Fi
# networksetup -setv6automatic Wi-Fi