# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/edo/.zshrc'

autoload -Uz compinit
compinit

# alias
source $HOME/.dotfiles/arch/alias/.alias

# neofetch
neofetch

# plugins
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	docker
	colored-man-pages
)

# starship
eval "$(starship init zsh)"
