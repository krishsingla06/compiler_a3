#!/bin/bash
# Quick compile and run - works from src directory

# Compile with parser
./parser "$1" > /dev/null 2>&1 || exit 1

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
