#!/bin/bash

# usage
# sh mount.sh $drive
# where $drive = /dev/sdXN

# check number of params
if [ $# != 1 ]; then
    echo "wrong params! Usage: sh mount.sh drive_path"
fi

# check param for valid dir path
if [ ! -e "$1" ]; then
    echo "invalid path! Usage: sh mount.sh drive_path"
fi

# not ../drive as it creates from working dir, root of project not location of script
mountPath="drive/"

# Check if directory exists
if [ ! -e "$mountPath" ]; then
    # create default mount path if not
    echo "making mount path"
    mkdir "$mountPath"
fi

# mount drive
sudo mount "$1" "$mountPath"