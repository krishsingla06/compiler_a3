.data

.text
.globl main

I1:
foo_i_i:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52

I2:
    add $t0, $a0, $a1

I3:
    sw $t0, -4($fp)
    move $v0, $t0

I4:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra

I5:
main:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52

I6:
    li $t0, 10

I7:
    li $t1, 20

I8:

I9:

I10:
    sw $t0, -4($fp)
    sw $t1, -8($fp)
    addiu $sp, $sp, -8
    lw $t0, -8($fp)
    sw $t0, 8($sp)
    move $a0, $t0
    lw $t1, -4($fp)
    sw $t1, 12($sp)
    move $a1, $t1
    jal foo_i_i
    addiu $sp, $sp, 8
    move $t2, $v0

I11:
    sw $t2, -12($fp)
    move $v0, $t2

I12:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


