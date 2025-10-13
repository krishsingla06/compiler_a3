#!/bin/bash
for file in ../test_cases/*; do
    echo 'Running parser on $file'
    ./parser $file
done
