




.data
str_0: .asciiz "a before for loop: %d\n"
str_1: .asciiz "b before for loop: %d\n"
str_2: .asciiz "c before for loop: %d\n"


.text
.globl main


I1:
printf_cp1_variadic:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I2:
    li $v0, 0



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
    li $v0, 0



I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I7:
main:
    addiu $sp, $sp, -180
    sw $ra, 176($sp)
    sw $fp, 172($sp)
    addiu $fp, $sp, 172

I8:
    li $t0, 0
    sw $t0, -8($fp)

I9:
    li $t1, 5
    sw $t1, -12($fp)

I10:
    li $t2, 10
    sw $t2, -16($fp)

I11:
    # Loading float constant: 2.500000
    li.s $f0, 2.500000
    swc1 $f0, -20($fp)

I12:
    li $t3, 0
    li $t4, 4
    mul $t5, $t3, $t4

I13:
    addiu $t0, $fp, -40
    sw $t0, -48($fp)

I14:
    add $t3, $t0, $t5

I15:
    sw $t3, -56($fp)

I16:
    li $t4, 1
    sw $t4, 0($t3)

I17:
    li $t1, 1
    li $t2, 4
    mul $t6, $t1, $t2

I18:
    sw $t0, -48($fp)
    addiu $t0, $fp, -40
    sw $t0, -64($fp)

I19:
    add $t1, $t0, $t6

I20:
    sw $t1, -72($fp)

I21:
    li $t2, 2
    sw $t2, 0($t1)

I22:
    li $t7, 2
    li $t8, 4
    mul $t9, $t7, $t8

I23:
    sw $t0, -64($fp)
    addiu $t0, $fp, -40
    sw $t0, -80($fp)

I24:
    add $t7, $t0, $t9

I25:
    sw $t7, -88($fp)

I26:
    li $t8, 3
    sw $t8, 0($t7)

I27:
    li $t2, 3
    li $t4, 4
    sw $t0, -80($fp)
    mul $t0, $t2, $t4

I28:
    sw $t0, -92($fp)
    addiu $t0, $fp, -40
    sw $t0, -96($fp)

I29:
    lw $t2, -92($fp)
    add $t4, $t0, $t2

I30:
    sw $t4, -104($fp)

I31:
    li $t8, 4
    sw $t8, 0($t4)

I32:
    li $t8, 4
    sw $t0, -96($fp)
    li $t0, 4
    sw $t1, -68($fp)
    sw $t1, -72($fp)
    mul $t1, $t8, $t0

I33:
    addiu $t0, $fp, -40
    sw $t0, -112($fp)

I34:
    add $t8, $t0, $t1

I35:
    sw $t8, -120($fp)

I36:
    sw $t0, -112($fp)
    li $t0, 5
    sw $t0, 0($t8)

I37:

I38:

I39:
    sw $t1, -108($fp)
    sw $t2, -92($fp)
    sw $t3, -52($fp)
    sw $t3, -56($fp)
    sw $t4, -100($fp)
    sw $t4, -104($fp)
    sw $t5, -44($fp)
    sw $t6, -60($fp)
    sw $t7, -84($fp)
    sw $t7, -88($fp)
    sw $t8, -116($fp)
    sw $t8, -120($fp)
    sw $t9, -76($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I40:

I41:

I42:
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -12($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I43:

I44:

I45:
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -16($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I46:
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

