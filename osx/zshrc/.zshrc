# NODE + NVM ON ZSH
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# PLUGINS FOR SUGGESTIONS AND AUTO COMPLETION
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

#ALIAS
source $HOME/.dotfiles/osx/alias/.alias

plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	git
	docker
)

#STARSHIP
eval "$(starship init zsh)"

export PATH="/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/bin:$PATH"
