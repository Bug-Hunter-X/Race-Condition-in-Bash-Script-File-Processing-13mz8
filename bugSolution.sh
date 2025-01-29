#!/bin/bash

# This script demonstrates a solution to the race condition problem

file_to_process="my_file.txt"

# Create the file if it does not exist
touch "$file_to_process"

# Use flock to acquire an exclusive lock on the file
exec 9>&1
flock -n -x 9 "$file_to_process" || exit 1

# Process the file
echo "Processing file: $file_to_process"
# ...more processing here...

# Release the lock on the file
exec 9>&-
