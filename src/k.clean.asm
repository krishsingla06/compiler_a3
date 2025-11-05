


.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -32
    sw $ra, 28($sp)
    sw $fp, 24($sp)
    addiu $fp, $sp, 24


I2:
    lw $t0, -4($fp)
    lw $t1, 0($t0)

I3:

I4:
    lw $t2, -8($fp)
    lw $t3, 0($t2)

I5:

I6:
    lw $t4, 0($t0)

I7:
    lw $t5, 0($t4)

I8:

I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 32
    jr $ra


