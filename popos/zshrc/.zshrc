# PLUGINS FOR SUGGESTIONS AND AUTO COMPLETION
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

#ALIAS
source $HOME/.dotfiles/popos/alias/.alias

#PLUGINS
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  docker
)

# STARSHIP
eval "$(starship init zsh)"

# FNM
export PATH="/home/edo/.local/share/fnm:$PATH"
eval "`fnm env`"
