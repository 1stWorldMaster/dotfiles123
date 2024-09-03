#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="/home/notknown/dotfiles123/Dotfiles"

# Path to the text file containing the list of source files and directories
LIST_FILE="/home/notknown/dotfiles123/Dotfiles/Lists/homeconfigfile.txt"

# Fixed destination directory
DESTINATION_DIR="/home/notknown/"

# Check if the list file exists
if [ ! -f "$LIST_FILE" ]; then
    echo "List file not found!"
    exit 1
fi

# Ensure the destination directory exists
if [ ! -d "$DESTINATION_DIR" ]; then
    echo "Destination directory $DESTINATION_DIR does not exist!"
    exit 1
fi

# Read the list file line by line
while IFS=' ' read -r ITEM; do
    # Construct absolute path for source, assuming paths in LIST_FILE are relative
    SOURCE_PATH="/home/notknown/dotfiles123/Dotfiles/home/$ITEM"

    # Check if the source path is a file or a directory
    if [ -d "$SOURCE_PATH" ]; then
        # Copy the directory
        cp -r "$SOURCE_PATH" "$DESTINATION_DIR"
        echo "Copied and replaced directory $SOURCE_PATH to $DESTINATION_DIR."
    elif [ -f "$SOURCE_PATH" ]; then
        # Copy the file
        cp "$SOURCE_PATH" "$DESTINATION_DIR"
        echo "Copied and replaced file $SOURCE_PATH to $DESTINATION_DIR."
    else
        echo "Source path $SOURCE_PATH does not exist."
    fi
done < "$LIST_FILE"
