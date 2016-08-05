function gdm --description="Delets merged branches"
  git branch --merged | egrep -v '\*|next|master' | xargs -L 1 -n 1 git branch --delete
end
