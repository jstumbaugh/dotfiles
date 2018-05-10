function mergemaster
  echo "Stashing changes..."
  git stash
  echo ""
  echo "Updating next..."
  git checkout next
  git pull
  echo ""
  echo "Updating master..."
  git checkout master
  git pull
  echo ""
  echo "Merging next into master..."
  git merge next
  echo ""
  echo "Push master and deploy!"
end
