#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Path to the text file containing the list of source folders
LIST_FILE="$SCRIPT_DIR/configfile.txt"

# Fixed destination directory
DESTINATION_DIR="/home/notknown/.config"

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
while IFS=' ' read -r SOURCE_DIR; do
    # Construct absolute path for source
    SOURCE_DIR="$SCRIPT_DIR/$SOURCE_DIR"

    # Check if the source directory exists
    if [ -d "$SOURCE_DIR" ]; then
        # Define the destination path
        DEST_DIR="$DESTINATION_DIR/$(basename "$SOURCE_DIR")"

        # Copy the source directory to the fixed destination, replacing it if it exists
        cp -r "$SOURCE_DIR" "$DEST_DIR"
        echo "Copied and replaced $SOURCE_DIR with $DEST_DIR."
    else
        echo "Source directory $SOURCE_DIR does not exist."
    fi
done < "$LIST_FILE"
