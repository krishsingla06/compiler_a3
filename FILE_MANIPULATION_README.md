# File Manipulation Functions Implementation

This document describes the implementation of file manipulation functions for the Fanta-C compiler.

## Overview

The following file manipulation functions have been implemented:

1. **fopen(filename, mode)** - Open a file
2. **fclose(fd)** - Close a file
3. **fgetc(fd)** - Read a character from a file
4. **fputc(ch, fd)** - Write a character to a file
5. **fgets(buffer, size, fd)** - Read a string from a file
6. **fputs(str, fd)** - Write a string to a file
7. **fprintf(fd, format, ...)** - Formatted write to a file (simplified)
8. **fscanf(fd, format, ...)** - Formatted read from a file (simplified)
9. **feof(fd)** - Check if end-of-file is reached
10. **ferror(fd)** - Check for file errors

## Implementation Details

### 1. Runtime Library (runtime_library.asm)

All file manipulation functions are implemented in MIPS assembly using MARS syscalls:
- **syscall 13**: Open file
- **syscall 14**: Read from file
- **syscall 15**: Write to file
- **syscall 16**: Close file

Each function follows the standard calling convention:
- Parameters are passed on the stack (at offsets from $fp)
- Return values are placed in $v0
- Registers $ra and $fp are saved/restored
- Caller-saved registers are preserved

### 2. Runtime Library Manager (runtime_library.cpp)

The `RuntimeLibrary` class was extended to recognize the new file manipulation functions:
- Added all 10 functions to the `get_supported_functions()` method
- Functions are automatically marked as "used" when called in user code
- Only used functions are included in the final assembly output

### 3. MIPS Code Generator (mips_generator.cpp)

The `translate_call()` function was extended with special handling for each file function:
- Pattern matching: Checks if function name starts with "fopen", "fclose", etc.
- Parameter marshaling: Prepares parameters on stack according to calling convention
- Library call: Generates `jal __lib_<function>` instruction
- Return value handling: Moves result from $v0 to allocated register

## Usage Example

```c
// Function declarations (required by the compiler)
int fopen(char* filename, char* mode) { return 0; }
int fclose(int fd) { return 0; }
int fputc(int ch, int fd) { return 0; }
int fgetc(int fd) { return 0; }
int fputs(char* str, int fd) { return 0; }

int main() {
    int fd;
    int ch;
    
    // Open file for writing
    fd = fopen("output.txt", "w");
    
    // Write some characters
    fputc(72, fd);   // 'H'
    fputc(101, fd);  // 'e'
    fputc(108, fd);  // 'l'
    fputc(108, fd);  // 'l'
    fputc(111, fd);  // 'o'
    
    // Write a string
    fputs("World", fd);
    
    // Close file
    fclose(fd);
    
    // Open file for reading
    fd = fopen("output.txt", "r");
    
    // Read character
    ch = fgetc(fd);
    
    // Close file
    fclose(fd);
    
    return 0;
}
```

## Test Cases

Two test files demonstrate the functionality:
1. **file_manipulation_test.c** - Basic test of all functions
2. **file_io_comprehensive.c** - Comprehensive test with write and read operations

## Technical Notes

### File Modes
- "r" - Read mode (flag = 0)
- "w" - Write mode (flag = 1)
- "a" - Append mode (flag = 9)

### Return Values
- `fopen`: Returns file descriptor (≥0) on success, -1 on error
- `fclose`: Returns 0 on success, -1 on error
- `fgetc`: Returns character read, or -1 on EOF/error
- `fputc`: Returns character written, or -1 on error
- `fgets`: Returns buffer pointer on success, 0 (NULL) on error
- `fputs`: Returns non-negative value on success, -1 on error
- `fprintf`/`fscanf`: Returns number of items written/read
- `feof`: Returns non-zero if EOF, 0 otherwise
- `ferror`: Returns non-zero if error, 0 otherwise

### Limitations

1. **fprintf** and **fscanf** are simplified implementations:
   - Limited format specifier support (%d, %c, %s)
   - No full printf-style parsing
   - Number-to-string conversion is simplified

2. **feof** and **ferror**:
   - Simplified implementations (always return 0 in current version)
   - Would require additional state tracking for full implementation

3. **String literals**:
   - Must be passed as string literals or char arrays
   - The compiler handles string literal addresses automatically

## Compilation

To use the file manipulation functions:

```bash
cd src
make
./parser ../unit_test_cases/file_io_comprehensive.c
```

The compiler will:
1. Parse the source file
2. Generate TAC (Three-Address Code)
3. Generate MIPS assembly with included file manipulation functions
4. Output will include only the file functions actually used in the program

## Files Modified

1. `src/runtime_library.cpp` - Added function names to supported list
2. `src/runtime_library.asm` - Added ~540 lines of MIPS assembly implementations
3. `src/mips_generator.cpp` - Added ~450 lines of special handling code
4. `unit_test_cases/file_manipulation_test.c` - Basic test case
5. `unit_test_cases/file_io_comprehensive.c` - Comprehensive test case
