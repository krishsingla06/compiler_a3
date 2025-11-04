

.data

.text
.globl main

I1:
main_i_i:
    addiu $sp, $sp, -36
    sw $ra, 32($sp)
    sw $fp, 28($sp)
    addiu $fp, $sp, 28


I2:
    lw $t0, 8($fp)
    lw $t1, 12($fp)
    blt $t0, $t1, I4

I3:
    j I6

I4:
    li $t2, 1

I5:
    sw $t2, -12($fp)
    j I7

I6:
    li $t3, 0

I7:

I8:
    sw $t3, -12($fp)
    sw $t3, -4($fp)

I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 36
    jr $ra

