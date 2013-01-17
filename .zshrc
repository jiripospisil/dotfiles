ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gentoo"
DISABLE_AUTO_UPDATE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

export TERM='xterm-256color'
export EDITOR='vim'

alias go=gnome-open
alias du='du -h'
alias ax="atool -x"

alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias glog='git log --all --graph --pretty="tformat:%C(yellow)%h%Cblue%d%Creset %s %C(red) %an, %ar%Creset"'
alias glogp="glog -p"
alias gd='git diff -M'
alias gdc='git diff --cached -M'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gs='git status'
alias gun='git ls-files --other --exclude-standard'
alias gap='git add -p'
alias gmf='git merge --ff-only'
alias gup='git smart-pull'

alias gi='gvim'

stty -ixon -ixoff
