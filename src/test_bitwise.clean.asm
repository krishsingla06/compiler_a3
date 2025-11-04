

.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -92
    sw $ra, 88($sp)
    sw $fp, 84($sp)
    addiu $fp, $sp, 84


I2:
    li $t0, 12

I3:
    li $t1, 10

I4:
    and $t2, $t0, $t1

I5:

I6:
    or $t3, $t0, $t1

I7:

I8:
    xor $t4, $t0, $t1

I9:

I10:
    nor $t5, $t0, $zero

I11:

I12:
    sll $t6, $t0, 2

I13:

I14:
    srl $t7, $t1, 1

I15:

I16:
    add $t8, $t2, $t3

I17:
    add $t9, $t8, $t4

I18:
    sw $t0, -4($fp)
    sw $t0, -28($fp)
    add $t0, $t9, $t5

I19:
    sw $t1, -8($fp)
    sw $t1, -32($fp)
    lw $t1, -28($fp)
    sw $t2, -36($fp)
    sw $t2, -12($fp)
    add $t2, $t0, $t1

I20:
    sw $t3, -40($fp)
    sw $t3, -16($fp)
    lw $t3, -32($fp)
    sw $t4, -44($fp)
    sw $t4, -20($fp)
    add $t4, $t2, $t3

I21:
    sw $t0, -68($fp)
    sw $t1, -28($fp)
    sw $t2, -72($fp)
    sw $t3, -32($fp)
    sw $t4, -76($fp)
    sw $t5, -48($fp)
    sw $t5, -24($fp)
    sw $t6, -52($fp)
    sw $t7, -56($fp)
    sw $t8, -60($fp)
    sw $t9, -64($fp)

I22:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 92
    jr $ra

