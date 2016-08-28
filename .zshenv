export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
export MARKPATH=$HOME/.marks.d

jump() { 
  cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}

j() {
  jump $@
}

mark() { 
  mkdir -p $MARKPATH
  ln -s $(pwd) $MARKPATH/$1
}

unmark() { 
  rm -i $MARKPATH/$1 
}

marks() {
  ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

tp() {
  echo /tmp/tp-$(date +%Y%m%d%H%M%S)
}

ttp() {
  take $(tp)
}


man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}
