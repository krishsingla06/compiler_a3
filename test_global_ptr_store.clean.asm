




.data

v_val_s1: .word 0  # int (global/static) at 0($gp)

.text
.globl main


I1:
foo:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52

I2:
    move $t0, $fp

I3:
    sw $t0, -8($fp)

I4:
    lw $t1, 0($t0)

I5:
    sw $t1, 0($gp)

I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I7:
bar:
    addiu $sp, $sp, -68
    sw $ra, 64($sp)
    sw $fp, 60($sp)
    addiu $fp, $sp, 60

I8:
    move $t0, $fp

I9:
    sw $t0, -8($fp)

I10:
    li $t1, 1
    li $t2, 4
    mul $t3, $t1, $t2

I11:
    sub $t1, $t0, $t3

I12:
    sw $t1, -20($fp)

I13:
    lw $t2, 0($gp)
    sw $t2, 0($t1)

I14:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I15:
main:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40

I16:
    li $t0, 42

I17:
    jal foo
    move $t0, $v0

I18:
    jal bar
    move $t0, $v0

I19:
    sw $t0, 0($fp)
    li $v0, 0



I20:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


