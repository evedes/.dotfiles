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

#KUBECTL AUTOCOMPLETION
source <(kubectl completion zsh)

