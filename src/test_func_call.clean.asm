

.data

.text
.globl main

I1:
add_i_i:
    addiu $sp, $sp, -32
    sw $ra, 28($sp)
    sw $fp, 24($sp)
    addiu $fp, $sp, 24


I2:
    lw $t0, 8($fp)
    lw $t1, 12($fp)
    add $t2, $t0, $t1

I3:

I4:
    sw $t2, -8($fp)
    sw $t2, -4($fp)
    move $v0, $t2

I5:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 32
    jr $ra

I6:
multiply_i_i_i_i_i:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48


I7:
    lw $t3, 8($fp)
    lw $t4, 12($fp)
    mul $t5, $t3, $t4

I8:
    lw $t6, 16($fp)
    lw $t7, 20($fp)
    mul $t8, $t6, $t7

I9:
    add $t9, $t5, $t8

I10:
    lw $t0, 24($fp)
    add $t1, $t9, $t0

I11:

I12:
    sw $t1, -20($fp)
    sw $t1, -4($fp)
    sw $t5, -8($fp)
    sw $t8, -12($fp)
    sw $t9, -16($fp)
    move $v0, $t1

I13:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 56
    jr $ra

I14:
main:
    addiu $sp, $sp, -36
    sw $ra, 32($sp)
    sw $fp, 28($sp)
    addiu $fp, $sp, 28


I15:

I16:

I17:
    li $t0, 10
    sw $t0, 8($sp)
    move $a0, $t0
    li $t0, 5
    sw $t0, 12($sp)
    move $a1, $t0
    jal add_i_i
    move $t0, $v0

I18:

I19:

I20:

I21:

I22:

I23:

I24:
    sw $t0, -12($fp)
    sw $t0, -4($fp)
    li $t0, 6
    sw $t0, 8($sp)
    move $a0, $t0
    li $t0, 5
    sw $t0, 12($sp)
    move $a1, $t0
    li $t0, 4
    sw $t0, 16($sp)
    move $a2, $t0
    li $t0, 3
    sw $t0, 20($sp)
    move $a3, $t0
    li $t0, 2
    sw $t0, 24($sp)
    jal multiply_i_i_i_i_i
    move $t0, $v0

I25:

I26:
    lw $t1, -4($fp)
    add $t2, $t1, $t0

I27:
    sw $t0, -16($fp)
    sw $t0, -8($fp)
    sw $t2, -20($fp)
    move $v0, $t2

I28:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 36
    jr $ra

