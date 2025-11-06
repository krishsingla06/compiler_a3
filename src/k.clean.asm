



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
    addiu $sp, $sp, -84
    sw $ra, 80($sp)
    sw $fp, 76($sp)
    addiu $fp, $sp, 76


I8:
    li $t0, 0

I9:
    li $t1, 1

    sw $t0, -8($fp)
    sw $t1, -4($fp)

I10:
    lw $t0, -4($fp)
    li $t1, 10
    ble $t0, $t1, I12


I11:
    j I14


I12:
    li $t0, 1

I13:
    sw $t0, -12($fp)
    j I15


I14:
    li $t0, 0

    sw $t0, -12($fp)

I15:
    lw $t0, -12($fp)
    bne $t0, $zero, I20


I16:
    j I35


I17:
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

I18:
    sw $t2, -4($fp)

I19:
    sw $t2, -16($fp)
    sw $t2, -4($fp)
    j I10


I20:
    lw $t0, -4($fp)
    li $t1, 2
    rem $t2, $t0, $t1

I21:
    sw $t2, -20($fp)
    li $t3, 0
    beq $t2, $t3, I23


I22:
    j I25


I23:
    li $t0, 1

I24:
    sw $t0, -24($fp)
    j I26


I25:
    li $t0, 0

    sw $t0, -24($fp)

I26:
    lw $t0, -24($fp)
    bne $t0, $zero, I28


I27:
    j I31


I28:
    lw $t0, -8($fp)
    lw $t1, -4($fp)
    add $t2, $t0, $t1

I29:
    sw $t2, -8($fp)

I30:
    sw $t2, -28($fp)
    sw $t2, -8($fp)
    j I35


I31:
    lw $t0, -4($fp)
    li $t1, 2
    mul $t2, $t0, $t1

I32:
    lw $t3, -8($fp)
    add $t4, $t3, $t2

I33:
    sw $t4, -8($fp)

I34:
    sw $t2, -32($fp)
    sw $t4, -36($fp)
    sw $t4, -8($fp)
    j I17


I35:

I36:
    lw $t0, -8($fp)
    move $a0, $t0
    li $v0, 1
    syscall

I37:
    li $a0, 10
    li $v0, 11
    syscall

I38:
    move $v0, $t0


I39:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


