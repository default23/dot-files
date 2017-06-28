export ZSH=/Users/easy/.oh-my-zsh
export DEFAULT_USER=easy
export EDITOR=nvim

ZSH_THEME="agnoster"

plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=2'

# Bindings
bindkey '^ ' autosuggest-accept

# Aliases
alias zshconf="nvim ~/.zshrc"
alias vimrc="nvim ~/.vimrc"
alias tmuxconf="nvim ~/.tmux.conf"

