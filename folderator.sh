#!/bin/bash

read -p "Number of folders: " num_folders
read -p "Directory name: " subdirectory

if [ ! -d "$subdirectory" ]; then
    mkdir -p "$subdirectory"
fi

# Calculate the number of digits needed for leading zeros
num_digits=$((${#num_folders}))

for ((i = 0; i < num_folders; i++)); do
    # Use printf to format the folder name with leading zeros
    folder_name="${subdirectory}/M$(printf "%0${num_digits}d" $i)"
    mkdir -p "$folder_name"
done

echo "$num_folders Folders have been created in '$subdirectory'."
