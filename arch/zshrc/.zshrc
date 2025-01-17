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

# ZOXIDE
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/arch/p10k/.p10k.zsh.
[[ ! -f ~/.dotfiles/arch/p10k/.p10k.zsh ]] || source ~/.dotfiles/arch/p10k/.p10k.zsh

# HISTORY SETUP
HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_verify

bindkey -e

## FZF
source <(fzf --zsh)
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PNPM
export PNPM_HOME="/home/edo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
