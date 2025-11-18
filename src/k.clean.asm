




.data
str_0: .asciiz "i: %d\n"


.text
.globl main


I1:
printf_cp1_variadic:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I2:



I3:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I4:
main:
    addiu $sp, $sp, -72
    sw $ra, 68($sp)
    sw $fp, 64($sp)
    addiu $fp, $sp, 64

I5:
    li $t0, -3

I6:
    sw $t0, -8($fp)

I7:
    li $t1, -3

I8:
    li $t2, -3

I9:
    li $t3, 1

I10:
    sw $t0, -4($fp)
    sw $t0, -8($fp)
    sw $t1, -12($fp)
    sw $t2, -16($fp)
    sw $t3, -20($fp)
    blt $t1, $t2, I20



I11:
    lw $t0, -12($fp)
    lw $t1, -20($fp)
    bgt $t0, $t1, I20



I12:
    lw $t0, -12($fp)
    lw $t1, -16($fp)
    sub $t2, $t0, $t1

I13:
    sw $t2, -24($fp)
    li $t3, 0
    beq $t2, $t3, I16
    li $t3, 1
    beq $t2, $t3, I20
    li $t3, 2
    beq $t2, $t3, I18
    li $t3, 3
    beq $t2, $t3, I20
    li $t3, 4
    beq $t2, $t3, I14

I14:
    li $t3, 10

I15:
    sw $t3, -8($fp)
    j I21



I16:
    li $t0, 20

I17:
    sw $t0, -8($fp)
    j I21



I18:
    li $t0, 25

I19:
    sw $t0, -8($fp)
    j I21



I20:
    li $t0, 30


    sw $t0, -8($fp)

I21:

I22:

I23:
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I24:
    li $v0, 0



I25:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra
    # Exit program
    li $v0, 10
    syscall



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
# END OF RUNTIME LIBRARY
#==============================================================================

