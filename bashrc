# git commands
alias g='git'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gco='git checkout'
alias gc='git commit'
alias gp='git push'
alias gpo='git push origin'
alias gdm="git branch --merged | egrep -v '\*|next|master' | xargs -L 1 -n 1 git branch --delete"
alias gf='git fetch'
alias gpl='git pull'
alias gl='git log'

# bundler commands
alias b='bundle'
alias be='bundle exec'
alias bers='bundle exec rails server'

# senior design commands
alias rusd='rvm use ruby-2.2.3@senior_design'
alias legalally='cd Documents/SMU/Senior\ Year/Spring\ Semester\ 2016/Senior\ Design/legal-ally/'

export PATH="/usr/local/bin:/usr/local/sbin:/Users/jason_stumbaugh/.rvm/gems/ruby-2.2.3/bin:/Users/jason_stumbaugh/.rvm/gems/ruby-2.2.3@global/bin:/Users/jason_stumbaugh/.rvm/rubies/ruby-2.2.3/bin:opt/X11/bin:/Users/jason_stumbaugh/.rvm/bin:$PATH"
export PATH="/usr/local/Cellar/vim/7.4.1525/bin/:$PATH"
