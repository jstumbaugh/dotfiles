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
abbr -a grsp git reset --patch
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
abbr -a b     bundle
abbr -a be    bundle exec
abbr -a berc  bundle exec rails console
abbr -a bers  bundle exec rails server -b 0.0.0.0
abbr -a bersa bundle exec rails server -b 0.0.0.0 -p 3001

abbr -a cutlog "rm log/development.log; and touch log/development.log"

# Tmux
abbr -a t   tmux
abbr -a td  tmux detach
abbr -a tls tmux ls

# VimWiki
abbr -a ww e ~/vimwiki/index.md
abbr -a todo e ~/vimwiki/work/todo.md

# Fuck SSH
abbr -a fssh "eval (ssh-agent -c); and ssh-add"

# Postgres Database Sizes
abbr -a dbsize "psql postgres -c 'SELECT datname AS db_name, pg_size_pretty(pg_database_size(datname)) db_size FROM pg_database ORDER BY pg_database_size(datname) DESC;'"
abbr -a active "psql postgres -c 'SELECT pid, datname AS database, now() - query_start AS time_running, query FROM pg_stat_activity WHERE datname IS NOT NULL AND query NOT LIKE \'SELECT pid, datname%\';'"

abbr -a sfu slack file upload
