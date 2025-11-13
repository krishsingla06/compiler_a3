




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



I3:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I4:
print_float_f:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I5:



I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I7:
print_char_c:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I8:



I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I10:
print_string_cp1:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I11:



I12:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I13:
myfunc_c:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I14:
    move $v0, $a0



I15:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I16:
main:
    addiu $sp, $sp, -164
    sw $ra, 160($sp)
    sw $fp, 156($sp)
    addiu $fp, $sp, 156

I17:
    li $t0, 0
    li $t1, 4
    mul $t2, $t0, $t1

I18:
    addiu $t0, $fp, -20

I19:
    add $t3, $t0, $t2

I20:
    sw $t3, -36($fp)

I21:
    li $t4, 97
    sw $t4, 0($t3)

I22:
    li $t5, 1
    li $t6, 4
    mul $t7, $t5, $t6

I23:
    addiu $t1, $fp, -20

I24:
    add $t8, $t1, $t7

I25:
    sw $t8, -52($fp)

I26:
    li $t9, 98
    sw $t9, 0($t8)

I27:
    sw $t0, -28($fp)
    li $t0, 2
    li $t0, 4
    mul $t0, $t0, $t0

I28:
    sw $t2, -24($fp)
    addiu $t2, $fp, -20

I29:
    sw $t0, -56($fp)
    add $t0, $t2, $t0

I30:
    sw $t0, -68($fp)

I31:
    sw $t0, -64($fp)
    sw $t0, -68($fp)
    li $t0, 99
    sw $t0, 0($t0)

I32:
    li $t0, 3
    li $t0, 4
    mul $t0, $t0, $t0

I33:
    sw $t3, -32($fp)
    addiu $t3, $fp, -20

I34:
    sw $t0, -72($fp)
    add $t0, $t3, $t0

I35:
    sw $t0, -84($fp)

I36:
    sw $t0, -80($fp)
    sw $t0, -84($fp)
    li $t0, 100
    sw $t0, 0($t0)

I37:
    li $t0, 4
    li $t0, 4
    mul $t0, $t0, $t0

I38:
    addiu $t4, $fp, -20

I39:
    sw $t0, -88($fp)
    add $t0, $t4, $t0

I40:
    sw $t0, -100($fp)

I41:
    sw $t0, -96($fp)
    sw $t0, -100($fp)
    li $t0, 101
    sw $t0, 0($t0)

I42:
    li $t0, 2
    li $t0, 4
    mul $t0, $t0, $t0

I43:
    addiu $t5, $fp, -20

I44:
    sw $t0, -104($fp)
    add $t0, $t5, $t0

I45:
    lw $t6, 0($t0)

I46:

I47:
    sw $t0, -112($fp)
    sw $t1, -44($fp)
    sw $t2, -60($fp)
    sw $t3, -76($fp)
    sw $t4, -92($fp)
    sw $t5, -108($fp)
    sw $t6, -116($fp)
    sw $t7, -40($fp)
    sw $t8, -48($fp)
    sw $t8, -52($fp)
    lw $t0, -116($fp)
    move $a0, $t0
    li $v0, 11
    syscall

I48:
    li $v0, 0



I49:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


