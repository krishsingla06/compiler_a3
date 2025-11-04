

.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52


I2:
    li $t0, 5

I3:
    li $t1, 0

I4:
    li $t2, 10

I5:
    sw $t0, -4($fp)
    sw $t1, -8($fp)
    sw $t2, -12($fp)
    lw $t3, 0($fp)
    beq $t0, $t3, I7

I6:
    j I11

I7:
    beq $t2, $t3, I9

I8:
    j I11

I9:
    li $t4, 1

I10:
    sw $t4, -28($fp)
    j I12

I11:
    li $t5, 0

I12:

I13:
    sw $t5, -28($fp)
    sw $t5, -16($fp)
    beq $t1, $t3, I16

I14:
    beq $t2, $t3, I16

I15:
    j I18

I16:
    li $t6, 1

I17:
    sw $t6, -32($fp)
    j I19

I18:
    li $t7, 0

I19:

I20:
    sw $t7, -32($fp)
    sw $t7, -20($fp)
    beq $t1, $t3, I22

I21:
    j I24

I22:
    li $t8, 0

I23:
    sw $t8, -36($fp)
    j I25

I24:
    li $t9, 1

I25:

I26:
    add $t0, $t5, $t7

I27:
    add $t1, $t0, $t9

I28:
    sw $t0, -40($fp)
    sw $t1, -44($fp)
    sw $t9, -36($fp)
    sw $t9, -24($fp)

I29:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 60
    jr $ra

