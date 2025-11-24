#!/bin/bash
# Quick compile and run - works from src directory

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Compile with parser
./parser "$1" > /dev/null 2>&1
COMPILE_STATUS=$?

# Check if compilation failed
if [ $COMPILE_STATUS -ne 0 ]; then
    ERROR_FILE="${1}.errors"
    if [ -f "$ERROR_FILE" ]; then
        echo -e "${RED}Compilation failed with errors:${NC}"
        cat "$ERROR_FILE"
    else
        echo -e "${RED}Compilation failed!${NC}"
    fi
    exit 1
fi

# Get the clean asm filename
ASM_FILE="${1%.c}.clean.asm"

# Add exit syscall after main's final jr $ra if not present
if ! grep -q "li \$v0, 10" "$ASM_FILE"; then
    # Create a temp file with exit syscall added
    awk '
    /^main:/ { in_main=1 }
    in_main && /jr \$ra/ && !exit_added { 
        print
        print "    # Exit program"
        print "    li $v0, 10"
        print "    syscall"
        exit_added=1
        in_main=0
        next
    }
    { print }
    ' "$ASM_FILE" > "${ASM_FILE}.tmp" && mv "${ASM_FILE}.tmp" "$ASM_FILE"
fi

# Run with spim
spim -file "$ASM_FILE"
