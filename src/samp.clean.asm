




.data
str_0: .asciiz "%d"
str_2: .asciiz "%d\n"
str_1: .asciiz "You entered: "


.text
.globl main


I1:
printf_cp1_variadic:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I2:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I3:
scanf_cp1_variadic:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I4:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I5:
main:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48

I6:
    addiu $t0, $fp, -4

I7:

I8:

I9:
    sw $t0, -8($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    addiu $t0, $fp, -8
    sw $t0, 0($sp)
    jal __lib_scanf
    addiu $sp, $sp, 4

I10:

I11:
    la $a0, str_1
    jal __lib_printf

I12:

I13:

I14:
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I15:
    li $v0, 0



I16:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



#==============================================================================
# RUNTIME LIBRARY FUNCTIONS
# The following functions are imported from the runtime library
#==============================================================================

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
# END OF RUNTIME LIBRARY
#==============================================================================

