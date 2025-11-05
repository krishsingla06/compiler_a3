

.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -20
    sw $ra, 16($sp)
    sw $fp, 12($sp)
    addiu $fp, $sp, 12


I2:
    li $t0, 5

    sw $t0, -4($fp)
I3:
    lw $t0, -4($fp)

    sw $t0, -4($fp)
    sw $t0, -8($fp)
I4:
    li $t0, 10

    sw $t0, -4($fp)
I5:
    lw $t0, -4($fp)
    lw $t1, -8($fp)
    add $t2, $t0, $t1

    sw $t2, -12($fp)
I6:
    lw $t0, -12($fp)
    move $v0, $t0

I7:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 20
    jr $ra

