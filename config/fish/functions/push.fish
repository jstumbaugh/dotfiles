function push --description="Push notifications to Pushover app"
  : ${TITLE:="$2"}
  : ${TITLE:="$USER"}
  curl -s -F "token=$PUSHER_TERMINAL_TOKEN" \
  -F "user=$PUSHER_USER_KEY" \
  -F "title=$TITLE" \
  -F "message=$1" https://api.pushover.net/1/messages.json > /dev/null
end
