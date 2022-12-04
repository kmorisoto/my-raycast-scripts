#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title lgtmeow-random-select
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🐱

INDEX=$((RANDOM % 5))
IMAGE_URL=$(curl -s https://lgtmeow.com/ | pup '#__NEXT_DATA__ text{}' | jq -r ".props.pageProps.lgtmImages[$INDEX].imageUrl")
echo "[![LGTMeow]($IMAGE_URL)](https://lgtmeow.com)" | pbcopy
