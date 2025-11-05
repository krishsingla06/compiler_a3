



.data
str_0: .asciiz "Hello, World!"

.text
.globl main

I1:
main:
    addiu $sp, $sp, -40
    sw $ra, 36($sp)
    sw $fp, 32($sp)
    addiu $fp, $sp, 32


I2:
    la $t0, str_0

I3:
    li $t1, 10

I4:
    li $t2, 20

I5:
    add $t3, $t1, $t2

I6:
    li $t4, 30
    add $t4, $t3, $t4

I7:

I8:
    sw $t0, -16($fp)
    sw $t1, -4($fp)
    sw $t2, -8($fp)
    sw $t3, -20($fp)
    sw $t4, -24($fp)
    sw $t4, -12($fp)
    li $t5, 50
    bgt $t4, $t5, I10


I9:
    j I12


I10:
    li $t0, 1

I11:
    sw $t0, -28($fp)
    j I13


I12:
    li $t0, 0

    sw $t0, -28($fp)

I13:
    lw $t0, -28($fp)
    bne $t0, $zero, I15


I14:
    j I15


I15:
    lw $t0, -12($fp)
    li $t1, 10
    sub $t1, $t0, $t1

I16:

I17:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 40
    jr $ra


