#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title lgtmeow-random-select
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🐱

INDEX=$((RANDOM % 5))
IMAGE_URL=$( curl -s https://lgtmeow.com/ | pup '.LgtmImageContent_wrapper__lD0JJ img[src] json{}' | jq -r ".[$INDEX].src")
echo "[![LGTMeow](https://lgtmeow.com$IMAGE_URL)](https://lgtmeow.com)" | pbcopy
