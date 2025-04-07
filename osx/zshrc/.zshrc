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

# SECRETS
source $HOME/.ssh/load_secrets.sh

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
HISTSIZE=5000
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_verify

bindkey -e

## ZOXIDE
eval "$(zoxide init zsh)"

## ZELLIJ
export PATH="$PATH:$HOME/.cargo/bin"

## FZF
source <(fzf --zsh)

## GO
export GOPATH="$HOME/.local/share/go"
export GOROOT=$(brew --prefix go)/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

## VIRT MANAGER
export XDG_DATA_DIRS=/opt/homebrew/share:$XDG_DATA_DIRS

