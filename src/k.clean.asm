



.data

.text
.globl main

I1:
print_int_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44



I2:


I3:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I4:
print_newline:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40


I5:


I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I7:
main:
    addiu $sp, $sp, -68
    sw $ra, 64($sp)
    sw $fp, 60($sp)
    addiu $fp, $sp, 60


I8:
    li $t0, 3

I9:
    li $t1, 1

I10:
    li $t2, 2

I11:
    sw $t0, -8($fp)
    sw $t1, -12($fp)
    sw $t2, -16($fp)
    blt $t0, $t1, I21


I12:
    lw $t0, -8($fp)
    lw $t1, -16($fp)
    bgt $t0, $t1, I21


I13:
    lw $t0, -8($fp)
    lw $t1, -12($fp)
    sub $t2, $t0, $t1

I14:
    sw $t2, -20($fp)
    li $t3, 0
    beq $t2, $t3, I15
    li $t3, 1
    beq $t2, $t3, I18

I15:

I16:
    li $a0, 10
    li $v0, 1
    syscall

I17:
    j I23


I18:

I19:
    li $a0, 20
    li $v0, 1
    syscall

I20:
    j I23


I21:

I22:
    li $a0, 30
    li $v0, 1
    syscall


I23:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


