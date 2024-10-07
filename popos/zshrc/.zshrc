# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#OH-MY-ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"


#ALIAS
source $HOME/.dotfiles/popos/alias/.alias

#PLUGINS
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  docker
)

source $ZSH/oh-my-zsh.sh

# FNM
export PATH="/home/edo/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd)"

# Neovim
export PATH="$PATH:/opt/nvim-linux64/bin"

#Go
export PATH="$PATH:/usr/local/go/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/edo/.spicetify

# fnm
FNM_PATH="/home/edo/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/edo/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# fnm
FNM_PATH="/home/edo/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/edo/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
