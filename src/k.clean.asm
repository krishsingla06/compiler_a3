



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
    addiu $sp, $sp, -880
    sw $ra, 876($sp)
    sw $fp, 872($sp)
    addiu $fp, $sp, 872


I8:
    li $t0, 5
    li $t1, 80
    mul $t2, $t0, $t1

I9:
    addiu $t0, $fp, -800

I10:
    add $t3, $t0, $t2

I11:
    lw $t1, 0($t3)

I12:
    li $t4, 3
    li $t5, 4
    mul $t6, $t4, $t5

I13:
    sw $t2, -804($fp)
    addiu $t2, $fp, -816

I14:
    add $t7, $t2, $t6

I15:

I16:
    li $t8, 1
    sw $t8, 0($t7)

I17:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


