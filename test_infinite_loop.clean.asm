




.data

v_val_s1: .word 0  # int (global/static) at 0($gp)

.text
.globl main


I1:
foo:
    addiu $sp, $sp, -64
    sw $ra, 60($sp)
    sw $fp, 56($sp)
    addiu $fp, $sp, 56

I2:
    move $t0, $fp

I3:
    sw $t0, -8($fp)

I4:
    li $t1, 1
    add $t2, $t0, $t1

I5:
    sw $t0, -4($fp)
    sw $t0, -8($fp)
    sw $t2, -8($fp)

I6:
    lw $t0, 0($t2)

I7:
    sw $t0, 0($gp)

I8:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I9:
bar:
    addiu $sp, $sp, -68
    sw $ra, 64($sp)
    sw $fp, 60($sp)
    addiu $fp, $sp, 60

I10:
    move $t0, $fp

I11:
    sw $t0, -8($fp)

I12:
    li $t1, 1
    li $t2, 4
    mul $t3, $t1, $t2

I13:
    sub $t1, $t0, $t3

I14:
    sw $t1, -20($fp)

I15:
    lw $t2, 0($gp)
    sw $t2, 0($t1)

I16:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I17:
main:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40

I18:
    jal foo
    move $t0, $v0

I19:
    jal bar
    move $t0, $v0

I20:
    sw $t0, 0($fp)
    li $v0, 0



I21:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


