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
export PATH=~/Apps/gradle-1.7/bin:$PATH
export PATH=~/Apps/sbt/bin:$PATH
export PATH=~/Apps/clang-llvm-3.4/bin:$PATH
export PATH=~/Apps/ninja-tip:$PATH
export PATH=~/Apps/leiningen:$PATH
export PATH=~/Apps/scala-2.10.3/bin:$PATH
export PATH=~/Apps/apache-maven-3.1.1/bin:$PATH
export PATH=~/Apps/apache-ant-1.9.2/bin:$PATH
export PATH=~/Apps/silver-searcher-0.20.0pre:$PATH
export PATH=~/Apps/vlc-tip/bin:$PATH
export PATH=~/Apps/couchdb-1.5/bin:$PATH
export PATH=~/Apps/elasticsearch-0.90.10/bin:$PATH

export NODE_PATH=$NODE_PATH:/home/tux/Local/lib/node_modules

alias go="gnome-open"
alias goo="command go"
alias du="du -h"
alias au="aunpack -q"
alias ap="apack"
alias al="als"
alias l="ls -lah"
alias s="l"
alias c="cd"
alias ht="htop"
alias ni="ninja"

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
alias gc="git clone"
alias gcom="git commit -v"

alias gi=/home/tux/Apps/vim-01202014/bin/gvim
alias gii="gi -u ~/.vimrc_tabs"

stty -ixon -ixoff
