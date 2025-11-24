




.data
str_2: .asciiz "Arg[%d]: %s\n"
str_3: .asciiz "First arg: %s\n"
str_1: .asciiz "Program: %s\n"
str_4: .asciiz "Second arg: %s\n"
str_0: .asciiz "Total arguments: %d\n"


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
main_i_cp2:
    addiu $sp, $sp, -120
    sw $ra, 116($sp)
    sw $fp, 112($sp)
    addiu $fp, $sp, 112

I5:

I6:

I7:
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, 8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I8:
    lw $t0, 8($fp)
    li $t1, 0
    bgt $t0, $t1, I10



I9:
    j I12



I10:
    li $t0, 1

I11:
    sw $t0, -8($fp)
    j I13



I12:
    li $t0, 0


    sw $t0, -8($fp)

I13:
    lw $t0, -8($fp)
    bne $t0, $zero, I15



I14:
    j I21



I15:
    li $t0, 0
    li $t1, 4
    mul $t2, $t0, $t1

I16:
    lw $t0, 12($fp)
    add $t1, $t0, $t2

I17:
    sw $t0, 12($fp)
    lw $t0, 0($t1)

I18:

I19:

I20:
    sw $t0, -20($fp)
    sw $t1, -16($fp)
    sw $t2, -12($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -20($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4



I21:
    li $t0, 1
    sw $t0, -4($fp)



I22:
    lw $t0, -4($fp)
    lw $t1, 8($fp)
    blt $t0, $t1, I24



I23:
    j I26



I24:
    li $t0, 1

I25:
    sw $t0, -24($fp)
    j I27



I26:
    li $t0, 0


    sw $t0, -24($fp)

I27:
    lw $t0, -24($fp)
    bne $t0, $zero, I29



I28:
    j I39



I29:
    lw $t0, -4($fp)
    li $t1, 4
    mul $t2, $t0, $t1

I30:
    lw $t1, 12($fp)
    add $t3, $t1, $t2

I31:
    lw $t0, 0($t3)

I32:

I33:

I34:

I35:
    sw $t0, -36($fp)
    sw $t1, 12($fp)
    sw $t2, -28($fp)
    sw $t3, -32($fp)
    la $a0, str_2
    addiu $sp, $sp, -8
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    lw $t1, -36($fp)
    sw $t1, 4($sp)
    jal __lib_printf
    addiu $sp, $sp, 8

I36:
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

I37:
    sw $t2, -4($fp)

I38:
    sw $t2, -40($fp)
    sw $t2, -4($fp)
    j I22



I39:
    lw $t0, 8($fp)
    li $t1, 1
    bgt $t0, $t1, I41



I40:
    j I43



I41:
    li $t0, 1

I42:
    sw $t0, -44($fp)
    j I44



I43:
    li $t0, 0


    sw $t0, -44($fp)

I44:
    lw $t0, -44($fp)
    bne $t0, $zero, I46



I45:
    j I52



I46:
    li $t0, 1
    li $t1, 4
    mul $t2, $t0, $t1

I47:
    lw $t0, 12($fp)
    add $t1, $t0, $t2

I48:
    lw $t0, 0($t1)

I49:

I50:

I51:
    sw $t0, -56($fp)
    sw $t1, -52($fp)
    sw $t2, -48($fp)
    la $a0, str_3
    addiu $sp, $sp, -4
    lw $t0, -56($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4



I52:
    lw $t0, 8($fp)
    li $t1, 2
    bgt $t0, $t1, I54



I53:
    j I56



I54:
    li $t0, 1

I55:
    sw $t0, -60($fp)
    j I57



I56:
    li $t0, 0


    sw $t0, -60($fp)

I57:
    lw $t0, -60($fp)
    bne $t0, $zero, I59



I58:
    j I65



I59:
    li $t0, 2
    li $t1, 4
    mul $t2, $t0, $t1

I60:
    lw $t0, 12($fp)
    add $t1, $t0, $t2

I61:
    lw $t0, 0($t1)

I62:

I63:

I64:
    sw $t0, -72($fp)
    sw $t1, -68($fp)
    sw $t2, -64($fp)
    la $a0, str_4
    addiu $sp, $sp, -4
    lw $t0, -72($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4



I65:
    lw $t0, 8($fp)
    move $v0, $t0



I66:
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
# END OF RUNTIME LIBRARY
#==============================================================================

