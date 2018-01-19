# set no greeting
set fish_greeting

source ~/.config/fish/abbreviations.fish

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
