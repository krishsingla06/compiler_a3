




.data
str_2: .asciiz "%c\n"
str_0: .asciiz "%d\n"
str_1: .asciiz "%f\n"
str_3: .asciiz "-----------------------\n"


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
    addiu $sp, $sp, -372
    sw $ra, 368($sp)
    sw $fp, 364($sp)
    addiu $fp, $sp, 364

I5:
    addiu $t0, $fp, -20

I6:
    sw $t0, -24($fp)

I7:
    addiu $t1, $fp, -20

I8:
    li $t2, 0
    move $t3, $t1

I9:
    sw $t3, -40($fp)

I10:
    li $t2, 10
    sw $t2, 0($t3)

I11:
    addiu $t2, $fp, -20

I12:
    li $t4, 4
    add $t5, $t2, $t4

I13:

I14:
    # Loading float constant: 97.500000
    li.s $f0, 97.500000
    s.s $f0, 0($t5)

I15:
    sw $t3, -36($fp)
    addiu $t3, $fp, -20

I16:
    li $t4, 16
    add $t6, $t3, $t4

I17:
    sw $t6, -64($fp)

I18:
    li $t4, 122
    sw $t4, 0($t6)

I19:
    addiu $t4, $fp, -20

I20:
    li $t7, 8
    add $t8, $t4, $t7

I21:
    sw $t8, -76($fp)

I22:
    sw $t8, -80($fp)

I23:
    li $t7, 0
    move $t9, $t8

I24:
    sw $t9, -88($fp)

I25:
    li $t7, 5
    sw $t7, 0($t9)

I26:
    sw $t5, -48($fp)
    sw $t5, -52($fp)
    addiu $t5, $fp, -20

I27:
    li $t7, 8
    sw $t0, -28($fp)
    add $t0, $t5, $t7

I28:
    sw $t0, -100($fp)

I29:
    sw $t0, -104($fp)

I30:
    li $t7, 4
    sw $t0, -96($fp)
    sw $t0, -100($fp)
    sw $t0, -104($fp)
    add $t0, $t0, $t7

I31:
    sw $t0, -112($fp)

I32:
    li $t7, 15
    sw $t7, 0($t0)

I33:
    sw $t6, -60($fp)
    addiu $t6, $fp, -20

I34:
    li $t7, 0
    sw $t0, -108($fp)
    sw $t0, -112($fp)
    move $t0, $t6

I35:
    lw $t7, 0($t0)

I36:

I37:

I38:
    sw $t0, -120($fp)
    sw $t1, -32($fp)
    sw $t2, -44($fp)
    sw $t3, -56($fp)
    sw $t4, -68($fp)
    sw $t5, -92($fp)
    sw $t6, -116($fp)
    sw $t7, -124($fp)
    sw $t8, -72($fp)
    sw $t8, -76($fp)
    sw $t8, -80($fp)
    sw $t9, -84($fp)
    sw $t9, -88($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -124($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I39:
    addiu $t8, $fp, -20

I40:
    li $t1, 4
    add $t2, $t8, $t1

I41:
    lw $t9, 0($t2)

I42:

I43:

I44:
    sw $t0, -124($fp)
    sw $t2, -132($fp)
    sw $t8, -128($fp)
    sw $t9, -136($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    l.s $f1, -136($fp)
    swc1 $f1, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I45:
    addiu $t0, $fp, -20

I46:
    li $t1, 16
    add $t2, $t0, $t1

I47:
    lb $t1, 0($t2)

I48:

I49:

I50:
    sw $t0, -140($fp)
    sw $t1, -148($fp)
    sw $t2, -144($fp)
    swc1 $f1, -136($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -148($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I51:
    addiu $t2, $fp, -20

I52:
    li $t1, 8
    add $t3, $t2, $t1

I53:
    sw $t3, -160($fp)

I54:
    sw $t3, -164($fp)

I55:
    li $t1, 0
    move $t4, $t3

I56:
    sw $t3, -156($fp)
    lw $t3, 0($t4)

I57:

I58:

I59:
    sw $t0, -148($fp)
    sw $t2, -152($fp)
    sw $t3, -172($fp)
    sw $t4, -168($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -172($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I60:
    addiu $t4, $fp, -20

I61:
    li $t1, 8
    add $t2, $t4, $t1

I62:
    sw $t2, -184($fp)

I63:
    sw $t2, -188($fp)

I64:
    li $t1, 4
    add $t3, $t2, $t1

I65:
    lw $t5, 0($t3)

I66:

I67:

I68:
    sw $t0, -172($fp)
    sw $t2, -180($fp)
    sw $t2, -184($fp)
    sw $t2, -188($fp)
    sw $t3, -192($fp)
    sw $t4, -176($fp)
    sw $t5, -196($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -196($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I69:

I70:
    sw $t0, -196($fp)
    la $a0, str_3
    jal __lib_printf

I71:
    lw $t0, -24($fp)
    li $t1, 0
    move $t2, $t0

I72:
    sw $t2, -204($fp)

I73:
    li $t1, 20
    sw $t1, 0($t2)

I74:
    lw $t0, -24($fp)
    li $t3, 4
    add $t4, $t0, $t3

I75:

I76:
    # Loading float constant: 88.500000
    li.s $f2, 88.500000
    s.s $f2, 0($t4)

I77:
    lw $t0, -24($fp)
    li $t3, 16
    add $t5, $t0, $t3

I78:
    sw $t5, -220($fp)

I79:
    li $t3, 121
    sw $t3, 0($t5)

I80:
    lw $t0, -24($fp)
    li $t6, 8
    add $t7, $t0, $t6

I81:
    sw $t7, -228($fp)

I82:
    sw $t7, -232($fp)

I83:
    li $t6, 0
    move $t8, $t7

I84:
    sw $t8, -240($fp)

I85:
    li $t6, 50
    sw $t6, 0($t8)

I86:
    lw $t0, -24($fp)
    li $t9, 8
    add $t1, $t0, $t9

I87:
    sw $t1, -248($fp)

I88:
    sw $t1, -252($fp)

I89:
    li $t9, 4
    add $t0, $t1, $t9

I90:
    sw $t0, -260($fp)

I91:
    li $t9, 150
    sw $t9, 0($t0)

I92:
    sw $t0, -256($fp)
    sw $t0, -260($fp)
    lw $t0, -24($fp)
    li $t3, 0
    sw $t1, -244($fp)
    sw $t1, -248($fp)
    sw $t1, -252($fp)
    move $t1, $t0

I93:
    lw $t6, 0($t1)

I94:

I95:

I96:
    sw $t0, -24($fp)
    sw $t1, -264($fp)
    sw $t2, -200($fp)
    sw $t2, -204($fp)
    sw $t4, -208($fp)
    sw $t4, -212($fp)
    sw $t5, -216($fp)
    sw $t5, -220($fp)
    sw $t6, -268($fp)
    sw $t7, -224($fp)
    sw $t7, -228($fp)
    sw $t7, -232($fp)
    sw $t8, -236($fp)
    sw $t8, -240($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -268($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I97:
    lw $t1, -24($fp)
    li $t2, 4
    add $t3, $t1, $t2

I98:
    lw $t7, 0($t3)

I99:

I100:

I101:
    sw $t0, -268($fp)
    sw $t1, -24($fp)
    sw $t3, -272($fp)
    sw $t7, -276($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    l.s $f3, -276($fp)
    swc1 $f3, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I102:
    lw $t0, -24($fp)
    li $t1, 16
    add $t2, $t0, $t1

I103:
    lb $t8, 0($t2)

I104:

I105:

I106:
    sw $t0, -24($fp)
    sw $t2, -280($fp)
    sw $t8, -284($fp)
    swc1 $f3, -276($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -284($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I107:
    lw $t1, -24($fp)
    li $t2, 8
    add $t3, $t1, $t2

I108:
    sw $t3, -292($fp)

I109:
    sw $t3, -296($fp)

I110:
    li $t2, 0
    move $t4, $t3

I111:
    lw $t9, 0($t4)

I112:

I113:

I114:
    sw $t0, -284($fp)
    sw $t1, -24($fp)
    sw $t3, -288($fp)
    sw $t3, -292($fp)
    sw $t3, -296($fp)
    sw $t4, -300($fp)
    sw $t9, -304($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -304($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I115:
    lw $t1, -24($fp)
    li $t2, 8
    add $t3, $t1, $t2

I116:
    sw $t3, -312($fp)

I117:
    sw $t3, -316($fp)

I118:
    li $t2, 4
    add $t4, $t3, $t2

I119:
    lw $t0, 0($t4)

I120:

I121:

I122:
    sw $t0, -324($fp)
    sw $t1, -24($fp)
    sw $t3, -308($fp)
    sw $t3, -312($fp)
    sw $t3, -316($fp)
    sw $t4, -320($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -324($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I123:
    li $v0, 0



I124:
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

