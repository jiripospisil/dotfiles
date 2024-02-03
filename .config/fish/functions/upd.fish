function upd --wraps='sudo pacman -Syu' --description 'alias upd sudo pacman -Syu'
  sudo pacman -Syu $argv
        
end
