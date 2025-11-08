



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
    addiu $sp, $sp, -80
    sw $ra, 76($sp)
    sw $fp, 72($sp)
    addiu $fp, $sp, 72


I8:
    addiu $t0, $fp, -12

I9:
    sw $t0, -8($fp)

I10:
    lw $t1, -4($fp)
    sw $t1, -20($fp)

I11:
    sw $t0, 0($t1)

I12:
    lw $t2, -8($fp)

I13:
    li $t3, 10
    sw $t3, 0($t2)

I14:

I15:
    lw $t4, -12($fp)
    move $a0, $t4
    li $v0, 1
    syscall

I16:
    li $a0, 10
    li $v0, 11
    syscall

I17:
    lw $t1, -4($fp)
    sw $t2, -24($fp)
    lw $t2, 0($t1)

I18:

I19:
    li $t5, 20
    sw $t5, 0($t2)

I20:

I21:
    lw $t1, -12($fp)
    move $a0, $t1
    li $v0, 1
    syscall

I22:
    li $a0, 10
    li $v0, 11
    syscall

I23:
    sw $t0, -16($fp)
    sw $t1, -12($fp)
    sw $t2, -28($fp)
    sw $t2, -32($fp)
    li $v0, 0


I24:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


