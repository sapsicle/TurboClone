#!/bin/bash

# Customer service
echo 'Welcome to TurboClone!'
sleep 0.5
echo 'The multi-drive copy tool'
sleep 1

# Call path script to get copy location
# shellcheck source=scripts/getPath.sh
source scripts/getPath.sh
path=$(get_path)

# proof of concept, returned value from getPath
echo "$path"