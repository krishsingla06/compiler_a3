




.data

v_global_val_s1: .word 0  # int (global/static) at 0($gp)

.text
.globl main


I1:
    li $t0, 100



I2:
modify_through_pointer:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52
    sw $t0, 0($gp)

I3:
    move $t0, $fp

I4:
    sw $t0, -8($fp)

I5:
    sw $t0, -12($fp)

I6:
    li $t1, 200
    sw $t1, 0($t0)

I7:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I8:
main:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40

I9:
    jal modify_through_pointer
    move $t0, $v0

I10:
    sw $t0, 0($fp)
    li $v0, 0



I11:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


