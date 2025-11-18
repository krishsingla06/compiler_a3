#!/bin/bash
# Usage: ./run_compare.sh <file.c>        # Run single file comparison
#        ./run_compare.sh all             # Run all files in ../Final_working/
#        ./run_compare.sh ../Final_working/factorial.c  # Specific path
#
# This script:
# 1. Compiles with GCC (after removing custom printf and adding #include <stdio.h>)
# 2. Compiles with ./parser and runs via spim
# 3. Shows side-by-side output comparison
# 4. Lists files where outputs differ

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

FINAL_WORKING="../Final_working"
MISMATCHES=()

# Function to prepare file for GCC (remove custom printf, add stdio.h)
prepare_for_gcc() {
    local input_file="$1"
    local output_file="$2"
    
    # Remove the custom printf declaration line and add #include <stdio.h>
    # This matches lines like: void printf(char* c, ...){return 0;}
    sed '/^void printf(/d' "$input_file" | \
    awk 'NR==1 {print "#include <stdio.h>"} {print}' > "$output_file"
}

# Function to run comparison for a single file
run_comparison() {
    local file="$1"
    local basename=$(basename "$file" .c)
    local dirname=$(dirname "$file")
    
    echo -e "${BLUE}==================================================${NC}"
    echo -e "${BLUE}Testing: $file${NC}"
    echo -e "${BLUE}==================================================${NC}"
    
    # Create temp files
    local gcc_prepared="/tmp/${basename}_gcc.c"
    local gcc_out="/tmp/${basename}_gcc.out"
    local gcc_err="/tmp/${basename}_gcc.err"
    local spim_out="/tmp/${basename}_spim.out"
    local spim_err="/tmp/${basename}_spim.err"
    
    # Prepare for GCC
    prepare_for_gcc "$file" "$gcc_prepared"
    
    # Compile and run with GCC
    echo -e "${YELLOW}[GCC]${NC} Compiling and running..."
    if gcc -std=c99 -w -o "/tmp/${basename}_gcc" "$gcc_prepared" 2>"$gcc_err"; then
        if "/tmp/${basename}_gcc" > "$gcc_out" 2>&1; then
            echo -e "${GREEN}[GCC]${NC} Success"
        else
            echo -e "${RED}[GCC]${NC} Runtime error"
            cat "$gcc_out"
        fi
    else
        echo -e "${RED}[GCC]${NC} Compilation failed:"
        cat "$gcc_err"
        return 1
    fi
    
    # Copy file to src directory temporarily if it's not already there
    local src_file=""
    if [[ "$dirname" == "." ]] || [[ "$dirname" == "$(pwd)" ]]; then
        src_file="$file"
    else
        src_file="$(pwd)/${basename}.c"
        cp "$file" "$src_file"
    fi
    
    # Run with parser and spim
    echo -e "${YELLOW}[SPIM]${NC} Compiling with parser and running with spim..."
    if ./parser "$src_file" > /dev/null 2>&1; then
        local asm_file="${src_file%.c}.clean.asm"
        if [[ -f "$asm_file" ]]; then
            if spim -file "$asm_file" > "$spim_out" 2>&1; then
                echo -e "${GREEN}[SPIM]${NC} Success"
            else
                echo -e "${RED}[SPIM]${NC} Runtime error"
                cat "$spim_out"
            fi
        else
            echo -e "${RED}[SPIM]${NC} Assembly file not generated: $asm_file"
            return 1
        fi
    else
        echo -e "${RED}[SPIM]${NC} Parser compilation failed"
        return 1
    fi
    
    # Clean up copied file if we created it
    if [[ "$src_file" != "$file" ]]; then
        rm -f "$src_file" "${src_file%.c}".{tac,asm,clean.asm,debug,errors,functab,globalsymtab,jumptab,symtab}
    fi
    
    # Filter SPIM output (remove SPIM header lines and copyright)
    grep -v "^SPIM" "$spim_out" | \
    grep -v "^Loaded:" | \
    grep -v "^Copyright" | \
    grep -v "^All Rights" | \
    grep -v "^See the file" | \
    grep -v "^$" > "${spim_out}.filtered" || true
    mv "${spim_out}.filtered" "$spim_out"
    
    # Compare outputs
    echo ""
    echo -e "${BLUE}Output Comparison:${NC}"
    echo -e "${YELLOW}[Left: GCC]${NC}                    ${YELLOW}[Right: SPIM]${NC}"
    echo "=================================================="
    
    # Show side-by-side diff
    if diff -y -W 100 "$gcc_out" "$spim_out" > /dev/null 2>&1; then
        echo -e "${GREEN}✓ Outputs match!${NC}"
        cat "$gcc_out"
    else
        echo -e "${RED}✗ Outputs differ!${NC}"
        diff -y -W 100 "$gcc_out" "$spim_out" || true
        MISMATCHES+=("$file")
    fi
    
    echo ""
    
    # Cleanup temp files
    rm -f "$gcc_prepared" "/tmp/${basename}_gcc" "$gcc_out" "$gcc_err" "$spim_out" "$spim_err"
}

# Main script logic
if [[ "$1" == "all" ]]; then
    echo -e "${BLUE}Running comparison for all files in $FINAL_WORKING/${NC}"
    echo ""
    
    for file in "$FINAL_WORKING"/*.c; do
        if [[ -f "$file" ]]; then
            run_comparison "$file" || true
        fi
    done
    
    # Summary
    echo -e "${BLUE}==================================================${NC}"
    echo -e "${BLUE}SUMMARY${NC}"
    echo -e "${BLUE}==================================================${NC}"
    
    if [[ ${#MISMATCHES[@]} -eq 0 ]]; then
        echo -e "${GREEN}✓ All outputs match!${NC}"
    else
        echo -e "${RED}✗ Files with different outputs (${#MISMATCHES[@]}):${NC}"
        for mismatch in "${MISMATCHES[@]}"; do
            echo -e "  ${RED}→${NC} $mismatch"
        done
    fi
    
elif [[ -f "$1" ]]; then
    run_comparison "$1"
else
    echo "Usage: $0 <file.c> | all"
    echo ""
    echo "Examples:"
    echo "  $0 ../Final_working/factorial.c    # Run single file"
    echo "  $0 all                              # Run all files in ../Final_working/"
    exit 1
fi
