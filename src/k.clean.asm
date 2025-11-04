

.data

.text
.globl main

main:

    li $t0, 1

    li $t1, 2

    li $t2, 3

    li $t3, 4

    li $t4, 5

    li $t5, 6

    li $t6, 7

    li $t7, 8

    li $t8, 9

    li $t9, 10

    sw $t0, -4($fp)
    li $t0, 11

    sw $t1, -8($fp)
    li $t1, 12

    sw $t2, -12($fp)
    lw $t2, -4($fp)
    sw $t3, -16($fp)
    lw $t3, -8($fp)
    sw $t4, -20($fp)
    add $t4, $t2, $t3

    sw $t5, -24($fp)
    lw $t5, -12($fp)
    sw $t6, -28($fp)
    lw $t6, -16($fp)
    sw $t7, -32($fp)
    add $t7, $t5, $t6

    sw $t8, -36($fp)
    add $t8, $t4, $t7

    sw $t9, -40($fp)
    lw $t9, -20($fp)
    sw $t0, -44($fp)
    lw $t0, -24($fp)
    sw $t1, -48($fp)
    add $t1, $t9, $t0

    sw $t2, -4($fp)
    add $t2, $t8, $t1

    sw $t3, -8($fp)
    lw $t3, -28($fp)
    sw $t4, -56($fp)
    lw $t4, -32($fp)
    sw $t5, -12($fp)
    add $t5, $t3, $t4

    sw $t6, -16($fp)
    add $t6, $t2, $t5

    sw $t7, -60($fp)
    lw $t7, -36($fp)
    sw $t8, -64($fp)
    lw $t8, -40($fp)
    sw $t9, -20($fp)
    add $t9, $t7, $t8

    sw $t0, -24($fp)
    add $t0, $t6, $t9

    sw $t1, -68($fp)
    lw $t1, -44($fp)
    sw $t2, -72($fp)
    lw $t2, -48($fp)
    sw $t3, -28($fp)
    add $t3, $t1, $t2

    sw $t4, -32($fp)
    add $t4, $t0, $t3


    sw $t0, -88($fp)
    sw $t1, -44($fp)
    sw $t2, -48($fp)
    sw $t3, -92($fp)
    sw $t4, -96($fp)
    sw $t4, -52($fp)
    sw $t5, -76($fp)
    sw $t6, -80($fp)
    sw $t7, -36($fp)
    sw $t8, -40($fp)
    sw $t9, -84($fp)


