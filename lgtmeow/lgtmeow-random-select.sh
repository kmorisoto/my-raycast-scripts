#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title lgtmeow-random-select
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🐱

LGTM=$(curl -s https://lgtmeow.com/ | pup '#__NEXT_DATA__ text{}' | jq -r '.props.pageProps.lgtmImages[0].imageUrl')
echo "[![LGTMeow]($LGTM)](https://lgtmeow.com)" | pbcopy
