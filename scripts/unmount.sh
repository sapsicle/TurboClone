#!/bin/bash

# usage
# sh unmount.sh $drive
# where $drive = sdXN

# check number of params
if [[ $# != 1 ]]; then
    echo "Wrong number of params! Usage: sh unmount.sh drive_path"
    exit 1
fi

# turn drive name into actual drive path
drivePath="/dev/$1"

# listing known drive name styles as a pattern
alphanumPrefixes="sd|hd|vd"
numPrefixes="lp|fd|parport|ZIP"
patterns=("/dev/($alphanumPrefixes)[a-z]*[0-9]*" "/dev/($numPrefixes)[0-9]*" "/dev/nvme[0-9]*n[0-9]*")


# match input drive dir with list of known naming style patterns
devMatch=false

for pattern in "${patterns[@]}"; do
    if [[ "$drivePath" =~ $pattern ]]; then
        devMatch=true
        break
    fi
done

if [[ "$devMatch" = false ]]; then
    exit 1
fi


# unmount drive
sudo umount "$drivePath"
# change folder perms back to full
sudo chmod 777 "drive/"