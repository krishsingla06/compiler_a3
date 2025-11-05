#!/bin/bash
rm -f ../unit_test_cases/*.errors

for file in ../unit_test_cases/*.c; do
    # Check if the file actually exists (in case no .c files are found)
    if [ -f "$file" ]; then
        echo "Running parser on $file"
        ./parser "$file"
    fi
done
