



.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -36
    sw $ra, 32($sp)
    sw $fp, 28($sp)
    addiu $fp, $sp, 28


I2:
    li $t0, 10

I3:
    li $t1, 20

I4:
    add $t2, $t0, $t1

I5:
    li $t3, 30
    add $t3, $t2, $t3

I6:

I7:
    sw $t0, -4($fp)
    sw $t1, -8($fp)
    sw $t2, -16($fp)
    sw $t3, -20($fp)
    sw $t3, -12($fp)
    li $t4, 50
    bgt $t3, $t4, I9


I8:
    j I11


I9:
    li $t0, 1

I10:
    sw $t0, -24($fp)
    j I12


I11:
    li $t0, 0

    sw $t0, -24($fp)

I12:
    lw $t0, -24($fp)
    bne $t0, $zero, I14


I13:
    j I16


I14:
    lw $t0, -12($fp)
    li $t1, 10
    sub $t1, $t0, $t1

I15:

    sw $t1, -28($fp)
    sw $t1, -12($fp)

I16:
    lw $t0, -12($fp)
    move $v0, $t0


I17:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 36
    jr $ra


