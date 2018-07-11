export ZSH=/Users/easy/.oh-my-zsh
export DEFAULT_USER=easy
export EDITOR=nvim

ZSH_THEME="agnoster"

plugins=(git)
plugins=(zsh-autosuggestions)

autoload -Uz compinit && compinit -i

# Docker completition
fpath=(~/.zsh/completion $fpath)

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=2'

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "[B" beginning-of-line
bindkey "[A" end-of-line
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# Bindings
bindkey '^ ' autosuggest-accept

# Aliases
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.vimrc"
alias tmuxconf="nvim ~/.tmux.conf"

# Git 
alias gpush="git push"
alias gadd="git add ./"
alias gpull="git pull"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gb="git branch"

gcommit() { git commit -am $1; }
gc() { git checkout $1  }
gcb() { git checkout -b $1  }
gbd() { git branch -d $1  }

dropPritunl() {
    sudo sh ~/dropPritunl.sh
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
