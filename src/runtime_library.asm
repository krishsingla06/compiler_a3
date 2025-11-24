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
# __lib_malloc - Allocate dynamic memory
# Parameter: size in bytes (at 8($fp))
# Returns: pointer to allocated memory in $v0
# Uses syscall 9 (sbrk) to allocate heap memory
#==============================================================================
__lib_malloc:
    # Save registers
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # Load size parameter from stack
    lw $a0, 8($fp)  # Size in bytes
    
    # Check if size is valid (> 0)
    blez $a0, malloc_error
    
    # Syscall 9: sbrk (allocate heap memory)
    li $v0, 9
    syscall
    # $v0 now contains pointer to allocated memory
    
    j malloc_end

malloc_error:
    # Return NULL (0) on error
    li $v0, 0

malloc_end:
    # Restore registers
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# __lib_free - Free dynamically allocated memory
# Parameter: pointer to memory (at 8($fp))
# NOTE: MIPS syscalls don't provide a way to free memory back to the system.
# In a real implementation, you would maintain a free list.
# For simplicity, this is a no-op that validates the pointer.
#==============================================================================
__lib_free:
    # Save registers
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # Load pointer parameter from stack
    lw $a0, 8($fp)  # Pointer to free
    
    # In a real implementation, we would:
    # 1. Check if pointer is valid
    # 2. Mark memory as free in a free list
    # 3. Coalesce adjacent free blocks
    #
    # For now, this is a no-op since MIPS doesn't provide
    # a syscall to return memory to the system.
    # The memory remains allocated but could be tracked
    # in a more sophisticated implementation.
    
    # Restore registers
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================