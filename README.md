# Shell Script File Processing Bug

This repository demonstrates a common error in shell scripting:  silent failure when processing a list of files.  The script attempts to process files but doesn't handle the case where a file might be missing.  This leads to unexpected behavior and potentially difficult debugging.

The `bug.sh` file contains the buggy script.  The `bugSolution.sh` file demonstrates a corrected version with improved error handling.

## Bug Description

The script iterates through a list of files. If a file is missing, the script will not report an error, leading to silent failure.  This makes it harder to identify and diagnose the issue.

## Solution

The solution involves explicitly checking for the existence of each file using the `-f` operator before attempting to process it. If a file doesn't exist, an informative error message is printed.

This improved error handling makes the script more robust and easier to debug.