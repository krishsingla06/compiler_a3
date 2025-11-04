

.data

.text
.globl main

I1:
foo_i_i:
    addiu $sp, $sp, -32
    sw $ra, 28($sp)
    sw $fp, 24($sp)
    addiu $fp, $sp, 24


I2:
    lw $t0, 8($fp)
    bne $t0, $zero, I4

I3:
    j I6

I4:
    li $t1, 0

I5:
    sw $t1, -8($fp)
    j I7

I6:
    li $t2, 1

I7:

I8:
    sw $t2, -8($fp)
    sw $t2, -4($fp)

I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 32
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

I14:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 20
    jr $ra

