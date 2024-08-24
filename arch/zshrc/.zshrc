# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# PATH CONFIGURATION

setopt extended_glob null_glob

path=(
  $path
  $HOME/.config/scripts
  /opt/nvim-linux64/bin
)

typeset -U path
path=($^path(N-/))
export PATH

# HISTORY

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS  # Don't save duplicate lines
setopt SHARE_HISTORY   # Share history between sessions

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

# VIM

set -o vi

export VISUAL=nvim
export EDITOR=nvim
export TERM="tmux-256color"

