




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
foo_up1:
    addiu $sp, $sp, -104
    sw $ra, 100($sp)
    sw $fp, 96($sp)
    addiu $fp, $sp, 96



I11:
    li $t0, 0
    add $t1, $a0, $t0

I12:
    lw $t0, 0($t1)

I13:

I14:
    sw $t0, -8($fp)
    sw $t1, -4($fp)
    sw $a0, 8($fp)
    lw $t0, -8($fp)
    move $a0, $t0
    li $v0, 1
    syscall

I15:
    sw $t0, -8($fp)
    li $a0, 10
    li $v0, 11
    syscall

I16:
    lw $t0, 8($fp)
    li $t1, 4
    add $t2, $t0, $t1

I17:
    lw $t1, 0($t2)

I18:

I19:
    sw $t0, 8($fp)
    sw $t1, -16($fp)
    sw $t2, -12($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    li $v0, 1
    syscall

I20:
    sw $t0, -16($fp)
    li $a0, 10
    li $v0, 11
    syscall

I21:
    lw $t0, 8($fp)
    li $t1, 0
    add $t2, $t0, $t1

I22:
    sw $t2, -24($fp)

I23:
    li $t3, 0
    add $t4, $t0, $t3

I24:
    sw $t2, -20($fp)
    lw $t2, 0($t4)

I25:
    li $t5, 4
    add $t6, $t0, $t5

I26:
    lw $t3, 0($t6)

I27:
    add $t7, $t2, $t3

I28:
    lw $t8, -24($fp)
    sw $t7, 0($t8)

I29:
    lw $t0, 8($fp)
    li $t9, 0
    sw $t4, -28($fp)
    add $t4, $t0, $t9

I30:
    lw $t5, 0($t4)

I31:

I32:
    sw $t0, 8($fp)
    sw $t2, -32($fp)
    sw $t3, -40($fp)
    sw $t4, -48($fp)
    sw $t5, -52($fp)
    sw $t6, -36($fp)
    sw $t7, -44($fp)
    sw $t8, -24($fp)
    lw $t0, -52($fp)
    move $a0, $t0
    li $v0, 1
    syscall

I33:
    sw $t0, -52($fp)
    li $a0, 10
    li $v0, 11
    syscall

I34:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I35:
main:
    addiu $sp, $sp, -96
    sw $ra, 92($sp)
    sw $fp, 88($sp)
    addiu $fp, $sp, 88


I36:
    addiu $t0, $fp, -8

I37:
    li $t1, 0
    add $t2, $t0, $t1

I38:
    sw $t2, -20($fp)

I39:
    li $t3, 10
    sw $t3, 0($t2)

I40:
    addiu $t1, $fp, -8

I41:
    li $t4, 4
    add $t5, $t1, $t4

I42:
    sw $t5, -32($fp)

I43:
    li $t6, 20
    sw $t6, 0($t5)

I44:
    sw $t2, -16($fp)
    addiu $t2, $fp, -8

I45:

I46:
    sw $t0, -12($fp)
    sw $t1, -24($fp)
    sw $t2, -36($fp)
    sw $t5, -28($fp)
    sw $t5, -32($fp)
    addiu $sp, $sp, -4
    lw $t0, -36($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    jal foo_up1
    addiu $sp, $sp, 4
    move $t1, $v0

I47:
    addiu $t3, $fp, -8

I48:
    li $t0, 0
    add $t2, $t3, $t0

I49:
    lw $t4, 0($t2)

I50:

I51:
    sw $t1, -36($fp)
    sw $t2, -44($fp)
    sw $t3, -40($fp)
    sw $t4, -48($fp)
    lw $t0, -48($fp)
    move $a0, $t0
    li $v0, 1
    syscall

I52:
    sw $t0, -48($fp)
    li $a0, 10
    li $v0, 11
    syscall

I53:
    li $v0, 0


I54:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


