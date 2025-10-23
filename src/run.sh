#!/bin/bash
rm -f ../test_cases/*.errors

for file in ../test_cases/*; do
    echo "Running parser on $file"
    ./parser "$file"    
done

# rm -f newwtestcases/*.errors

# for file in newwtestcases/*.cpp; do
#     echo "Running parser on $file"
#     ./src/parser "$file"      
# done


