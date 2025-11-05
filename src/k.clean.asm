


.data

.text
.globl main

I1:
foo_i_i:
    addiu $sp, $sp, -24
    sw $ra, 20($sp)
    sw $fp, 16($sp)
    addiu $fp, $sp, 16



I2:
    bne $a0, $zero, I4


I3:
    j I6


I4:
    li $t0, 0

I5:
    sw $t0, -8($fp)
    j I7


I6:
    li $t0, 1

    sw $t0, -8($fp)

I7:
    lw $t0, -8($fp)

I8:
    sw $t0, -8($fp)
    sw $t0, -4($fp)
    li $v0, 0


I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 24
    jr $ra


I10:
main:
    addiu $sp, $sp, -20
    sw $ra, 16($sp)
    sw $fp, 12($sp)
    addiu $fp, $sp, 12


I11:

I12:

I13:
    addiu $sp, $sp, -8
    lw $t0, -8($fp)
    sw $t0, 8($sp)
    move $a0, $t0
    lw $t1, -4($fp)
    sw $t1, 12($sp)
    move $a1, $t1
    jal foo_i_i
    addiu $sp, $sp, 8
    move $t2, $v0

I14:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 20
    jr $ra


