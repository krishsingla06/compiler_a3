




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
__lib_fclose:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    lw $a0, 8($fp)   # file descriptor
    li $v0, 16       # syscall 16: close file
    syscall
    # $v0 contains result (0 or -1)
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


#==============================================================================
__lib_feof:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # In MARS simulator, we can't directly check EOF
    # Return 0 for now (not at EOF)
    # A real implementation would track file state
    li $v0, 0
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


#==============================================================================
__lib_ferror:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # In MARS simulator, we can't directly check errors
    # Return 0 for now (no error)
    # A real implementation would track error state
    li $v0, 0
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


#==============================================================================
__lib_fgetc:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $a0, 12($fp)  # file descriptor
    
    # Allocate 1 byte on stack to read into
    addiu $sp, $sp, -4
    move $a1, $sp    # buffer address
    li $a2, 1        # read 1 byte
    li $v0, 14       # syscall 14: read from file
    syscall
    
    # Check if read was successful
    blez $v0, fgetc_error
    
    # Load the character
    lb $v0, 0($sp)
    addiu $sp, $sp, 4
    j fgetc_done

fgetc_error:
    addiu $sp, $sp, 4
    li $v0, -1       # Return -1 on error

fgetc_done:
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra


#==============================================================================
__lib_fprintf:
    addiu $sp, $sp, -20
    sw $ra, 16($sp)
    sw $fp, 12($sp)
    sw $s0, 8($sp)
    sw $s1, 4($sp)
    sw $s2, 0($sp)
    move $fp, $sp
    
    lw $s0, 20($fp)  # file descriptor
    lw $s1, 24($fp)  # format string
    
    # Pointer to variadic arguments
    addiu $s2, $fp, 28
    
    li $t9, 0        # Character count

fprintf_loop:
    lb $t1, 0($s1)
    beqz $t1, fprintf_end
    
    li $t2, 37       # '%'
    bne $t1, $t2, fprintf_print_char
    
    # Format specifier
    addiu $s1, $s1, 1
    lb $t1, 0($s1)
    beqz $t1, fprintf_end
    
    li $t2, 100      # 'd' - integer
    beq $t1, $t2, fprintf_int
    
    li $t2, 99       # 'c' - char
    beq $t1, $t2, fprintf_char
    
    li $t2, 115      # 's' - string
    beq $t1, $t2, fprintf_string
    
    # Default: print the character
    j fprintf_print_char

fprintf_int:
    # Convert integer to string and write (simplified: write placeholder)
    lw $t3, 0($s2)
    addiu $s2, $s2, 4
    # For simplicity, we'll skip actual conversion and just increment counter
    addiu $t9, $t9, 1
    j fprintf_continue

fprintf_char:
    # Write character to file
    lw $t3, 0($s2)
    addiu $s2, $s2, 4
    
    addiu $sp, $sp, -4
    sb $t3, 0($sp)
    
    move $a0, $s0
    move $a1, $sp
    li $a2, 1
    li $v0, 15
    syscall
    
    addiu $sp, $sp, 4
    addiu $t9, $t9, 1
    j fprintf_continue

fprintf_string:
    # Write string to file (call fputs internally)
    lw $a1, 0($s2)
    addiu $s2, $s2, 4
    move $a0, $s0
    
    # Calculate string length and write
    move $t4, $a1
    li $t5, 0
fprintf_str_len:
    lb $t6, 0($t4)
    beqz $t6, fprintf_str_write
    addiu $t4, $t4, 1
    addiu $t5, $t5, 1
    j fprintf_str_len

fprintf_str_write:
    move $a2, $t5
    li $v0, 15
    syscall
    add $t9, $t9, $v0
    j fprintf_continue

fprintf_print_char:
    # Write regular character
    addiu $sp, $sp, -4
    sb $t1, 0($sp)
    
    move $a0, $s0
    move $a1, $sp
    li $a2, 1
    li $v0, 15
    syscall
    
    addiu $sp, $sp, 4
    addiu $t9, $t9, 1

fprintf_continue:
    addiu $s1, $s1, 1
    j fprintf_loop

fprintf_end:
    move $v0, $t9
    
    move $sp, $fp
    lw $s2, 0($sp)
    lw $s1, 4($sp)
    lw $s0, 8($sp)
    lw $fp, 12($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 20
    jr $ra


#==============================================================================
__lib_fputc:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $t0, 12($fp)  # character to write
    lw $a0, 16($fp)  # file descriptor
    
    # Store character on stack temporarily
    addiu $sp, $sp, -4
    sb $t0, 0($sp)
    move $a1, $sp    # buffer address
    li $a2, 1        # write 1 byte
    li $v0, 15       # syscall 15: write to file
    syscall
    
    # Check if write was successful
    blez $v0, fputc_error
    
    # Return the character written
    lb $v0, 0($sp)
    addiu $sp, $sp, 4
    j fputc_done

fputc_error:
    addiu $sp, $sp, 4
    li $v0, -1       # Return -1 on error

fputc_done:
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra


#==============================================================================
__lib_fputs:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $s0, 12($fp)  # string address
    lw $a0, 16($fp)  # file descriptor
    
    # Calculate string length
    move $t0, $s0
    li $t1, 0

fputs_strlen:
    lb $t2, 0($t0)
    beqz $t2, fputs_write
    addiu $t0, $t0, 1
    addiu $t1, $t1, 1
    j fputs_strlen

fputs_write:
    move $a1, $s0    # buffer address
    move $a2, $t1    # length
    li $v0, 15       # syscall 15: write to file
    syscall
    
    # $v0 contains bytes written or -1 on error
    
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra


#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

