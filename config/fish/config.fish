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

# ASDF
source ~/.asdf/asdf.fish
