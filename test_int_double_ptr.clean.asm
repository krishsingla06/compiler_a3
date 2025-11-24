




.data
str_0: .asciiz "Testing int** parameter\n"
str_1: .asciiz "Value: %d\n"


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
main_i_ip2:
    addiu $sp, $sp, -88
    sw $ra, 84($sp)
    sw $fp, 80($sp)
    addiu $fp, $sp, 80

I5:

I6:
    la $a0, str_0
    jal __lib_printf

I7:
    li $t0, 0
    sw $t0, -4($fp)



I8:
    lw $t0, -4($fp)
    lw $t1, 8($fp)
    blt $t0, $t1, I10



I9:
    j I12



I10:
    li $t0, 1

I11:
    sw $t0, -12($fp)
    j I13



I12:
    li $t0, 0


    sw $t0, -12($fp)

I13:
    lw $t0, -12($fp)
    bne $t0, $zero, I15



I14:
    j I28



I15:
    lw $t0, -4($fp)
    li $t1, 4
    mul $t2, $t0, $t1

I16:
    lw $t1, 12($fp)
    add $t3, $t1, $t2

I17:
    sw $t3, -24($fp)

I18:
    li $t4, 0
    li $t5, 4
    mul $t6, $t4, $t5

I19:
    add $t4, $t3, $t6

I20:
    lw $t0, 0($t4)

I21:
    sw $t0, -8($fp)

I22:

I23:

I24:
    sw $t0, -36($fp)
    sw $t0, -8($fp)
    sw $t1, 12($fp)
    sw $t2, -16($fp)
    sw $t3, -20($fp)
    sw $t3, -24($fp)
    sw $t4, -32($fp)
    sw $t6, -28($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

I25:
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

I26:
    sw $t2, -4($fp)

I27:
    sw $t2, -40($fp)
    sw $t2, -4($fp)
    j I8



I28:
    li $v0, 0



I29:
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
# END OF RUNTIME LIBRARY
#==============================================================================

