


.data

.text
.globl main

I1:
main:
    addiu $sp, $sp, -416
    sw $ra, 412($sp)
    sw $fp, 408($sp)
    addiu $fp, $sp, 408


I2:
    lw $t0, -404($fp)
    lw $t1, 0($t0)

I3:
    lw $t2, -100($fp)
    sw $t2, 0($t1)

I4:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 416
    jr $ra


