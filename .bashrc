# ~/.bashrc
# executed by login and subshells

# aliases go in this file!

# Take a screenshot of the device and put it on the Desktop
alias screenshot="adb exec-out screencap -p > ~/Desktop/screen-$(date -j "+%s").png"

# Send text to your device. Usage: $ atext https://www.youtube.com/user/rpandey1234
alias atext='adb shell input text'

# Send the BACK keypress to your device
alias aback='adb shell input keyevent KEYCODE_BACK'

# Given a username/password form, log in with the given user. Focus should be on the
# username edit text. Usage example: $ alogin john
alogin() {
  atext "$1" && adb shell input keyevent KEYCODE_TAB && atext MyTestPassword
}

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
alias glp='git log --pretty=format:"%C(yellow)%h%Creset - %C(green)%an%Creset, %ar : %s"'
alias glt='git log --graph --oneline --all --decorate'
alias gb='git branch -v'

export GIT_EDITOR=emacs
