function push --description="Push notifications to Pushover app"
  curl -s -F "token=$PUSHER_TERMINAL_TOKEN" \
  -F "user=$PUSHER_USER_KEY" \
  -F "title=$TITLE" \
  -F "message=$argv" https://api.pushover.net/1/messages.json > /dev/null
end
