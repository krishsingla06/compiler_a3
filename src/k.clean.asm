

.data

.text
.globl main

I1:
foo_i_i:
    addiu $sp, $sp, -44
    sw $ra, 40($sp)
    sw $fp, 36($sp)
    addiu $fp, $sp, 36


I2:
    li $t0, 1

I3:
    li $t1, 2

I4:
    add $t2, $t0, $t1

I5:
    lw $t3, 8($fp)
    add $t4, $t2, $t3

I6:
    lw $t5, 12($fp)
    add $t6, $t4, $t5

I7:
    sw $t0, -4($fp)
    sw $t1, -8($fp)
    sw $t2, -12($fp)
    sw $t4, -16($fp)
    sw $t6, -20($fp)

I8:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 44
    jr $ra

I9:
main_i_i:
    addiu $sp, $sp, -44
    sw $ra, 40($sp)
    sw $fp, 36($sp)
    addiu $fp, $sp, 36


I10:
    lw $t7, 8($fp)
    lw $t8, 12($fp)
    add $t9, $t7, $t8

I11:

I12:
    sub $t0, $t7, $t8

I13:

I14:

I15:

I16:
    sw $t0, -16($fp)
    sw $t0, -8($fp)
    sw $t9, -12($fp)
    sw $t9, -4($fp)

I17:

I18:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 44
    jr $ra

