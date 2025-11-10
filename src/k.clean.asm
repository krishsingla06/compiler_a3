




.data


.text
.globl main


I1:
main:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48

I2:
    li $t0, 5

I3:
    sw $t0, -4($fp)
    j I6



I4:
    j I6



I5:
    j I6



I6:
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

I7:
    sw $t2, -4($fp)

I8:
    sw $t2, -8($fp)
    sw $t2, -4($fp)
    move $v0, $t2



I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


