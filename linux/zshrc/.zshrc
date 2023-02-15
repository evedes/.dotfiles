
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

source $HOME/.dotfiles/osx/alias/.alias

plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	git
	docker
)

eval "$(starship init zsh)"
