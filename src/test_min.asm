.data
str_0: .asciiz "Sum: %d\n"

.text
.globl main

main:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    
    la $a0, str_0
    li $t0, 55
    addiu $sp, $sp, -4
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4
    
    lw $ra, 4($sp)
    addiu $sp, $sp, 8
    
    li $v0, 10
    syscall

__lib_printf:
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $fp, 8($sp)
    sw $a0, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    move $s0, $a0
    addiu $t0, $fp, 16

printf_loop:
    lb $t1, 0($s0)
    beqz $t1, printf_end
    li $t2, 37
    bne $t1, $t2, printf_print_char
    addiu $s0, $s0, 1
    lb $t1, 0($s0)
    beqz $t1, printf_end
    li $t2, 100
    beq $t1, $t2, printf_int
    j printf_continue

printf_int:
    lw $a0, 0($t0)
    addiu $t0, $t0, 4
    li $v0, 1
    syscall
    j printf_continue

printf_print_char:
    move $a0, $t1
    li $v0, 11
    syscall

printf_continue:
    addiu $s0, $s0, 1
    j printf_loop

printf_end:
    lw $s0, 0($sp)
    lw $a0, 4($sp)
    lw $fp, 8($sp)
    lw $ra, 12($sp)
    addiu $sp, $sp, 16
    jr $ra
