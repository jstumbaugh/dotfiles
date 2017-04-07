function psg
  ps ax | grep $argv | grep -v grep
end
