




.data
str_2: .asciiz "%c\n"
str_0: .asciiz "%d\n"
str_1: .asciiz "%f\n"


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
    addiu $sp, $sp, -236
    sw $ra, 232($sp)
    sw $fp, 228($sp)
    addiu $fp, $sp, 228

I5:
    addiu $t0, $fp, -20

I6:
    li $t1, 0
    move $t2, $t0

I7:
    sw $t2, -32($fp)

I8:
    li $t1, 10
    sw $t1, 0($t2)

I9:
    addiu $t1, $fp, -20

I10:
    li $t3, 4
    add $t4, $t1, $t3

I11:

I12:
    # Loading float constant: 97.500000
    li.s $f0, 97.500000
    s.s $f0, 0($t4)

I13:
    sw $t2, -28($fp)
    addiu $t2, $fp, -20

I14:
    li $t3, 16
    add $t5, $t2, $t3

I15:
    sw $t5, -56($fp)

I16:
    li $t3, 122
    sw $t3, 0($t5)

I17:
    addiu $t3, $fp, -20

I18:
    li $t6, 8
    add $t7, $t3, $t6

I19:
    sw $t7, -68($fp)

I20:
    sw $t7, -72($fp)

I21:
    li $t6, 0
    move $t8, $t7

I22:
    sw $t8, -80($fp)

I23:
    li $t6, 5
    sw $t6, 0($t8)

I24:
    sw $t4, -40($fp)
    sw $t4, -44($fp)
    addiu $t4, $fp, -20

I25:
    li $t9, 8
    sw $t0, -24($fp)
    add $t0, $t4, $t9

I26:
    sw $t0, -92($fp)

I27:
    sw $t0, -96($fp)

I28:
    li $t9, 4
    sw $t0, -88($fp)
    sw $t0, -92($fp)
    sw $t0, -96($fp)
    add $t0, $t0, $t9

I29:
    sw $t0, -104($fp)

I30:
    li $t9, 15
    sw $t9, 0($t0)

I31:
    sw $t5, -52($fp)
    addiu $t5, $fp, -20

I32:
    li $t6, 0
    sw $t0, -100($fp)
    sw $t0, -104($fp)
    move $t0, $t5

I33:
    lw $t6, 0($t0)

I34:

I35:

I36:
    sw $t0, -112($fp)
    sw $t1, -36($fp)
    sw $t2, -48($fp)
    sw $t3, -60($fp)
    sw $t4, -84($fp)
    sw $t5, -108($fp)
    sw $t6, -116($fp)
    sw $t7, -64($fp)
    sw $t7, -68($fp)
    sw $t7, -72($fp)
    sw $t8, -76($fp)
    sw $t8, -80($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -116($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I37:
    addiu $t7, $fp, -20

I38:
    li $t1, 4
    add $t2, $t7, $t1

I39:
    lw $t8, 0($t2)

I40:

I41:

I42:
    sw $t0, -116($fp)
    sw $t2, -124($fp)
    sw $t7, -120($fp)
    sw $t8, -128($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    l.s $f1, -128($fp)
    swc1 $f1, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I43:
    addiu $t9, $fp, -20

I44:
    li $t0, 16
    add $t1, $t9, $t0

I45:
    lb $t0, 0($t1)

I46:

I47:

I48:
    sw $t0, -140($fp)
    sw $t1, -136($fp)
    sw $t9, -132($fp)
    swc1 $f1, -128($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -140($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I49:
    addiu $t1, $fp, -20

I50:
    li $t2, 8
    add $t3, $t1, $t2

I51:
    sw $t3, -152($fp)

I52:
    sw $t3, -156($fp)

I53:
    li $t2, 0
    move $t4, $t3

I54:
    lw $t2, 0($t4)

I55:

I56:

I57:
    sw $t0, -140($fp)
    sw $t1, -144($fp)
    sw $t2, -164($fp)
    sw $t3, -148($fp)
    sw $t3, -152($fp)
    sw $t3, -156($fp)
    sw $t4, -160($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -164($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I58:
    addiu $t3, $fp, -20

I59:
    li $t1, 8
    add $t2, $t3, $t1

I60:
    sw $t2, -176($fp)

I61:
    sw $t2, -180($fp)

I62:
    li $t1, 4
    add $t4, $t2, $t1

I63:
    sw $t4, -184($fp)
    lw $t4, 0($t4)

I64:

I65:

I66:
    sw $t0, -164($fp)
    sw $t2, -172($fp)
    sw $t2, -176($fp)
    sw $t2, -180($fp)
    sw $t3, -168($fp)
    sw $t4, -188($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -188($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I67:
    li $v0, 0



I68:
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
# END OF RUNTIME LIBRARY
#==============================================================================

