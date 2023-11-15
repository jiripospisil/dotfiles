function gun --wraps='git ls-files --other --exclude-standard' --description 'alias gun git ls-files --other --exclude-standard'
  git ls-files --other --exclude-standard $argv
        
end
