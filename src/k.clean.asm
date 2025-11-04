

.data

.text
.globl main

main_i_i:
    addiu $sp, $sp, -36
    sw $ra, 32($sp)
    sw $fp, 28($sp)
    addiu $fp, $sp, 28


    lw $t0, 8($fp)
    lw $t1, 12($fp)
    add $t2, $t0, $t1


    sw $t2, -12($fp)
    sw $t2, -4($fp)

    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 36
    jr $ra

