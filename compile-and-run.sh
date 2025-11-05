#!/bin/bash

# Compiler test runner script
# Usage: ./run.sh <source_file.c>

if [ $# -eq 0 ]; then
    echo "Usage: $0 <source_file.c>"
    exit 1
fi

SOURCE_FILE="$1"
BASE_NAME=$(basename "$SOURCE_FILE" .c)
CLEAN_ASM="${SOURCE_FILE%.c}.clean.asm"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file '$SOURCE_FILE' not found"
    exit 1
fi

echo "========================================="
echo "Compiling: $SOURCE_FILE"
echo "========================================="

# Compile the source file
cd src
./parser "../$SOURCE_FILE" > /dev/null 2>&1
COMPILE_STATUS=$?
cd ..

if [ $COMPILE_STATUS -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

echo "Compilation successful!"

# Check if clean assembly was generated
if [ ! -f "$CLEAN_ASM" ]; then
    echo "Error: Clean assembly file '$CLEAN_ASM' not found"
    exit 1
fi

echo ""
echo "========================================="
echo "Running in SPIM: $CLEAN_ASM"
echo "========================================="
echo ""

# Run in SPIM
spim -file "$CLEAN_ASM"

echo ""
echo "========================================="
echo "Execution complete"
echo "========================================="
