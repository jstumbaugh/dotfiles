function fish_right_prompt --description 'Right Prompt'
  # Show duration of the last command in seconds
  if test $CMD_DURATION
    if test $CMD_DURATION -gt 5
      set_color yellow
      set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')
      echo $duration
      echo " - "
    end
  end

  set_color $fish_color_cwd
  date '+%a %b %d %I:%M %p'
end
