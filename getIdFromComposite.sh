#!/bin/bash

# Check if argument is supplied
if [ -z "$1" ]; then
  echo "No argument supplied. Please provide a JSON file name."
  exit 1
fi

./composedb composite:create models/"$1".graphql --output=composites/"$1".json

# Use jq to extract keys_unsorted[0]
cat ./composites/"$1".json | jq '.models | keys_unsorted[0]'