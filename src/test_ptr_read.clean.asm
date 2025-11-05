


.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I2:
    li $t0, 100

I3:
    li $t1, 200

I4:
    sw $t0, -4($fp)
    addiu $t0, $fp, -4

I5:

I6:
    sw $t1, -8($fp)
    addiu $t1, $fp, -8

I7:

I8:
    lw $t2, 0($t0)

I9:

I10:
    lw $t3, 0($t1)

I11:

I12:
    add $t4, $t2, $t3

I13:
    sw $t0, -28($fp)
    sw $t0, -12($fp)
    sw $t1, -32($fp)
    sw $t1, -16($fp)
    sw $t2, -36($fp)
    sw $t2, -20($fp)
    sw $t3, -40($fp)
    sw $t3, -24($fp)
    sw $t4, -44($fp)
    move $v0, $t4


I14:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 52
    jr $ra


