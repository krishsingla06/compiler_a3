<<<<<<< HEAD





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
<<<<<<< HEAD
    li $t0, 10
=======
print_float_f:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44

>>>>>>> 478ce81 (Arrays and pointers)

    sw $t0, 0($gp)

I8:
<<<<<<< HEAD
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
=======


I9:
>>>>>>> 478ce81 (Arrays and pointers)
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


<<<<<<< HEAD
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


=======
I10:
main:
    addiu $sp, $sp, -120
    sw $ra, 116($sp)
    sw $fp, 112($sp)
    addiu $fp, $sp, 112


I11:
    lw $t0, -40($fp)

I12:
    sw $t0, -44($fp)

I13:

I14:
    li $t1, 1
    sw $t1, 0($t0)

I15:
    li $t2, 0
    li $t3, 4
    mul $t4, $t2, $t3

I16:
    sw $t0, -52($fp)
    sw $t0, -56($fp)
    addiu $t0, $fp, -40

I17:
    add $t5, $t0, $t4

I18:
    lw $t1, 0($t5)

I19:

I20:

I21:
    sw $t0, -64($fp)
    sw $t1, -72($fp)
    sw $t1, -48($fp)
    sw $t4, -60($fp)
    sw $t5, -68($fp)
    lw $t0, -48($fp)
    move $a0, $t0
    li $v0, 1
    syscall

>>>>>>> 478ce81 (Arrays and pointers)
I22:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


=======




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
main:
    addiu $sp, $sp, -68
    sw $ra, 64($sp)
    sw $fp, 60($sp)
    addiu $fp, $sp, 60


I8:
    li $t0, 10

I9:
    li $t1, 1

I10:
    li $t2, 2

I11:
    sw $t0, -8($fp)
    sw $t1, -12($fp)
    sw $t2, -16($fp)
    blt $t0, $t1, I21



I12:
    lw $t0, -8($fp)
    lw $t1, -16($fp)
    bgt $t0, $t1, I21



I13:
    lw $t0, -8($fp)
    lw $t1, -12($fp)
    sub $t2, $t0, $t1

I14:
    sw $t2, -20($fp)
    li $t3, 0
    beq $t2, $t3, I15
    li $t3, 1
    beq $t2, $t3, I18

I15:

I16:
    li $a0, 10
    li $v0, 1
    syscall

I17:
    j I23



I18:

I19:
    li $a0, 20
    li $v0, 1
    syscall

I20:
    j I23



I21:

I22:
    li $a0, 30
    li $v0, 1
    syscall



I23:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


>>>>>>> 106e7e2 (Next Use Algorithm Implemented)
