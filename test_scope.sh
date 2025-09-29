#!/bin/bash

echo "Building parser..."
make clean && make

if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

echo ""
echo "Testing scope management..."
echo "========================================="

for test_file in test_cases/scope_test*.c; do
    if [ -f "$test_file" ]; then
        echo ""
        echo "Running test: $test_file"
        echo "----------------------------"
        ./parser "$test_file"
        echo ""
    fi
done