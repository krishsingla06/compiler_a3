#!/bin/bash
# Quick compile and run - works from src directory
./parser "$1" > /dev/null 2>&1 && spim -file "${1%.c}.clean.asm"
