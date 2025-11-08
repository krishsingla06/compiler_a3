




.data

v_global_var_s1: .word 0  # int (global/static) at 0($gp)

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
print_newline:
    addiu $sp, $sp, -48
    sw $ra, 44($sp)
    sw $fp, 40($sp)
    addiu $fp, $sp, 40


I5:


I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I7:
    li $t0, 10

    sw $t0, 0($gp)

I8:
add_to_global_i:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48



I9:
    li $t0, 10
    add $t1, $t0, $a0

I10:
    sw $t1, 0($gp)

I11:
    sw $t1, -4($fp)
    sw $t1, 0($gp)
    move $v0, $t1


I12:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


I13:
main:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52


I14:
    li $t0, 5

I15:

I16:
    sw $t0, -4($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    jal add_to_global_i
    addiu $sp, $sp, 4
    move $t1, $v0

I17:
    sw $t1, -8($fp)

I18:

I19:
    move $a0, $t1
    li $v0, 1
    syscall

I20:
    li $a0, 10
    li $v0, 11
    syscall

I21:
    sw $t1, -12($fp)
    sw $t1, -8($fp)
    move $v0, $t1


I22:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


