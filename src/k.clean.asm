




.data
str_0: .asciiz "Result1: %d, Result2: %d\n"


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
    nop



I4:
add_i_i:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52


I5:
    add $t0, $a0, $a1

I6:
    sw $t0, -4($fp)
    move $v0, $t0



I7:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra
    nop



I8:
subtract_i_i:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52


I9:
    sub $t0, $a0, $a1

I10:
    sw $t0, -4($fp)
    move $v0, $t0



I11:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra
    nop



I12:
apply_operation_fp_ri_pii_i_i:
    addiu $sp, $sp, -68
    sw $ra, 64($sp)
    sw $fp, 60($sp)
    addiu $fp, $sp, 60


I13:

I14:

I15:
    lw $t0, 8($fp)

I16:
    sw $t0, -4($fp)
    sw $t0, 8($fp)
    addiu $sp, $sp, -8
    lw $t0, 12($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    lw $t1, 16($fp)
    sw $t1, 4($sp)
    move $a1, $t1
    lw $t2, -4($fp)
    jalr $ra, $t2
    nop
    addiu $sp, $sp, 8
    move $t3, $v0

I17:
    sw $t3, -8($fp)
    move $v0, $t3



I18:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra
    nop



I19:
main:
    addiu $sp, $sp, -72
    sw $ra, 68($sp)
    sw $fp, 64($sp)
    addiu $fp, $sp, 64

I20:
    la $t0, add_i_i
    sw $t0, -4($fp)

I21:

I22:

I23:

I24:
    sw $t0, -4($fp)
    addiu $sp, $sp, -12
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    li $t1, 5
    sw $t1, 4($sp)
    move $a1, $t1
    li $t1, 3
    sw $t1, 8($sp)
    move $a2, $t1
    jal apply_operation_fp_ri_pii_i_i
    jal apply_operation_fp_ri_pii_i_i
    nop
    addiu $sp, $sp, 12
    move $t1, $v0

I25:
    sw $t1, -12($fp)

I26:
    sw $t1, -8($fp)
    sw $t1, -12($fp)
    la $t1, subtract_i_i
    sw $t1, -16($fp)

I27:

I28:

I29:

I30:
    sw $t1, -16($fp)
    addiu $sp, $sp, -12
    lw $t0, -16($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    li $t1, 10
    sw $t1, 4($sp)
    move $a1, $t1
    li $t1, 4
    sw $t1, 8($sp)
    move $a2, $t1
    jal apply_operation_fp_ri_pii_i_i
    jal apply_operation_fp_ri_pii_i_i
    nop
    addiu $sp, $sp, 12
    move $t1, $v0

I31:
    sw $t1, -24($fp)

I32:

I33:

I34:

I35:
    sw $t1, -20($fp)
    sw $t1, -24($fp)
    la $a0, str_0
    addiu $sp, $sp, -8
    lw $t0, -12($fp)
    sw $t0, 0($sp)
    lw $t1, -24($fp)
    sw $t1, 4($sp)
    jal __lib_printf
    addiu $sp, $sp, 8

I36:
    li $v0, 0



I37:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra
    # Exit program
    li $v0, 10
    syscall
    nop



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

