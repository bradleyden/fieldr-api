#!/bin/bash
TOKEN='BAhJIiVkMGRhY2U5NWVlNzhiNjY0NjUyZmU1ZWMzOTZkMThjOAY6BkVG--787aebdef22c0ba2636c08186b37ab41a2e7e362'
DATE='today'
HOME='cubs'
AWAY='cardinals'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/games"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "game": {
      "date": "'"${DATE}"'",
      "home": "'"${HOME}"'",
      "away": "'"${AWAY}"'"
    }
  }'

echo
