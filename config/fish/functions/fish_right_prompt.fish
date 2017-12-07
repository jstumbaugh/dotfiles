function fish_right_prompt --description 'Right Prompt'
  # Show duration of the last command in seconds
  if test -n "$CMD_DURATION"
    if test $CMD_DURATION -gt 5
      set_color yellow
      set duration (__format_time $CMD_DURATION 5)
      echo $duration
      echo " - "
    end
  end

  set_color $fish_color_cwd
  date '+%a %b %d %I:%M %p'
end
