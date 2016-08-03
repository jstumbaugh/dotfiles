function g --wraps=git --description="Shorter git"
  if test (count $argv) -gt 0
    git $argv
  else
    git status -s
  end
end
