ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gentoo"
DISABLE_AUTO_UPDATE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

export TERM="xterm-256color"
export EDITOR="vim"
export PATH=~/Local/bin:$PATH
export GOROOT=~/Apps/go
export PATH=$GOROOT/bin:$PATH

alias go="gnome-open"
alias goo="command go"
alias du="du -h"
alias au="aunpack"
alias ap="apack"
alias al="als"
alias l="ls -lah"
alias s="l"
alias c="cd"
alias ht="htop"

alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias glog='git log --all --graph --pretty="tformat:%C(yellow)%h%Cblue%d%Creset %s %C(red) %an, %ar%Creset"'
alias glogp="glog -p"
alias gd="git diff -M"
alias gdc="git diff --cached -M"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gs="git status"
alias gun="git ls-files --other --exclude-standard"
alias gap="git add -p"
alias gmf="git merge --ff-only"
alias gup="git smart-pull"

alias gi=/home/tux/Apps/vim74/bin/gvim

stty -ixon -ixoff
