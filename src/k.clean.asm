



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
    addiu $sp, $sp, -64
    sw $ra, 60($sp)
    sw $fp, 56($sp)
    addiu $fp, $sp, 56


I11:
    addiu $t0, $fp, -8

I12:
    sw $t0, -4($fp)

I13:

I14:
    # Loading float constant: 1.100000
    li.s $f0, 1.100000
    s.s $f0, 0($t0)

I15:

I16:
    l.s $f1, -8($fp)
    mov.s $f12, $f1
    li $v0, 2
    syscall

I17:
    li $a0, 10
    li $v0, 11
    syscall

I18:
    sw $t0, -12($fp)
    sw $t0, -16($fp)
    sw $t0, -4($fp)
    li $v0, 0


I19:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


