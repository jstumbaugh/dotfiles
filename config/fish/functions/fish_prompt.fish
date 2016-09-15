function fish_prompt
  if not set -q __fish_prompt_char
    set -g __fish_prompt_char »
  end

  # Setup colors
  set -l normal (set_color normal)
  set -l cyan (set_color cyan)
  set -l yellow (set_color yellow)
  set -l bpurple (set_color -o purple)
  set -l bred (set_color -o red)
  set -l bcyan (set_color -o cyan)
  set -l bwhite (set_color -o white)
  set -l bgreen (set_color -o green)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_show_informative_status true
  set -g __fish_git_prompt_showcolorhints true

  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_char_upstream_equal ''

  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_color_dirtystate red
  set -g __fish_git_prompt_char_dirtystate 'U:'

  set -g __fish_git_prompt_showstagedstate true
  set -g __fish_git_prompt_color_stagedstate red
  set -g __fish_git_prompt_char_stagedstate 'S:'

  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_color_stashstate yellow
  set -g __fish_git_prompt_char_stashstate '$:'

  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_color_untrackedfiles red
  set -g __fish_git_prompt_char_untrackedfiles '?:'

  set -g __fish_git_prompt_showupstream verbose
  set -g __fish_git_prompt_color_upstream_ahead bgreen
  set -g __fish_git_prompt_char_upstream_ahead '↑'
  set -g __fish_git_prompt_color_upstream_behind bgreen
  set -g __fish_git_prompt_char_upstream_behind '↓'

  # Top
  echo -n $cyan$USER$normal: $yellow(prompt_pwd | sed -e "s|^$HOME|~|")$normal
  __fish_git_prompt

  echo

  # Bottom
  echo -n $bwhite$__fish_prompt_char $normal
end
