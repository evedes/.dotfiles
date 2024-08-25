# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#OH-MY-ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"


#SOURCES
source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/arch/alias/.alias


#PLUGINS
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  docker
)

# FNM
FNM_PATH="/home/edo/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/edo/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# NEOVIM
export PATH="$PATH:/opt/nvim-linux64/bin"
