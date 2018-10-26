# set no greeting
set fish_greeting

# Source my abbreviations
source ~/.config/fish/abbreviations.fish

# Source each plugin file
for file in ~/.config/fish/conf.d/*.fish
  source $file
end

# Source the local varaibles file
source ~/.localrc-pre

# ORM specific abbreviations
source ~/.orm-abbrs.fish

# Use ASDF as a version manager
source ~/.asdf/asdf.fish

# Auto-start the SSH Agent on starting a shell
source ~/.config/fish/autostart_ssh_agent.fish
