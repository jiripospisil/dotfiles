function gdc --wraps='git diff --cached -M' --description 'alias gdc git diff --cached -M'
  git diff --cached -M $argv
        
end
