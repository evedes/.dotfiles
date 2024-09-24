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
  	ruby
  	rails
  	bundler
)

# RUN OH-MY-ZSH
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k/.p10k.zsh.
[[ ! -f ~/.dotfiles/p10k/.p10k.zsh ]] || source ~/.dotfiles/p10k/.p10k.zsh

# PNPM
export PNPM_HOME="/Users/edo/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# RUBY
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# PSQL
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# HISTORY SETUP
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

## ZOXIDE
eval "$(zoxide init zsh)"


## ZELLIJ
export PATH="$PATH:$HOME/.cargo/bin"

