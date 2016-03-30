# ~/.bashrc
# executed by login and subshells

# aliases go in this file!

alias xcode='open -a xcode'
alias ll='ls -ltr'
alias la='ls -a'
alias e='emacs'
alias cd..='cd ..'
alias f=finger
alias h=history
alias ls='ls -Gp'
alias l='ls'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# git aliases
alias up='git fetch; git merge upstream/master;' 
# function new { git checkout -b $1; up; }
alias com='git commit -a'
alias acom='git commit -a --amend'
alias sw='git checkout'
alias st='git status'
alias br='git branch -v'
alias cont='git rebase --continue'
alias del='sw master; git branch -D'
alias gl='git log'

export GIT_EDITOR=emacs
