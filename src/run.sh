#!/bin/bash
rm -f ../test_cases/*.errors

for file in ../test_cases/*.c; do
    # Check if the file actually exists (in case no .c files are found)
    if [ -f "$file" ]; then
        echo "Running parser on $file"
        ./parser "$file"
    fi
done
