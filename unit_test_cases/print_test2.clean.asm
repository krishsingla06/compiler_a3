



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
    li $v0, 0


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
    li $v0, 0


I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I7:
main:
    addiu $sp, $sp, -88
    sw $ra, 84($sp)
    sw $fp, 80($sp)
    addiu $fp, $sp, 80


I8:
    li $t0, 10

I9:
    li $t1, 20

I10:
    add $t2, $t0, $t1

I11:

I12:

I13:
    move $a0, $t2
    li $v0, 1
    syscall

I14:
    li $a0, 10
    li $v0, 11
    syscall

I15:

I16:
    move $a0, $t0
    li $v0, 1
    syscall

I17:
    li $a0, 10
    li $v0, 11
    syscall

I18:

I19:
    move $a0, $t1
    li $v0, 1
    syscall

I20:
    li $a0, 10
    li $v0, 11
    syscall

I21:
    sw $t0, -4($fp)
    sw $t1, -8($fp)
    sw $t2, -12($fp)
    sw $t2, -16($fp)
    move $v0, $t2


I22:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


