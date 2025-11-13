# MIPS Runtime Library
# Standard library functions for the compiler

.data
    # Library internal data (if needed)

.text

#==============================================================================
# Function: printf
# Description: Formatted output function (variadic)
# Arguments: 
#   - $a0 = format string address
#   - Variadic arguments on stack (starting at 0($sp) after call)
# Supported format specifiers: %d, %f, %c, %s, %%
#==============================================================================
__lib_printf:
    # Save registers
    addiu $sp, $sp, -32
    sw $ra, 28($sp)
    sw $s0, 24($sp)
    sw $s1, 20($sp)
    sw $s2, 16($sp)
    sw $s3, 12($sp)
    sw $s4, 8($sp)
    sw $s5, 4($sp)
    sw $s6, 0($sp)
    
    # $s0 = format string address
    move $s0, $a0
    
    # $s1 = current position in format string
    move $s1, $s0
    
    # $s2 = argument pointer (points to variadic args on caller's stack)
    # Caller pushed args on stack before calling
    # They're at our $sp + 32 (after our frame)
    addiu $s2, $sp, 32
    
__lib_printf_loop:
    # Load current character
    lb $s3, 0($s1)
    
    # Check for null terminator
    beq $s3, $zero, __lib_printf_end
    
    # Check for '%'
    li $s4, 37              # ASCII '%'
    beq $s3, $s4, __lib_printf_handle_percent
    
    # Regular character - print it
    move $a0, $s3
    li $v0, 11              # Syscall 11: print character
    syscall
    j __lib_printf_next_char

__lib_printf_handle_percent:
    # Move to next character (format type)
    addiu $s1, $s1, 1
    lb $s3, 0($s1)
    
    # Check for %%
    li $s4, 37
    beq $s3, $s4, __lib_printf_print_percent
    
    # Check for %d
    li $s4, 100             # ASCII 'd'
    beq $s3, $s4, __lib_printf_handle_d
    
    # Check for %f
    li $s4, 102             # ASCII 'f'
    beq $s3, $s4, __lib_printf_handle_f
    
    # Check for %c
    li $s4, 99              # ASCII 'c'
    beq $s3, $s4, __lib_printf_handle_c
    
    # Check for %s
    li $s4, 115             # ASCII 's'
    beq $s3, $s4, __lib_printf_handle_s
    
    # Unknown format - print as-is
    move $a0, $s3
    li $v0, 11
    syscall
    j __lib_printf_next_char

__lib_printf_print_percent:
    li $a0, 37
    li $v0, 11
    syscall
    j __lib_printf_next_char

__lib_printf_handle_d:
    # Print integer
    lw $a0, 0($s2)          # Load argument
    li $v0, 1               # Syscall 1: print integer
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_f:
    # Print float
    lwc1 $f12, 0($s2)       # Load float argument
    li $v0, 2               # Syscall 2: print float
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_c:
    # Print character
    lw $a0, 0($s2)          # Load character (stored as int)
    li $v0, 11              # Syscall 11: print character
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_s:
    # Print string
    lw $a0, 0($s2)          # Load string address
    li $v0, 4               # Syscall 4: print string
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_next_char:
    addiu $s1, $s1, 1       # Move to next character in format string
    j __lib_printf_loop

__lib_printf_end:
    # Restore registers
    lw $s6, 0($sp)
    lw $s5, 4($sp)
    lw $s4, 8($sp)
    lw $s3, 12($sp)
    lw $s2, 16($sp)
    lw $s1, 20($sp)
    lw $s0, 24($sp)
    lw $ra, 28($sp)
    addiu $sp, $sp, 32
    
    jr $ra

#==============================================================================
# Function: print_int
# Description: Print integer value
# Arguments: $a0 = integer to print
#==============================================================================
__lib_print_int:
    li $v0, 1               # Syscall 1: print integer
    syscall
    jr $ra

#==============================================================================
# Function: print_float
# Description: Print float value
# Arguments: $f12 = float to print
#==============================================================================
__lib_print_float:
    li $v0, 2               # Syscall 2: print float
    syscall
    jr $ra

#==============================================================================
# Function: print_char
# Description: Print character
# Arguments: $a0 = character to print (as integer)
#==============================================================================
__lib_print_char:
    li $v0, 11              # Syscall 11: print character
    syscall
    jr $ra

#==============================================================================
# Function: print_string
# Description: Print null-terminated string
# Arguments: $a0 = address of string
#==============================================================================
__lib_print_string:
    li $v0, 4               # Syscall 4: print string
    syscall
    jr $ra

#==============================================================================
# Function: print_newline
# Description: Print newline character
# Arguments: none
#==============================================================================
__lib_print_newline:
    li $a0, 10              # ASCII newline
    li $v0, 11              # Syscall 11: print character
    syscall
    jr $ra
