#!/bin/bash

# This script is an improved version of the buggy script.
# It includes explicit checks to ensure that each file exists before processing it.
# This prevents silent failures and provides informative error messages.

files=("file1.txt" "file2.txt" "file3.txt")

for file in "${files[@]}"; do
  if [[ -f "$file" ]]; then
    echo "Processing: $file"
    # Process the file here... (e.g., cat $file)
  else
    echo "Error: File '$file' not found. Skipping." >&2
    #The >&2 redirects the error message to standard error
  fi
  # Add a small delay to simulate some work
  sleep 0.1
done