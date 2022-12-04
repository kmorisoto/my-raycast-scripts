#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ghq get
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Git repository" }
# @raycast.packageName Developer Utils

ghq get $1
