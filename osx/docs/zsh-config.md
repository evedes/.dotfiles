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
