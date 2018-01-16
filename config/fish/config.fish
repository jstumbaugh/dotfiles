# set no greeting
set fish_greeting

# Git
abbr -a ga   git add
abbr -a gap  git add --patch
abbr -a gc   git commit --verbose
abbr -a gca  git commit --verbose --amend
abbr -a gco  git checkout
abbr -a gd   git diff
abbr -a gf   git fetch
abbr -a gl   git l
abbr -a gll  git ll
abbr -a gp   git push
abbr -a gpl  git pull
abbr -a gpo  git push origin
abbr -a gr   git rebase
abbr -a grc  git rebase --continue
abbr -a grn  git rebase next
abbr -a grs  git reset
abbr -a grsh git reset HEAD~
abbr -a gs   git status --short
abbr -a gst  git stash
abbr -a gstd git stash drop
abbr -a gstp git stash pop
abbr -a gsts git stash show

# Rake
abbr -a berdm  bundle exec rake db:migrate
abbr -a berdr  bundle exec rake db:rollback
abbr -a berdtp bundle exec rake db:test:prepare

# Rails
abbr -a b    bundle
abbr -a be   bundle exec
abbr -a berc bundle exec rails console
abbr -a bers bundle exec rails server -b 0.0.0.0

# Tmux
abbr -a t   tmux
abbr -a td  tmux detach
abbr -a tls tmux ls

# Source each plugin file
for file in ~/.config/fish/conf.d/*.fish
  source $file
end

# Source the local varaibles file
source ~/.localrc-pre

# ORM specific abbreviations
source ~/.orm-abbrs.fish

# rbenv support
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
status --is-interactive; and source (rbenv init -|psub)
# rbenv rehash >/dev/null ^&1
set --export RBENV_VERSION 2.3.5

# ToDo
abbr -a todo e ~/vimwiki/work/todo.md

abbr -a fssh "eval (ssh-agent -c); and ssh-add"

abbr -a dbsize "psql postgres -c 'SELECT datname AS db_name, pg_size_pretty(pg_database_size(datname)) db_size FROM pg_database ORDER BY pg_database_size(datname) DESC;'"
