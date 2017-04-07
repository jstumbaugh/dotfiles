function psgk
  ps ax | grep $argv | grep -v grep | awk '{print $1}' | xargs kill -9
end
