#!/bin/bash
TOKEN='BAhJIiUyZTUyMjc3NjdmZGM3YTZkYzFlMjYwZjM3ZjAxNmRkZQY6BkVG--a3bdc74d62b90e080bdbec3f5e0f69b7f5db5441'
INNING='1'
BATTER='24'
PITCHER='45'
OUTCOME='Out'
RUNS='0'
OUTS='1'
DEF_ERROR='0'
GAME_ID='1'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/pas"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "pa": {
      "inning": "'"${INNING}"'",
      "batter": "'"${BATTER}"'",
      "pitcher": "'"${PITCHER}"'",
      "outcome": "'"${OUTCOME}"'",
      "runs": "'"${RUNS}"'",
      "outs": "'"${OUTS}"'",
      "def_error": "'"${DEF_ERROR}"'",
      "game_id": "'"${GAME_ID}"'"
    }
  }'

echo
