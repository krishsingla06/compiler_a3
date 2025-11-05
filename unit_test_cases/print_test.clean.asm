



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
main:
    addiu $sp, $sp, -76
    sw $ra, 72($sp)
    sw $fp, 68($sp)
    addiu $fp, $sp, 68


I5:
    li $t0, 10

I6:
    li $t1, 20

I7:
    add $t2, $t0, $t1

I8:

I9:

I10:
    move $a0, $t2
    li $v0, 1
    syscall

I11:

I12:
    move $a0, $t0
    li $v0, 1
    syscall

I13:

I14:
    move $a0, $t1
    li $v0, 1
    syscall

I15:
    sw $t0, -4($fp)
    sw $t1, -8($fp)
    sw $t2, -12($fp)
    sw $t2, -16($fp)
    move $v0, $t2


I16:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


