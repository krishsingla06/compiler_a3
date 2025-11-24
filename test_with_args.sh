#!/bin/bash
# Test runner for programs with command-line arguments
# Usage: ./test_with_args.sh <source_file.c> [arg1] [arg2] ...

if [ $# -lt 1 ]; then
    echo "Usage: $0 <source_file.c> [arg1] [arg2] ..."
    echo "Example: $0 test_cmdline_args.c hello world 123"
    exit 1
fi

SOURCE_FILE="$1"
shift  # Remove first argument, rest are program arguments
ARGS=("$@")

BASE_NAME=$(basename "$SOURCE_FILE" .c)
CLEAN_ASM="${SOURCE_FILE%.c}.clean.asm"
TEST_ASM="${SOURCE_FILE%.c}.test.asm"

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
    cat "${SOURCE_FILE}.errors" 2>/dev/null
    exit 1
fi

echo "Compilation successful!"

# Check if clean assembly was generated
if [ ! -f "$CLEAN_ASM" ]; then
    echo "Error: Clean assembly file '$CLEAN_ASM' not found"
    exit 1
fi

# Create test wrapper with command-line arguments
echo "========================================="
echo "Setting up command-line arguments:"
echo "  argc = $((${#ARGS[@]} + 1))"
echo "  argv[0] = \"$BASE_NAME\""
for i in "${!ARGS[@]}"; do
    echo "  argv[$((i+1))] = \"${ARGS[$i]}\""
done
echo "========================================="
echo ""

# Generate the test assembly file with argc/argv setup
{
    echo "# Command-line argument test wrapper"
    echo ".data"
    echo "prog_name: .asciiz \"$BASE_NAME\""
    
    # Add argument strings
    for i in "${!ARGS[@]}"; do
        echo "arg_$i: .asciiz \"${ARGS[$i]}\""
    done
    
    # Extract string literals from compiled program
    awk '
    BEGIN { in_data=0 }
    /^\.data/ { in_data=1; next }
    /^\.text/ { in_data=0; exit }
    in_data && !/^$/ { print }
    ' "$CLEAN_ASM"
    
    # Add argv array
    echo ""
    echo ".align 2"
    echo "argv_array:"
    echo "    .word prog_name"
    for i in "${!ARGS[@]}"; do
        echo "    .word arg_$i"
    done
    echo "    .word 0  # NULL terminator"
    echo ""
    
    # Text section with wrapper main
    echo ".text"
    echo ".globl main"
    echo ""
    echo "main:"
    echo "    # Set up argc and argv"
    echo "    li \$a0, $((${#ARGS[@]} + 1))    # argc"
    echo "    la \$a1, argv_array  # argv"
    echo "    "
    echo "    # Push argv onto stack (parameter 2)"
    echo "    addiu \$sp, \$sp, -8"
    echo "    sw \$a1, 4(\$sp)"
    echo "    "
    echo "    # Push argc onto stack (parameter 1)"
    echo "    sw \$a0, 0(\$sp)"
    echo "    "
    echo "    # Call the actual main function"
    echo "    jal main_i_cp2"
    echo "    "
    echo "    # Clean up stack"
    echo "    addiu \$sp, \$sp, 8"
    echo "    "
    echo "    # Exit program"
    echo "    li \$v0, 10"
    echo "    syscall"
    echo ""
    echo "# Functions from compiled program:"
    
    # Extract functions (everything after .text, excluding .globl main)
    awk '
    BEGIN { in_text=0 }
    /^\.data/ { next }
    /^\.text/ { in_text=1; next }
    /^\.globl main/ { next }
    in_text { print }
    ' "$CLEAN_ASM"
    
} > "$TEST_ASM"

echo "========================================="
echo "Running in SPIM"
echo "========================================="
echo ""

# Run in SPIM
spim -file "$TEST_ASM"

echo ""
echo "========================================="
echo "Test completed"
echo "========================================="
