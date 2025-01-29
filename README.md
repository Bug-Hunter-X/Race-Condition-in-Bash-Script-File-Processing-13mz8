# Race Condition in Bash Script File Processing
This repository demonstrates a race condition in a bash script that processes a file.  The script attempts to ensure the file exists before processing it, but a race condition can occur if another process deletes and recreates the file between the check and the processing steps.  The solution demonstrates a more robust approach to handling this scenario. 

## Bug
The `bug.sh` script contains the problematic code.  The `while` loop checks for the file's existence; however, another process could delete and recreate the file between the check and the processing. This leads to unexpected behavior or errors during processing.

## Solution
The `bugSolution.sh` script provides a solution that uses flock to ensure exclusive access to the file, preventing the race condition.  This approach guarantees that the processing happens atomically. 
