#!/bin/bash

# Check if argument is supplied
if [ -z "$1" ]; then
  echo "No argument supplied. Please provide a JSON file name."
  exit 1
fi

# Use jq to extract keys_unsorted[0]
cat "$1".json | jq '.models | keys_unsorted[0]'