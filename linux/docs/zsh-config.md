## Notes on how to config zsh / oh-my-zsh / powerlevel9k / nerdfonts
### Ubuntu 18.04

00. sudo apt-get update && sudo apt-get upgrade

01. install zsh

    sudo apt install zsh

    sudo apt-get install powerline fonts-powerline

02. install oh-my-zsh

    clone the repo

    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    create a new zsh configuration file:

    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

    change your default shell

    chsh -s /bin/zsh

03 install powerlevel9k

   git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

04 add this configuration to your .zshrc file

   ZSH_THEME="powerlevel9k/powerlevel9k"
   POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir newline vcs)
   POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status context root_indicator battery)
   POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
   POWERLEVEL9K_MODE="nerdfont-complete"

05 make sure nerd fonts are installed (hack and sauce code pro)

06 Install plugins

    zsh-autosuggestions

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    add the plugin to ~/.zshrc

    zsh-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    add the plugin to ~/.zshrc
