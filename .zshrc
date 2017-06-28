export ZSH=/Users/easy/.oh-my-zsh
export DEFAULT_USER=easy

ZSH_THEME="agnoster"

plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=2'

# Bindings
bindkey '^ ' autosuggest-accept

# Aliases
alias zshconf="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf"

