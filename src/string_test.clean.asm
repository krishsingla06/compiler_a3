



.data
str_0: .asciiz "Hello World"
str_1: .asciiz "Testing string literals"

.text
.globl main

I1:
main:
    addiu $sp, $sp, -20
    sw $ra, 16($sp)
    sw $fp, 12($sp)
    addiu $fp, $sp, 12


I2:
    la $t0, str_0

I3:
    la $t1, str_1

I4:
    la $t2, str_0

I5:
    sw $t0, -4($fp)
    sw $t1, -8($fp)
    sw $t2, -12($fp)
    li $v0, 0


I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 20
    jr $ra


