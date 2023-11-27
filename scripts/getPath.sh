#!/bin/bash

getPath() {
    # Initialize empy path for directory
    dirPath=''

    # User input for directory
    # echo 'Enter directory to be copied to (Default: archive/): '
    read -r -p 'Enter directory to be copied to (Default: archive/): ' dirPath

    # If dirPath is empty, set directory to archive/
    if [[ -z "$dirPath" ]]; then 
        echo 'Using default directory (archive/)'
        # If archive/ doesn't exist, create it
        if [[ ! -e archive/ ]]; then
            mkdir archive/
        fi
        # Set path to default
        dirPath='archive/'
    fi

    # Check if directory exists
    if [ -e "$dirPath" ] && [ -d "$dirPath" ]; then
        echo 'Copying to ' "$dirPath"
    # If it doesn't, make new one or use default
    else
        echo -n 'Directory does not exist! Create new directory? (y/n) '
        read -r -n 1 check
        # Makes new directory
        if [ "$check" == 'y' ]; then
            mkdir "$dirPath"
        # Uses default directory
        else 
            echo 'Using default directory (archive/)'
            # If archive/ doesn't exist, create it
            if [[ ! -e archive ]]; then
                mkdir archive/
            fi
            # Set path to default
            dirPath='archive/'
        fi
    fi

    # Return Directory
    echo "$dirPath"
}