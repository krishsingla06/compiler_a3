


.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -28
    sw $ra, 24($sp)
    sw $fp, 20($sp)
    addiu $fp, $sp, 20


I2:
    li $t0, 10

I3:
    sw $t0, -4($fp)
    addiu $t0, $fp, -4

I4:

I5:
    lw $t1, 0($t0)

I6:

I7:
    sw $t0, -16($fp)
    sw $t0, -8($fp)
    sw $t1, -20($fp)
    sw $t1, -12($fp)
    move $v0, $t1


I8:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 28
    jr $ra


