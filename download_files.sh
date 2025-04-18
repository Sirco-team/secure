#!/bin/bash

# Check if urls.txt exists
if [ ! -f urls.txt ]; then
    echo "Error: urls.txt file not found!"
    exit 1
fi

# Create a directory for downloaded files
mkdir -p downloads

# Loop through each URL in urls.txt
while IFS= read -r url
do
    echo "Downloading $url..."
    wget -P downloads "$url"
done < urls.txt

echo "Download complete! Files are in the 'downloads' directory."
