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

ttp() {
  take /tmp/tp-$(date +%Y%m%d%H%M)
}
