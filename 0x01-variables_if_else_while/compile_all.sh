#!/bin/bash

# Loop through all C files in the current directory and compile them
for file in *.c; do
    if [ -f "$file" ]; then
        gcc -o "${file%.c}" "$file"
    fi
done

