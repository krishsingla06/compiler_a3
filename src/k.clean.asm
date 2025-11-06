



.data

.text
.globl main

I1:
print_float_f:
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
print_int_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44



I5:


I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I7:
print_newline:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40


I8:


I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I10:
main:
    addiu $sp, $sp, -72
    sw $ra, 68($sp)
    sw $fp, 64($sp)
    addiu $fp, $sp, 64


I11:
    # Loading float constant: 1.990000
    li.s $f0, 1.990000

I12:
    # Loading float constant: 2.700000
    li.s $f1, 2.700000

I13:
    li $t0, 3

I16:

I17:
    lw $t1, -24($fp)
    move $a0, $t1
    li $v0, 1
    syscall

I18:
    li $a0, 10
    li $v0, 11
    syscall

I19:

I20:
    move $a0, $t0
    li $v0, 1
    syscall

I21:
    li $a0, 10
    li $v0, 11
    syscall

I22:
    s.s $f0, -4($fp)
    s.s $f1, -8($fp)
    sw $t0, -12($fp)
    # Loading float constant: 0.000000
    li.s $f0, 0.000000


I23:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


