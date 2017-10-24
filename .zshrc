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

# System
alias vimrc="vim ~/.zshrc";
 
# Aliases
alias zshconf="nvim ~/.zshrc"
alias vimrc="nvim ~/.vimrc"
alias tmuxconf="nvim ~/.tmux.conf"

alias nis="npm install --save "
alias nisd="npm install --save-dev"
alias ngs="ng serve -hmr -e=hmr --proxy proxy-config.json"

# Git 
alias gpush="git push"
alias gadd="git add ./"
alias gpull="git pull"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

gcommit() { git commit -am $1; }
