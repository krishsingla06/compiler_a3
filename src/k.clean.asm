




.data
<<<<<<< HEAD
str_0: .asciiz "Result: %d\n"
=======
str_0: .asciiz "Pointer value: %d\n"
str_2: .asciiz "arr[0] value: %d\n"
str_3: .asciiz "arr[2] value: %d\n"
str_1: .asciiz "x value: %d\n"
>>>>>>> d57e7c7 (Array and pointers fixed)


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
B__funcB:
    addiu $sp, $sp, -40
    sw $ra, 36($sp)
    sw $fp, 32($sp)
    addiu $fp, $sp, 32

I4:
    lw $t0, 8($fp)
    addiu $t0, $t0, 4
    lw $t0, 0($t0)
    move $v0, $t0



I5:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I7:
<<<<<<< HEAD
main:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48

I8:

I9:

I10:
    addiu $sp, $sp, -8
    li $t0, 3
    sw $t0, 0($sp)
    move $a0, $t0
    li $t0, 4
    sw $t0, 4($sp)
    move $a1, $t0
    jal add_i_i
    addiu $sp, $sp, 8
    jr $ra



I12:
main:
    addiu $sp, $sp, -96
    sw $ra, 92($sp)
    sw $fp, 88($sp)
    addiu $fp, $sp, 88

I13:
    addiu $t0, $fp, -8
    sw $t0, -12($fp)

I14:

I15:
    sw $t0, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -12($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    jal B__B
    addiu $sp, $sp, 4
    move $t1, $v0

I16:
    sw $t1, 0($fp)
    addiu $t1, $fp, -8
    sw $t1, -16($fp)

I12:

I13:
=======
print_int_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I8:



I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I10:
print_newline:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40

I11:



I12:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I13:
print_float_f:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44

>>>>>>> d57e7c7 (Array and pointers fixed)

I14:
    sw $t0, -8($fp)
    sw $t0, -4($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -36($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4



I15:
<<<<<<< HEAD
    li $v0, 0
=======
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra
>>>>>>> d57e7c7 (Array and pointers fixed)



I16:
<<<<<<< HEAD
=======
main:
    addiu $sp, $sp, -252
    sw $ra, 248($sp)
    sw $fp, 244($sp)
    addiu $fp, $sp, 244

I17:
    addiu $t0, $fp, -4
    sw $t0, -16($fp)

I18:
    sw $t0, -20($fp)

I19:
    sw $t0, -36($fp)

I20:
    li $t1, 10
    sw $t1, 0($t0)

I21:
    lw $t1, -20($fp)
    lw $t2, 0($t1)

I22:

I23:

I24:
    sw $t0, -16($fp)
    sw $t0, -36($fp)
    sw $t1, -20($fp)
    sw $t2, -40($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -40($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I25:
    lw $t0, -20($fp)
    lw $t1, 0($t0)

I26:
    li $t2, 100
    add $t3, $t1, $t2

I27:
    sw $t3, -4($fp)

I28:

I29:

I30:
    sw $t0, -20($fp)
    sw $t1, -44($fp)
    sw $t3, -48($fp)
    sw $t3, -4($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I31:
    li $t0, 0
    li $t1, 4
    mul $t2, $t0, $t1

I32:
    addiu $t0, $fp, -32
    sw $t0, -56($fp)

I33:
    add $t1, $t0, $t2

I34:
    sw $t1, -64($fp)

I35:
    lw $t3, -4($fp)
    sw $t3, 0($t1)

I36:
    li $t3, 0
    li $t4, 4
    mul $t5, $t3, $t4

I37:
    sw $t0, -56($fp)
    addiu $t0, $fp, -32
    sw $t0, -72($fp)

I38:
    add $t3, $t0, $t5

I39:
    sw $t0, -72($fp)
    lw $t0, 0($t3)

I40:

I41:

I42:
    sw $t0, -80($fp)
    sw $t1, -60($fp)
    sw $t1, -64($fp)
    sw $t2, -52($fp)
    sw $t3, -76($fp)
    sw $t5, -68($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -80($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I43:
    li $t0, 1
    li $t1, 4
    mul $t2, $t0, $t1

I44:
    addiu $t0, $fp, -32
    sw $t0, -88($fp)

I45:
    add $t1, $t0, $t2

I46:
    sw $t1, -96($fp)

I47:
    lw $t3, -4($fp)
    li $t4, 10
    add $t5, $t3, $t4

I48:
    sw $t5, 0($t1)

I49:
    li $t3, 2
    li $t4, 4
    mul $t6, $t3, $t4

I50:
    sw $t0, -88($fp)
    addiu $t0, $fp, -32
    sw $t0, -108($fp)

I51:
    add $t3, $t0, $t6

I52:
    sw $t3, -116($fp)

I53:
    lw $t4, -4($fp)
    li $t7, 20
    add $t8, $t4, $t7

I54:
    sw $t8, 0($t3)

I55:
    li $t4, 2
    li $t7, 4
    mul $t9, $t4, $t7

I56:
    sw $t0, -108($fp)
    addiu $t0, $fp, -32
    sw $t0, -128($fp)

I57:
    add $t4, $t0, $t9

I58:
    sw $t4, -136($fp)

I59:
    li $t7, 0
    sw $t0, -128($fp)
    li $t0, 4
    sw $t1, -92($fp)
    sw $t1, -96($fp)
    mul $t1, $t7, $t0

I60:
    addiu $t0, $fp, -32
    sw $t0, -144($fp)

I61:
    add $t7, $t0, $t1

I62:
    sw $t0, -144($fp)
    lw $t0, 0($t7)

I63:
    sw $t1, -140($fp)
    li $t1, 1
    sw $t2, -84($fp)
    li $t2, 4
    sw $t3, -112($fp)
    sw $t3, -116($fp)
    mul $t3, $t1, $t2

I64:
    addiu $t1, $fp, -32
    sw $t1, -160($fp)

I65:
    add $t2, $t1, $t3

I66:
    sw $t1, -160($fp)
    lw $t1, 0($t2)

I67:
    sw $t2, -164($fp)
    add $t2, $t0, $t1

I68:
    sw $t2, 0($t4)

I69:
    sw $t0, -152($fp)
    li $t0, 2
    sw $t2, -172($fp)
    li $t2, 4
    sw $t3, -156($fp)
    mul $t3, $t0, $t2

I70:
    addiu $t0, $fp, -32
    sw $t0, -180($fp)

I71:
    add $t2, $t0, $t3

I72:
    sw $t0, -180($fp)
    lw $t0, 0($t2)

I73:

I74:

I75:
    sw $t0, -188($fp)
    sw $t1, -168($fp)
    sw $t2, -184($fp)
    sw $t3, -176($fp)
    sw $t4, -132($fp)
    sw $t4, -136($fp)
    sw $t5, -100($fp)
    sw $t6, -104($fp)
    sw $t7, -148($fp)
    sw $t8, -120($fp)
    sw $t9, -124($fp)
    la $a0, str_3
    addiu $sp, $sp, -4
    lw $t0, -188($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I76:
    li $t0, 2
    li $t1, 4
    mul $t2, $t0, $t1

I77:
    addiu $t0, $fp, -32
    sw $t0, -196($fp)

I78:
    add $t1, $t0, $t2

I79:
    sw $t0, -196($fp)
    lw $t0, 0($t1)

I80:
    sw $t0, -204($fp)
    sw $t1, -200($fp)
    sw $t2, -192($fp)
    move $v0, $t0



I81:
>>>>>>> d57e7c7 (Array and pointers fixed)
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

