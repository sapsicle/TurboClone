#!/bin/bash

# Version information
version='0.0.1'
art='Splash Screen Coming Soon...'

# Splash Screen
echo 'TurboClone v' $version
echo "$art"
sleep 1

# Define directory to copy to
# shellcheck disable=SC1091
source getPath.sh
path=$(getPath)

# Proof of Concept, returns getPath
echo "$path"