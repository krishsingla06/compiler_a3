




.data
str_1: .asciiz "Number: "
str_0: .asciiz "World from fputs"


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
fgets_cp1_i_i:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52


I14:
    li $v0, 0



I15:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I16:
fputs_cp1_i:
    addiu $sp, $sp, -56
    sw $ra, 52($sp)
    sw $fp, 48($sp)
    addiu $fp, $sp, 48


I17:
    li $v0, 0



I18:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I19:
fprintf_i_cp1_i:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52


I20:
    li $v0, 0



I21:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I22:
fscanf_i_cp1_ip1:
    addiu $sp, $sp, -60
    sw $ra, 56($sp)
    sw $fp, 52($sp)
    addiu $fp, $sp, 52


I23:
    li $v0, 0



I24:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I25:
feof_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I26:
    li $v0, 0



I27:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I28:
ferror_i:
    addiu $sp, $sp, -52
    sw $ra, 48($sp)
    sw $fp, 44($sp)
    addiu $fp, $sp, 44


I29:
    li $v0, 0



I30:
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra



I31:
main:
    addiu $sp, $sp, -108
    sw $ra, 104($sp)
    sw $fp, 100($sp)
    addiu $fp, $sp, 100

I32:

I33:

I34:
    addiu $sp, $sp, -8
    li $t0, 72
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I35:

I36:

I37:
    sw $t0, -4($fp)
    sw $t1, -16($fp)
    addiu $sp, $sp, -8
    li $t0, 101
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

I38:

I39:

I40:
    sw $t0, -4($fp)
    sw $t1, -20($fp)
    addiu $sp, $sp, -8
    li $t0, 108
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
    sw $t1, -24($fp)
    addiu $sp, $sp, -8
    li $t0, 108
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
    sw $t1, -28($fp)
    addiu $sp, $sp, -8
    li $t0, 111
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
    sw $t1, -32($fp)
    addiu $sp, $sp, -8
    la $t0, str_0
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputs
    addiu $sp, $sp, 8
    move $t1, $v0

I50:

I51:

I52:

I53:
    sw $t0, -4($fp)
    sw $t1, -36($fp)
    addiu $sp, $sp, -12
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    la $t0, str_1
    sw $t0, 4($sp)
    li $t0, 42
    sw $t0, 8($sp)
    jal __lib_fprintf
    addiu $sp, $sp, 12
    move $t1, $v0

I54:

I55:
    sw $t0, -4($fp)
    sw $t1, -40($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

I56:
    sw $t1, -12($fp)

I57:

I58:
    sw $t0, -4($fp)
    sw $t1, -44($fp)
    sw $t1, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

I59:
    sw $t1, -8($fp)

I60:

I61:
    sw $t0, -4($fp)
    sw $t1, -48($fp)
    sw $t1, -8($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_feof
    addiu $sp, $sp, 4
    move $t1, $v0

I62:
    sw $t1, -12($fp)

I63:

I64:
    sw $t0, -4($fp)
    sw $t1, -52($fp)
    sw $t1, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_ferror
    addiu $sp, $sp, 4
    move $t1, $v0

I65:
    sw $t1, -12($fp)

I66:

I67:
    sw $t0, -4($fp)
    sw $t1, -56($fp)
    sw $t1, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

I68:
    sw $t1, -12($fp)

I69:
    sw $t1, -60($fp)
    sw $t1, -12($fp)
    li $v0, 0



I70:
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

