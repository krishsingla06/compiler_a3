




.data


.text
.globl main


I1:
main:
    addiu $sp, $sp, -68
    sw $ra, 64($sp)
    sw $fp, 60($sp)
    addiu $fp, $sp, 60

I2:
    li $t0, 10

I3:
    li $t1, 1
    move $t2, $t0

I4:
    sw $t2, -12($fp)

I5:
    li $t3, 0
    move $t4, $t2

I6:
    sw $t4, -20($fp)

I7:
    sw $t0, -4($fp)
    sw $t2, -8($fp)
    sw $t2, -12($fp)
    sw $t4, -16($fp)
    sw $t4, -20($fp)
    move $v0, $t4



I8:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


