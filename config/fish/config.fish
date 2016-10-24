# set editor
set -xg EDITOR vim

# set no greeting
set fish_greeting

# Abbreviations
abbr -a c clear

# Git
abbr -a ga git add
abbr -a gap git add --patch
abbr -a gc git commit -v
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gf git fetch
abbr -a gl git l
abbr -a gll git ll
abbr -a gpl git pull
abbr -a gp git push
abbr -a gpo git push origin
abbr -a gr git rebase
abbr -a grc git rebase --continue
abbr -a gs git status -s

# rake
abbr -a rdm rake db:migrate
abbr -a rdr rake db:rollback
abbr -a rdtp rake db:test:prepare

# rails
abbr -a rc rails console
abbr -a bers bundle exec rails server -b 0.0.0.0

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# source each plugin file
for file in ~/.config/fish/conf.d/*.fish
  source $file
end
