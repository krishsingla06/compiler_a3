



.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -72
    sw $ra, 68($sp)
    sw $fp, 64($sp)
    addiu $fp, $sp, 64


I2:
    addiu $t0, $fp, -40

I3:

I4:

I5:
    li $t1, 10
    sw $t1, 0($t0)

I6:
    lw $t1, 0($t0)

I7:

I8:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


