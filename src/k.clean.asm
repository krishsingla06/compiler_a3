




.data
str_0: .asciiz "f: %f, c: %c, i: %d\n"
str_1: .asciiz "pf: %f, pc: %c, pi: %d\n"


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
scanf_cp1_variadic:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I5:



I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I7:
main:
    addiu $sp, $sp, -108
    sw $ra, 104($sp)
    sw $fp, 100($sp)
    addiu $fp, $sp, 100

I8:
    # Loading float constant: 5.500000
    li.s $f0, 5.500000
    swc1 $f0, -4($fp)

I9:
    addiu $t0, $fp, -4
    sw $t0, -8($fp)

I10:
    li $t1, 65
    sw $t1, -12($fp)

I11:
    addiu $t1, $fp, -12
    sw $t1, -16($fp)

I12:
    li $t2, 10
    sw $t2, -20($fp)

I13:
    addiu $t2, $fp, -20
    sw $t2, -24($fp)

I14:

I15:

I16:

I17:

I18:
    sw $t0, -8($fp)
    sw $t1, -16($fp)
    sw $t2, -24($fp)
    swc1 $f0, -4($fp)
    la $a0, str_0
    addiu $sp, $sp, -12
    l.s $f1, -4($fp)
    swc1 $f1, 0($sp)
    lw $t0, -12($fp)
    sw $t0, 4($sp)
    lw $t1, -20($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

I19:
    lw $t0, -8($fp)

I20:
    l.s $f0, 0($t0)

I21:
    # Loading float constant: 2.500000
    li.s $f1, 2.500000
    add.s $f2, $f0, $f1

I22:
    s.s $f2, 0($t0)

I23:
    lw $t1, -24($fp)

I24:
    sw $t0, -28($fp)
    lw $t0, 0($t1)

I25:
    li $t2, 20
    add $t3, $t0, $t2

I26:
    sw $t3, 0($t1)

I27:
    sw $t0, -44($fp)
    lw $t0, -8($fp)
    l.s $f3, 0($t0)

I28:
    sw $t1, -40($fp)
    lw $t1, -16($fp)
    lb $t2, 0($t1)

I29:
    sw $t3, -48($fp)
    lw $t3, -24($fp)
    lw $t4, 0($t3)

I30:

I31:

I32:

I33:

I34:
    sw $t0, -8($fp)
    sw $t1, -16($fp)
    sw $t2, -56($fp)
    sw $t3, -24($fp)
    sw $t4, -60($fp)
    swc1 $f0, -32($fp)
    swc1 $f2, -36($fp)
    swc1 $f3, -52($fp)
    la $a0, str_1
    addiu $sp, $sp, -12
    l.s $f4, -52($fp)
    swc1 $f4, 0($sp)
    lw $t0, -56($fp)
    sw $t0, 4($sp)
    lw $t1, -60($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

I35:
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

