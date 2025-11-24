#!/bin/bash
# Clean everything but preserve runtime_library.asm

# Change to compiler directory
cd /mnt/d/compiler_a3 || exit 1

# Delete auxiliary files
find . -type f \( -name "*.debug" -o -name "*.errors" -o -name "*.functab" -o -name "*.globalsymtab" -o -name "*.jumptab" -o -name "*.symtab" -o -name "*.tac" -o -name "*.asm.backup" \) -delete

# Delete .asm files except runtime_library.asm (use explicit path check)
find . -type f -name "*.asm" ! -path "*/src/runtime_library.asm" -delete

echo "All generated files cleaned (runtime_library.asm preserved)!"