#!/bin/bash

# This script attempts to process a list of files, but has a subtle error.
# The loop is designed to handle files ending in '.txt', but doesn't properly check
# if a file exists before processing.  This could lead to unexpected errors if a file
# is missing from the list.

files=("file1.txt" "file2.txt" "file3.txt")

for file in "${files[@]}"; do
  if [[ -f "$file" ]]; then
    echo "Processing: $file"
    # Process the file here... (e.g., cat $file)
  else
    echo "Error: File '$file' not found"
  fi
  # Add a small delay to simulate some work
  sleep 0.1
done