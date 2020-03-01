1. ## ZSH CONFIG

-> install zsh if not on the system (osx has a zsh version)

-> install oh-my-zsh doing:

sh -c "\$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

-> install powerlevel9k:

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

add ZSH_THEME="powerlevel9k/powerlevel9k" to your .zshrc

Add the following to .zshrc:

```
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir newline vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status context root_indicator battery)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE="nerdfont-complete"
```

-> install nerd fonts:

download SauceCodePro Nerd Font and install it

-> go to Iterm2, create a profile and set the new font there

-> install plugins

zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

add the plugin to ~/.zshrc

zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/\

pluginszsh-syntax-highlighting

add the plugin to ~/.zshrc
