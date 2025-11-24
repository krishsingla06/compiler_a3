#!/bin/bash
# Clean everything but preserve runtime_library.asm
cd /mnt/d/compiler_a3 && find . -type f \( -name "*.debug" -o -name "*.errors" -o -name "*.functab" -o -name "*.globalsymtab" -o -name "*.jumptab" -o -name "*.symtab" -o -name "*.tac" -o -name "*.asm.backup" \) -delete

# Delete .asm files except runtime_library.asm
find . -type f -name "*.asm" ! -name "runtime_library.asm" -delete

echo "All generated files cleaned (runtime_library.asm preserved)!"