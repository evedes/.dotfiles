# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# OH-MY-ZSH PATH
export ZSH="$HOME/.oh-my-zsh"

# FNM
eval "$(fnm env --use-on-cd)"

# ZSH THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

# ALIAS
source $HOME/.dotfiles/osx/alias/.alias

plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	git
	docker
	kubectl
)

# RUN OH-MY-ZSH
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k/.p10k.zsh.
[[ ! -f ~/.dotfiles/p10k/.p10k.zsh ]] || source ~/.dotfiles/p10k/.p10k.zsh
