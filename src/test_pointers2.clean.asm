


.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40


I2:
    li $t0, 5

I3:
    li $t1, 10

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
    li $t3, 20

I10:
    sw $t3, -28($fp)
    lw $t3, 0($t1)

I11:
    lw $t4, 0($t0)

I12:
    sw $t3, -32($fp)

I13:
    lw $t2, -4($fp)
    lw $t3, -8($fp)
    add $t5, $t2, $t3

I14:
    sw $t0, -20($fp)
    sw $t0, -12($fp)
    sw $t1, -24($fp)
    sw $t1, -16($fp)
    sw $t2, -4($fp)
    sw $t3, -8($fp)
    sw $t4, -32($fp)
    sw $t4, -36($fp)
    sw $t5, -40($fp)
    move $v0, $t5


I15:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 48
    jr $ra


