




.data
str_2: .asciiz "After:  global_val = %d\n"
str_1: .asciiz "Before: global_val = %d\n"
str_0: .asciiz "Initial value of global_val: %d\n"

v_another_global_s1: .word 0  # int (global/static) at 0($gp)
v_global_val_s1: .word 0  # int (global/static) at 4($gp)

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
set_globals:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40

I5:
    li $t0, 42
    sw $t0, 4($gp)

I6:
    li $t1, 99
    sw $t1, 0($gp)

I7:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I8:
store_global_through_pointer:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52

I9:
    addiu $t0, $gp, 4

I10:
    sw $t0, -8($fp)

I11:
    sw $t0, -12($fp)

I12:
    lw $t1, 0($gp)
    sw $t1, 0($t0)

I13:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I14:
main:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40

I15:

I16:

I17:
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, 4($gp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I18:
    sw $t0, 4($gp)
    jal set_globals
    move $t0, $v0

I19:

I20:

I21:
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, 4($gp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I22:
    sw $t0, 4($gp)
    jal store_global_through_pointer
    move $t0, $v0

I23:

I24:

I25:
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, 4($gp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I26:
    li $v0, 0



I27:
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

