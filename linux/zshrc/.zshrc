# NODE
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ZSH SUGGESTIONS AND SYNTAX HIGHLIGHTING
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

#ALIAS
source $HOME/.dotfiles/osx/alias/.alias

#PLUGINS
plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	git
	docker
)

# STARSHIP
eval "$(starship init zsh)"
