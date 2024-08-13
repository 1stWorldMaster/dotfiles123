#!/bin/bash

# Directory where you want to save the files
download_dir="downloaded_files"



# Read each line from ddh.txt and use wget to download the file into the 'ggh' folder
#while IFS= read -r url; do
 #   wget -P "$download_dir" "$url"
#done < extensionlist.txt

#echo "Download complete. Files are saved in the 'ggh' folder."



# Handles the vs code extension
# Check if the folder exists
if [ ! -d "$download_dir" ]; then
  echo "Folder '$download_dir' does not exist."
  exit 1
fi

# Iterate over each .vsix file in the folder and install it
for extension in "$download_dir"/*.vsix; do
  if [ -f "$extension" ]; then
    echo "Installing extension: $extension"
    code --install-extension "$extension"
  else
    echo "No .vsix files found in the folder."
  fi
done

echo "All extensions installed."

