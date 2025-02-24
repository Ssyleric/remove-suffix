#!/bin/bash

# Define the target directory
TARGET_DIR="/volume2/downloadstation/incoming/medias"

# Loop through all directories in the target directory
for dir in "$TARGET_DIR"/*/; do
    # Check if the directory name ends with .1/
    if [[ "$dir" == *.1/ ]]; then
        # Remove the .1/ suffix
        new_dir="${dir%.1/}"
        
        # Rename the directory, using the -f option to force overwrite
        mv -f "$dir" "$new_dir"
        
        # Check if the rename was successful
        if [ $? -eq 0 ]; then
            echo "Renamed '$dir' to '$new_dir'."
        else
            echo "Failed to rename '$dir'."
        fi
    fi
done

