ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gentoo"
DISABLE_AUTO_UPDATE="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

if [[ $COLORTERM == "gnome-terminal" && $TERM =~ xterm.* ]]; then
    export TERM=xterm-256color
fi

export EDITOR="vim"
export PATH=~/Local/bin:$PATH
export GOROOT=~/Apps/go-1.4.2
export PATH=$GOROOT/bin:$PATH
export PATH=~/Apps/gradle-2.0/bin:$PATH
export PATH=~/Apps/sbt/bin:$PATH
export PATH=~/Apps/clang-3.5.0/bin:$PATH
export PATH=~/Apps/ninja-1.5.1.git:$PATH
export PATH=~/Apps/lein-2.5.0:$PATH
export PATH=~/Apps/scala-2.11.4/bin:$PATH
export PATH=~/Apps/apache-maven-3.1.1/bin:$PATH
export PATH=~/Apps/apache-ant-1.9.2/bin:$PATH
export PATH=~/Apps/silver-searcher-0.20.0pre:$PATH
export PATH=~/Apps/vlc-2.1.4/bin:$PATH
export PATH=~/Apps/dmd2/linux/bin64:$PATH
export PATH=~/Apps/gpefttools-2.1/bin:$PATH
export PATH=~/Apps/cmake-3.0.2/bin:$PATH
export PATH=~/Apps/rust-nightly/bin:$PATH
export PATH=~/Apps/tmux-1.9a/bin:$PATH
export PATH=~/Apps/gcc-4.9/bin:$PATH
export PATH=~/Apps/vim-20150222/bin:$PATH
export PATH=~/Apps/ffmpeg-2.4.3:$PATH
export PATH=~/Apps/giflossy/bin:$PATH
export PATH=~/Apps/phantomjs-1.9.8-linux-x86_64/bin:$PATH
export PATH=~/Apps/node-v0.12.0-linux-x64/bin:$PATH

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
alias bc="bc -l"

alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias gl='git log --all --graph --pretty="tformat:%C(yellow)%h%Cblue%d%Creset %s %C(red) %an, %ar%Creset"'
alias glp="gl -p"
alias gd="git diff -M"
alias gdc="git diff --cached -M"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gs="git status -s"
alias gh="git show"
alias gun="git ls-files --other --exclude-standard"
alias gap="git add -p"
alias gmf="git merge --ff-only"
alias gmnf="git merge --no-ff"
alias gup="git smart-pull"
alias gcl="git clone"
alias gcls="git clone --depth 1"
alias gbd="git branch -d"
alias gbD="git branch -D"

alias vi="vim"
alias gi="gvim"
alias gii="gi -u ~/.vimrc_tabs"

stty -ixon -ixoff
