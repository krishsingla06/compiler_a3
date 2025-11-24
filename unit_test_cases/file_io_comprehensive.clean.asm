




.data
str_7: .asciiz "File I/O test completed"
str_6: .asciiz "File closed after reading"
str_3: .asciiz "File closed"
str_1: .asciiz "File opened successfully"
str_4: .asciiz "Opening file for reading..."
str_0: .asciiz "Opening file for writing..."
str_5: .asciiz "Reading characters:"
str_2: .asciiz "This is a test string"


.text
.globl main


I1:
fopen_cp1_cp1:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48


I2:
    li $v0, 0



I3:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I4:
fclose_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I5:
    li $v0, 0



I6:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I7:
fgetc_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I8:
    li $v0, 0



I9:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I10:
fputc_i_i:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48


I11:
    li $v0, 0



I12:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I13:
fputs_cp1_i:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48


I14:
    li $v0, 0



I15:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I16:
feof_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I17:
    li $v0, 0



I18:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I19:
print_int_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I20:
    li $v0, 0



I21:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I22:
print_string_cp1:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I23:
    li $v0, 0



I24:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I25:
main:
    addiu $sp, $sp, -192
    sw $ra, 188($sp)
    sw $fp, 184($sp)
    addiu $fp, $sp, 184

I26:

I27:
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

I28:
    li $t1, -1

I29:
    sw $t1, -24($fp)
    lw $t2, -4($fp)
    bne $t2, $t1, I31



I30:
    j I33



I31:
    li $t0, 1

I32:
    sw $t0, -28($fp)
    j I34



I33:
    li $t0, 0


    sw $t0, -28($fp)

I34:
    lw $t0, -28($fp)
    bne $t0, $zero, I36



I35:
    j I64



I36:

I37:
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

I38:

I39:

I40:
    addiu $sp, $sp, -8
    li $t0, 72
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I41:

I42:

I43:
    sw $t0, -4($fp)
    sw $t1, -36($fp)
    addiu $sp, $sp, -8
    li $t0, 101
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I44:

I45:

I46:
    sw $t0, -4($fp)
    sw $t1, -40($fp)
    addiu $sp, $sp, -8
    li $t0, 108
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I47:

I48:

I49:
    sw $t0, -4($fp)
    sw $t1, -44($fp)
    addiu $sp, $sp, -8
    li $t0, 108
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I50:

I51:

I52:
    sw $t0, -4($fp)
    sw $t1, -48($fp)
    addiu $sp, $sp, -8
    li $t0, 111
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I53:

I54:

I55:
    sw $t0, -4($fp)
    sw $t1, -52($fp)
    addiu $sp, $sp, -8
    li $t0, 10
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I56:

I57:

I58:
    sw $t0, -4($fp)
    sw $t1, -56($fp)
    addiu $sp, $sp, -8
    la $t0, str_2
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputs
    addiu $sp, $sp, 8
    move $t1, $v0

I59:

I60:
    sw $t0, -4($fp)
    sw $t1, -60($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

I61:
    sw $t1, -12($fp)

I62:

I63:
    sw $t0, -4($fp)
    sw $t1, -64($fp)
    sw $t1, -12($fp)
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string



I64:

I65:
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

I66:
    li $t1, -1

I67:
    sw $t1, -76($fp)
    lw $t2, -8($fp)
    bne $t2, $t1, I69



I68:
    j I71



I69:
    li $t0, 1

I70:
    sw $t0, -80($fp)
    j I72



I71:
    li $t0, 0


    sw $t0, -80($fp)

I72:
    lw $t0, -80($fp)
    bne $t0, $zero, I74



I73:
    j I111



I74:

I75:
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

I76:

I77:
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

I78:
    sw $t1, -16($fp)

I79:

I80:
    sw $t0, -8($fp)
    sw $t1, -88($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

I81:

I82:
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

I83:
    sw $t1, -16($fp)

I84:

I85:
    sw $t0, -8($fp)
    sw $t1, -96($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

I86:

I87:
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

I88:
    sw $t1, -16($fp)

I89:

I90:
    sw $t0, -8($fp)
    sw $t1, -104($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

I91:

I92:
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

I93:
    sw $t1, -16($fp)

I94:

I95:
    sw $t0, -8($fp)
    sw $t1, -112($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

I96:

I97:
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

I98:
    sw $t1, -16($fp)

I99:

I100:
    sw $t0, -8($fp)
    sw $t1, -120($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

I101:

I102:
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_feof
    addiu $sp, $sp, 4
    move $t1, $v0

I103:
    sw $t1, -12($fp)

I104:

I105:
    sw $t0, -8($fp)
    sw $t1, -128($fp)
    sw $t1, -12($fp)
    lw $t0, -12($fp)
    move $a0, $t0
    jal __lib_print_int

I106:

I107:
    sw $t0, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

I108:
    sw $t1, -12($fp)

I109:

I110:
    sw $t0, -8($fp)
    sw $t1, -136($fp)
    sw $t1, -12($fp)
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string



I111:

I112:
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

I113:
    li $v0, 0



I114:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



#==============================================================================
# RUNTIME LIBRARY FUNCTIONS
# The following functions are imported from the runtime library
#==============================================================================

#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

