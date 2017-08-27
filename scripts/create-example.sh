#!/bin/bash
TOKEN='BAhJIiVmNTNhMjA5MWRjNzcxOTJlODNlYTZiOGM5ZDZmMjQ1YwY6BkVG--724da9519badd5a13a213a7a77a8d8dad67a4436'
TEXT='testing'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
