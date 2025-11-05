


.data

.text
.globl main

I1:
add_i_i:
    addiu $sp, $sp, -24
    sw $ra, 20($sp)
    sw $fp, 16($sp)
    addiu $fp, $sp, 16




I2:
    lw $t0, 8($fp)
    lw $t1, 12($fp)
    add $t2, $t0, $t1

    sw $t2, -8($fp)

I3:
    lw $t0, -8($fp)

    sw $t0, -8($fp)
    sw $t0, -4($fp)

I4:
    lw $t0, -4($fp)
    move $v0, $t0


I5:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 24
    jr $ra


I6:
multiply_i_i_i_i_i:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40




I7:
    lw $t0, 8($fp)
    lw $t1, 12($fp)
    mul $t2, $t0, $t1

    sw $t2, -8($fp)

I8:
    lw $t0, 16($fp)
    lw $t1, 20($fp)
    mul $t2, $t0, $t1

    sw $t2, -12($fp)

I9:
    lw $t0, -8($fp)
    lw $t1, -12($fp)
    add $t2, $t0, $t1

    sw $t2, -16($fp)

I10:
    lw $t0, -16($fp)
    lw $t1, 24($fp)
    add $t2, $t0, $t1

    sw $t2, -20($fp)

I11:
    lw $t0, -20($fp)

    sw $t0, -20($fp)
    sw $t0, -4($fp)

I12:
    lw $t0, -4($fp)
    move $v0, $t0


I13:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 48
    jr $ra


I14:
main:
    addiu $sp, $sp, -28
    sw $ra, 24($sp)
    sw $fp, 20($sp)
    addiu $fp, $sp, 20



I15:


I16:


I17:
    addiu $sp, $sp, -16
    li $t0, 10
    sw $t0, 8($sp)
    move $a0, $t0
    li $t0, 5
    sw $t0, 12($sp)
    move $a1, $t0
    jal add_i_i
    addiu $sp, $sp, 16
    move $t0, $v0

    sw $t0, -12($fp)

I18:
    lw $t0, -12($fp)

    sw $t0, -12($fp)
    sw $t0, -4($fp)

I19:


I20:


I21:


I22:


I23:


I24:
    addiu $sp, $sp, -28
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
    addiu $sp, $sp, 28
    move $t0, $v0

    sw $t0, -16($fp)

I25:
    lw $t0, -16($fp)

    sw $t0, -16($fp)
    sw $t0, -8($fp)

I26:
    lw $t0, -4($fp)
    lw $t1, -8($fp)
    add $t2, $t0, $t1

    sw $t2, -20($fp)

I27:
    lw $t0, -20($fp)
    move $v0, $t0


I28:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 28
    jr $ra


