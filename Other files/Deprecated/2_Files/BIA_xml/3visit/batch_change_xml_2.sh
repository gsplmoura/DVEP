#!/bin/zsh

# Navigate to the directory where the XML files are located
cd /Users/gustavosplmoura/Library/Mobile Documents/com~apple~CloudDocs/Medicina/Biblioteca/Research/Data Science/Data Science/DVEP/BIA_xml/Test

# Loop through all XML files in the current directory
for file in *.xml; do
  # Extract the file name without the .xml extension
  full_filename=$(basename "$file" .xml)

  # Get the first 2 characters of the file name
  short_filename=${full_filename:0:2}

  # Update the <ID> node with the first 2 characters of the file name using xmlstarlet
  xmlstarlet ed -L -u "//ID" -v "$short_filename" "$file"

  echo "Updated <ID> for file: $file with value: $short_filename"
done