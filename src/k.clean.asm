



.data
    global_global_f: .float 0
    global_global_x: .word 0


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
main:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48


I5:
    li $t0, 100
    sw $t0, global_global_x

I6:
    # Loading float constant: 2.500000
    li.s $f0, 2.500000
    s.s $f0, global_global_f

I7:
    lw $t0, global_global_x
    li $t1, 10
    add $t2, $t0, $t1

I8:
    sw $t2, -4($fp)

I9:

I10:
    move $a0, $t2
    li $v0, 1
    syscall

I11:
    sw $t2, -8($fp)
    sw $t2, -4($fp)
    li $v0, 0


I12:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


