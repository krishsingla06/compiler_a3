



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
factorial_i:
    addiu $sp, $sp, -64
    sw $ra, 60($sp)
    sw $fp, 56($sp)
    addiu $fp, $sp, 56


I11:
    lw $t0, 8($fp)
    li $t1, 0
    beq $t0, $t1, I13


I12:
    j I15


I13:
    li $t0, 1

I14:
    sw $t0, -4($fp)
    j I16


I15:
    li $t0, 0

    sw $t0, -4($fp)

I16:
    lw $t0, -4($fp)
    bne $t0, $zero, I18


I17:
    j I20


I18:
    li $v0, 1


I19:
    j I25


I20:
    lw $t0, 8($fp)
    li $t1, 1
    sub $t2, $t0, $t1

I21:

I22:
    sw $t0, 8($fp)
    sw $t1, 0($fp)
    sw $t2, -8($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 8($sp)
    move $a0, $t0
    jal factorial_i
    addiu $sp, $sp, 4
    move $t1, $v0

I23:
    lw $t2, 8($fp)
    mul $t3, $t2, $t1

I24:
    sw $t1, -12($fp)
    sw $t3, -16($fp)
    move $v0, $t3


I25:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I26:
main:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48


I27:

I28:
    addiu $sp, $sp, -4
    li $t0, 5
    sw $t0, 8($sp)
    move $a0, $t0
    jal factorial_i
    addiu $sp, $sp, 4
    move $t0, $v0

I29:
    sw $t0, -4($fp)

I30:

I31:
    move $a0, $t0
    li $v0, 1
    syscall

I32:
    li $a0, 10
    li $v0, 11
    syscall

I33:
    sw $t0, -8($fp)
    sw $t0, -4($fp)
    move $v0, $t0


I34:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


