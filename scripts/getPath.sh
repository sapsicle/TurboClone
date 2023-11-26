#!/bin/bash

get_path() {
    # initialize with empty path
    file_path=""
    # read input path for saving
    read -e -p "Please enter the path you'd like to save your files to (leave empty for default): " file_path

    # check for null input to default path to archive/
    if [ "$file_path" == "" ]; then
        echo "defaulting path"
        # check if dir exists yet
        if [ ! -e "archive" ]; then
            mkdir archive/
        fi
        # set path to default archive path
        file_path="archive"
    fi

    # check that input path both exists and is a directory (not a file)
    if [ -e "$file_path" ] && [ -d "$file_path" ]; then
        echo "Path exists and is dir"
    else
        echo "Path does not exist or is not dir"
    fi

    echo "$file_path"
}