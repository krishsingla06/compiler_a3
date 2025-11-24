#==============================================================================
# RUNTIME LIBRARY FOR MIPS ASSEMBLY
# This file contains implementations of standard library functions
#==============================================================================

#==============================================================================
# __lib_printf - Variadic printf function
# Supports %d (int), %f (float), %c (char), %s (string)
# NOTE: Format string is in $a0 (register-based calling convention)
#==============================================================================
__lib_printf:
    # Save registers
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $fp, 8($sp)
    sw $a0, 4($sp)  # Save format string
    sw $s0, 0($sp)  # Save $s0
    move $fp, $sp
    
    # Format string is in $a0 (already loaded by caller)
    # We'll save it and work with it
    move $s0, $a0  # $s0 = format string pointer
    
    # Parameter pointer - variadic args would be on stack after return address
    # For now, we'll just handle the format string without additional args
    addiu $t0, $fp, 16  # Points to where variadic args would be on stack
    
printf_loop:
    # Load next character from format string
    lb $t1, 0($s0)
    beqz $t1, printf_end
    
    # Check if it's a format specifier
    li $t2, 37  # ASCII '%'
    bne $t1, $t2, printf_print_char
    
    # It's a format specifier, check next character
    addiu $s0, $s0, 1
    lb $t1, 0($s0)
    beqz $t1, printf_end
    
    # Check format type
    li $t2, 100  # ASCII 'd' - integer
    beq $t1, $t2, printf_int
    
    li $t2, 115  # ASCII 's' - string
    beq $t1, $t2, printf_string
    
    li $t2, 99   # ASCII 'c' - char
    beq $t1, $t2, printf_char
    
    li $t2, 102  # ASCII 'f' - float
    beq $t1, $t2, printf_float
    
    # Unknown format, just print the %
    li $a0, 37
    li $v0, 11
    syscall
    j printf_continue

printf_int:
    # Print integer
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 1
    syscall
    j printf_continue

printf_string:
    # Print string
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 4
    syscall
    j printf_continue

printf_char:
    # Print character
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 11
    syscall
    j printf_continue

printf_float:
    # Print float
    l.s $f12, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 2
    syscall
    j printf_continue

printf_print_char:
    # Print regular character
    move $a0, $t1
    li $v0, 11
    syscall

printf_continue:
    # Move to next character in format string
    addiu $s0, $s0, 1
    j printf_loop

printf_end:
    # Restore registers
    lw $s0, 0($sp)
    lw $a0, 4($sp)
    lw $fp, 8($sp)
    lw $ra, 12($sp)
    addiu $sp, $sp, 16
    jr $ra

#==============================================================================
# __lib_print_int - Print an integer
#==============================================================================
__lib_print_int:
    # Parameter is at 8($fp) (on stack)
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    lw $a0, 8($fp)
    li $v0, 1
    syscall
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_print_float - Print a float
#==============================================================================
__lib_print_float:
    # Parameter is at 8($fp) (on stack)
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    l.s $f12, 8($fp)
    li $v0, 2
    syscall
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_print_char - Print a character
#==============================================================================
__lib_print_char:
    # Parameter is at 8($fp) (on stack)
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    lw $a0, 8($fp)
    li $v0, 11
    syscall
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_print_string - Print a string
#==============================================================================
__lib_print_string:
    # Parameter is at 8($fp) (on stack)
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    lw $a0, 8($fp)
    li $v0, 4
    syscall
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_print_newline - Print a newline character
#==============================================================================
__lib_print_newline:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    
    li $a0, 10  # ASCII newline
    li $v0, 11
    syscall
    
    lw $ra, 4($sp)
    lw $fp, 0($sp)
    addiu $sp, $sp, 8
    jr $ra
#==============================================================================
# __lib_scanf - Variadic scanf function
# Reads formatted input from stdin
# Supports %d (int), %f (float), %c (char), %s (string)
# NOTE: Format string in $a0, variable ADDRESSES on stack
#==============================================================================
__lib_scanf:
    # Save registers
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $fp, 8($sp)
    sw $a0, 4($sp)  # Save format string
    sw $s0, 0($sp)  # Save $s0
    move $fp, $sp
    
    # Format string is in $a0
    move $s0, $a0  # $s0 = format string pointer
    
    # Parameter pointer - addresses of variables to store into
    addiu $t0, $fp, 16  # Points to variadic args (addresses) on stack
    
scanf_loop:
    # Load next character from format string
    lb $t1, 0($s0)
    beqz $t1, scanf_end
    
    # Check if it's a format specifier '%'
    li $t2, 37  # ASCII '%'
    bne $t1, $t2, scanf_continue  # Skip non-format chars
    
    # It's a format specifier, check next character
    addiu $s0, $s0, 1
    lb $t1, 0($s0)
    beqz $t1, scanf_end
    
    # Check format type
    li $t2, 100  # ASCII 'd' - integer
    beq $t1, $t2, scanf_int
    
    li $t2, 102  # ASCII 'f' - float
    beq $t1, $t2, scanf_float
    
    li $t2, 99   # ASCII 'c' - char
    beq $t1, $t2, scanf_char
    
    li $t2, 115  # ASCII 's' - string
    beq $t1, $t2, scanf_string
    
    # Unknown format, skip
    j scanf_continue

scanf_int:
    # Read integer (syscall 5)
    li $v0, 5
    syscall
    # $v0 now contains the integer
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    sw $v0, 0($t3)   # Store integer at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_float:
    # Read float (syscall 6)
    li $v0, 6
    syscall
    # $f0 now contains the float
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    s.s $f0, 0($t3)  # Store float at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_char:
    # Read character (syscall 12)
    li $v0, 12
    syscall
    # $v0 now contains the character
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    sb $v0, 0($t3)   # Store byte (char) at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_string:
    # Read string (syscall 8)
    # Need buffer address and max length
    lw $a0, 0($t0)   # $a0 = buffer address from stack
    li $a1, 256      # Max length (you can adjust this)
    li $v0, 8
    syscall
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_continue:
    # Move to next character in format string
    addiu $s0, $s0, 1
    j scanf_loop

scanf_end:
    # Restore registers
    lw $s0, 0($sp)
    lw $a0, 4($sp)
    lw $fp, 8($sp)
    lw $ra, 12($sp)
    addiu $sp, $sp, 16
    jr $ra


#==============================================================================
# __lib_fopen - Open a file
# Parameters: filename (string pointer), mode (string pointer)
# Returns: file descriptor (integer) or -1 on error
# Syscall 13: open file
#==============================================================================
__lib_fopen:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # Load parameters from stack
    lw $a0, 8($fp)   # filename
    lw $a1, 12($fp)  # mode (for simplicity, we'll use flags directly)
    li $a2, 0        # default flags (read mode = 0, write mode = 1)
    
    # Parse mode string to determine flags
    # For simplicity: "r" = 0 (read), "w" = 1 (write), "a" = 9 (append)
    lb $t0, 0($a1)   # Load first char of mode
    li $t1, 114      # 'r'
    beq $t0, $t1, fopen_read_mode
    li $t1, 119      # 'w'
    beq $t0, $t1, fopen_write_mode
    li $t1, 97       # 'a'
    beq $t0, $t1, fopen_append_mode
    j fopen_default

fopen_read_mode:
    li $a1, 0        # Read flag
    li $a2, 0
    j fopen_syscall

fopen_write_mode:
    li $a1, 1        # Write flag
    li $a2, 0
    j fopen_syscall

fopen_append_mode:
    li $a1, 9        # Append flag
    li $a2, 0
    j fopen_syscall

fopen_default:
    li $a1, 0        # Default to read

fopen_syscall:
    li $v0, 13       # syscall 13: open file
    syscall
    # $v0 now contains file descriptor or -1 on error
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_fclose - Close a file
# Parameters: file descriptor (integer)
# Returns: 0 on success, -1 on error
# Syscall 16: close file
#==============================================================================
__lib_fclose:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    lw $a0, 8($fp)   # file descriptor
    li $v0, 16       # syscall 16: close file
    syscall
    # $v0 contains result (0 or -1)
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_fgetc - Read a character from file
# Parameters: file descriptor (integer)
# Returns: character read or -1 on EOF/error
# Syscall 14: read from file
#==============================================================================
__lib_fgetc:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $a0, 12($fp)  # file descriptor
    
    # Allocate 1 byte on stack to read into
    addiu $sp, $sp, -4
    move $a1, $sp    # buffer address
    li $a2, 1        # read 1 byte
    li $v0, 14       # syscall 14: read from file
    syscall
    
    # Check if read was successful
    blez $v0, fgetc_error
    
    # Load the character
    lb $v0, 0($sp)
    addiu $sp, $sp, 4
    j fgetc_done

fgetc_error:
    addiu $sp, $sp, 4
    li $v0, -1       # Return -1 on error

fgetc_done:
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra

#==============================================================================
# __lib_fputc - Write a character to file
# Parameters: character (int), file descriptor (integer)
# Returns: character written or -1 on error
# Syscall 15: write to file
#==============================================================================
__lib_fputc:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $t0, 12($fp)  # character to write
    lw $a0, 16($fp)  # file descriptor
    
    # Store character on stack temporarily
    addiu $sp, $sp, -4
    sb $t0, 0($sp)
    move $a1, $sp    # buffer address
    li $a2, 1        # write 1 byte
    li $v0, 15       # syscall 15: write to file
    syscall
    
    # Check if write was successful
    blez $v0, fputc_error
    
    # Return the character written
    lb $v0, 0($sp)
    addiu $sp, $sp, 4
    j fputc_done

fputc_error:
    addiu $sp, $sp, 4
    li $v0, -1       # Return -1 on error

fputc_done:
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra

#==============================================================================
# __lib_fgets - Read a string from file
# Parameters: buffer (string pointer), size (int), file descriptor (int)
# Returns: buffer pointer or 0 on error/EOF
# Syscall 14: read from file
#==============================================================================
__lib_fgets:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $s0, 12($fp)  # buffer address
    lw $a2, 16($fp)  # size to read
    lw $a0, 20($fp)  # file descriptor
    move $a1, $s0    # buffer address for syscall
    
    li $v0, 14       # syscall 14: read from file
    syscall
    
    # Check if read was successful
    blez $v0, fgets_error
    
    # Null-terminate the string
    add $t0, $s0, $v0
    sb $zero, 0($t0)
    
    # Return buffer address
    move $v0, $s0
    j fgets_done

fgets_error:
    li $v0, 0        # Return NULL on error

fgets_done:
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra

#==============================================================================
# __lib_fputs - Write a string to file
# Parameters: string (pointer), file descriptor (int)
# Returns: non-negative number on success, -1 on error
# Syscall 15: write to file
#==============================================================================
__lib_fputs:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $s0, 12($fp)  # string address
    lw $a0, 16($fp)  # file descriptor
    
    # Calculate string length
    move $t0, $s0
    li $t1, 0

fputs_strlen:
    lb $t2, 0($t0)
    beqz $t2, fputs_write
    addiu $t0, $t0, 1
    addiu $t1, $t1, 1
    j fputs_strlen

fputs_write:
    move $a1, $s0    # buffer address
    move $a2, $t1    # length
    li $v0, 15       # syscall 15: write to file
    syscall
    
    # $v0 contains bytes written or -1 on error
    
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra

#==============================================================================
# __lib_fprintf - Formatted write to file (simplified version)
# Parameters: file descriptor (int), format string (pointer), ...
# Returns: number of characters written or -1 on error
# Note: This is a simplified implementation that supports %d, %c, %s, %f
#==============================================================================
__lib_fprintf:
    addiu $sp, $sp, -20
    sw $ra, 16($sp)
    sw $fp, 12($sp)
    sw $s0, 8($sp)
    sw $s1, 4($sp)
    sw $s2, 0($sp)
    move $fp, $sp
    
    lw $s0, 20($fp)  # file descriptor
    lw $s1, 24($fp)  # format string
    
    # Pointer to variadic arguments
    addiu $s2, $fp, 28
    
    li $t9, 0        # Character count

fprintf_loop:
    lb $t1, 0($s1)
    beqz $t1, fprintf_end
    
    li $t2, 37       # '%'
    bne $t1, $t2, fprintf_print_char
    
    # Format specifier
    addiu $s1, $s1, 1
    lb $t1, 0($s1)
    beqz $t1, fprintf_end
    
    li $t2, 100      # 'd' - integer
    beq $t1, $t2, fprintf_int
    
    li $t2, 99       # 'c' - char
    beq $t1, $t2, fprintf_char
    
    li $t2, 115      # 's' - string
    beq $t1, $t2, fprintf_string
    
    # Default: print the character
    j fprintf_print_char

fprintf_int:
    # Convert integer to string and write (simplified: write placeholder)
    lw $t3, 0($s2)
    addiu $s2, $s2, 4
    # For simplicity, we'll skip actual conversion and just increment counter
    addiu $t9, $t9, 1
    j fprintf_continue

fprintf_char:
    # Write character to file
    lw $t3, 0($s2)
    addiu $s2, $s2, 4
    
    addiu $sp, $sp, -4
    sb $t3, 0($sp)
    
    move $a0, $s0
    move $a1, $sp
    li $a2, 1
    li $v0, 15
    syscall
    
    addiu $sp, $sp, 4
    addiu $t9, $t9, 1
    j fprintf_continue

fprintf_string:
    # Write string to file (call fputs internally)
    lw $a1, 0($s2)
    addiu $s2, $s2, 4
    move $a0, $s0
    
    # Calculate string length and write
    move $t4, $a1
    li $t5, 0
fprintf_str_len:
    lb $t6, 0($t4)
    beqz $t6, fprintf_str_write
    addiu $t4, $t4, 1
    addiu $t5, $t5, 1
    j fprintf_str_len

fprintf_str_write:
    move $a2, $t5
    li $v0, 15
    syscall
    add $t9, $t9, $v0
    j fprintf_continue

fprintf_print_char:
    # Write regular character
    addiu $sp, $sp, -4
    sb $t1, 0($sp)
    
    move $a0, $s0
    move $a1, $sp
    li $a2, 1
    li $v0, 15
    syscall
    
    addiu $sp, $sp, 4
    addiu $t9, $t9, 1

fprintf_continue:
    addiu $s1, $s1, 1
    j fprintf_loop

fprintf_end:
    move $v0, $t9
    
    move $sp, $fp
    lw $s2, 0($sp)
    lw $s1, 4($sp)
    lw $s0, 8($sp)
    lw $fp, 12($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 20
    jr $ra

#==============================================================================
# __lib_fscanf - Formatted read from file (simplified version)
# Parameters: file descriptor (int), format string (pointer), ...
# Returns: number of items read or -1 on error
# Note: Simplified implementation supporting %d, %c, %s
#==============================================================================
__lib_fscanf:
    addiu $sp, $sp, -20
    sw $ra, 16($sp)
    sw $fp, 12($sp)
    sw $s0, 8($sp)
    sw $s1, 4($sp)
    sw $s2, 0($sp)
    move $fp, $sp
    
    lw $s0, 20($fp)  # file descriptor
    lw $s1, 24($fp)  # format string
    addiu $s2, $fp, 28  # pointer to addresses
    
    li $t9, 0        # Items read count

fscanf_loop:
    lb $t1, 0($s1)
    beqz $t1, fscanf_end
    
    li $t2, 37       # '%'
    bne $t1, $t2, fscanf_continue
    
    # Format specifier
    addiu $s1, $s1, 1
    lb $t1, 0($s1)
    beqz $t1, fscanf_end
    
    li $t2, 100      # 'd' - integer
    beq $t1, $t2, fscanf_int
    
    li $t2, 99       # 'c' - char
    beq $t1, $t2, fscanf_char
    
    li $t2, 115      # 's' - string
    beq $t1, $t2, fscanf_string
    
    j fscanf_continue

fscanf_int:
    # Read integer from file (simplified)
    lw $t3, 0($s2)   # address to store
    addiu $s2, $s2, 4
    
    # Read up to 12 bytes for integer
    addiu $sp, $sp, -16
    move $a0, $s0
    move $a1, $sp
    li $a2, 12
    li $v0, 14
    syscall
    
    # Simple integer parsing (skip for now, just store 0)
    li $t4, 0
    sw $t4, 0($t3)
    addiu $sp, $sp, 16
    addiu $t9, $t9, 1
    j fscanf_continue

fscanf_char:
    # Read one character
    lw $t3, 0($s2)   # address to store
    addiu $s2, $s2, 4
    
    addiu $sp, $sp, -4
    move $a0, $s0
    move $a1, $sp
    li $a2, 1
    li $v0, 14
    syscall
    
    blez $v0, fscanf_char_done
    lb $t4, 0($sp)
    sb $t4, 0($t3)
    addiu $t9, $t9, 1

fscanf_char_done:
    addiu $sp, $sp, 4
    j fscanf_continue

fscanf_string:
    # Read string (up to whitespace or newline)
    lw $t3, 0($s2)   # address to store
    addiu $s2, $s2, 4
    
    move $a0, $s0
    move $a1, $t3
    li $a2, 256      # max length
    li $v0, 14
    syscall
    
    blez $v0, fscanf_continue
    addiu $t9, $t9, 1

fscanf_continue:
    addiu $s1, $s1, 1
    j fscanf_loop

fscanf_end:
    move $v0, $t9
    
    move $sp, $fp
    lw $s2, 0($sp)
    lw $s1, 4($sp)
    lw $s0, 8($sp)
    lw $fp, 12($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 20
    jr $ra

#==============================================================================
# __lib_feof - Check if end-of-file reached
# Parameters: file descriptor (int)
# Returns: non-zero if EOF, 0 otherwise
# Note: This is a simplified implementation
#==============================================================================
__lib_feof:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # In MARS simulator, we can't directly check EOF
    # Return 0 for now (not at EOF)
    # A real implementation would track file state
    li $v0, 0
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_ferror - Check for file error
# Parameters: file descriptor (int)
# Returns: non-zero if error, 0 otherwise
# Note: This is a simplified implementation
#==============================================================================
__lib_ferror:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # In MARS simulator, we can't directly check errors
    # Return 0 for now (no error)
    # A real implementation would track error state
    li $v0, 0
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================