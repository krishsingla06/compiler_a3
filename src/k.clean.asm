



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
    addiu $sp, $sp, -84
    sw $ra, 80($sp)
    sw $fp, 76($sp)
    addiu $fp, $sp, 76


I8:
    li $t0, 10

I9:
    li $t1, 0

    sw $t0, -4($fp)
    sw $t1, -8($fp)

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
    bne $t0, $zero, I17


I16:
    j I38


I17:
    lw $t0, -4($fp)
    li $t1, 5
    beq $t0, $t1, I19


I18:
    j I21


I19:
    li $t0, 1

I20:
    sw $t0, -16($fp)
    j I22


I21:
    li $t0, 0

    sw $t0, -16($fp)

I22:
    lw $t0, -16($fp)
    bne $t0, $zero, I24


I23:
    j I25


I24:
    j I10


I25:
    lw $t0, -4($fp)
    li $t1, 8
    beq $t0, $t1, I27


I26:
    j I29


I27:
    li $t0, 1

I28:
    sw $t0, -20($fp)
    j I30


I29:
    li $t0, 0

    sw $t0, -20($fp)

I30:
    lw $t0, -20($fp)
    bne $t0, $zero, I32


I31:
    j I33


I32:
    j I38


I33:
    lw $t0, -8($fp)
    lw $t1, -4($fp)
    add $t2, $t0, $t1

I34:
    sw $t2, -8($fp)

I35:
    li $t0, 1
    add $t3, $t1, $t0

I36:
    sw $t3, -4($fp)

I37:
    sw $t2, -24($fp)
    sw $t2, -8($fp)
    sw $t3, -28($fp)
    sw $t3, -4($fp)
    j I10


I38:

I39:
    lw $t0, -8($fp)
    move $a0, $t0
    li $v0, 1
    syscall

I40:
    li $a0, 10
    li $v0, 11
    syscall

I41:
    move $v0, $t0


I42:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


