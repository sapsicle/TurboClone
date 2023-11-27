#!/bin/bash

# Version information
version='0.0.1'
art='Splash Screen Coming Soon...'

# Script Splash Screen
echo 'TurboClone' $version
echo $art
sleep 1 

# Define Directory to copy to
source scripts/getPath.sh
path=$(getPath)

# Proof of Concept, returns getPath
echo "$path"