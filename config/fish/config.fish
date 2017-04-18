# set no greeting
set fish_greeting

# Abbreviations
abbr -a c clear

# Git
abbr -a ga   git add
abbr -a gap  git add --patch
abbr -a gc   git commit --verbose
abbr -a gco  git checkout
abbr -a gd   git diff
abbr -a gf   git fetch
abbr -a gl   git l
abbr -a gll  git ll
abbr -a gpl  git pull
abbr -a gp   git push
abbr -a gpo  git push origin
abbr -a gr   git rebase
abbr -a grc  git rebase --continue
abbr -a grh  git reset HEAD~
abbr -a gs   git status --short
abbr -a gst  git stash
abbr -a gstd git stash drop
abbr -a gstp git stash pop

# Rake
abbr -a berdm  bundle exec rake db:migrate
abbr -a berdr  bundle exec rake db:rollback
abbr -a berdtp bundle exec rake db:test:prepare

# Rails
abbr -a b    bundle
abbr -a be   bundle exec
abbr -a berc bundle exec rails console
abbr -a bers bundle exec rails server

# Source each plugin file
for file in ~/.config/fish/conf.d/*.fish
  source $file
end

# Source the local varaibles file
source ~/.localrc-pre
