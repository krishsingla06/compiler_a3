    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 34

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i7
    # Block B6: i8-i8
    # Block B7: i9-i10
    # Block B8: i11-i11
    # Block B9: i12-i13
    # Block B10: i14-i14
    # Block B11: i15-i15
    # Block B12: i16-i16
    # Block B13: i17-i17
    # Block B14: i18-i18
    # Block B15: i19-i23
    # Block B16: i24-i24
    # Block B17: i25-i32
    # Block B18: i33-i33

.data
    # String Literals
    # (no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : print_float_f
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
print_float_f:
    # Function: print_float_f
    # === Function Prologue for print_float_f ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_print_float_f_s2) at 8($fp)
    # DEBUG: Float parameter 0 (v_x_print_float_f_s2) in $f12
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return (void)


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: end function print_float_f
I3:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_float_f ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: print_float_f


    # ======================================
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: function begin : print_int_i
I4:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # --- End Storage Descriptor ---
print_int_i:
    # Function: print_int_i
    # === Function Prologue for print_int_i ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # $a0: [v_x_print_int_i_s2]
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return (void)


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: end function print_int_i
I6:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_int_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: print_int_i


    # ======================================
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : print_newline
I7:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_newline:
    # Function: print_newline
    # === Function Prologue for print_newline ===
    # Frame size: 48 bytes
    addiu $sp, $sp, -48
    # Allocate 48 bytes (8 for $ra+$fp, 48 for locals/temps)
    sw $ra, 44($sp)
    # Save return address at 52($sp)
    sw $fp, 40($sp)
    # Save old frame pointer at 48($sp)
    addiu $fp, $sp, 40
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 7: 8: return 
I8:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return (void)


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # TAC 8: 9: end function print_newline
I9:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_newline ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: print_newline


    # ======================================
    # === B7_i9_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 9: 10: function begin : factorial_i
I10:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
factorial_i:
    # Function: factorial_i
    # === Function Prologue for factorial_i ===
    # Frame size: 64 bytes
    addiu $sp, $sp, -64
    # Allocate 64 bytes (8 for $ra+$fp, 64 for locals/temps)
    sw $ra, 60($sp)
    # Save return address at 68($sp)
    sw $fp, 56($sp)
    # Save old frame pointer at 64($sp)
    addiu $fp, $sp, 56
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 10: 11: if v_n_factorial_i_s2 == 0 goto I13
I11:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_n_factorial_i_s2 == 0 goto I13
    lw $t0, 8($fp)
    # DEBUG: Loaded v_n_factorial_i_s2 from memory at 8($fp)
    # DEBUG: v_n_factorial_i_s2 in $t0
    li $t1, 0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    beq $t0, $t1, I13
    # Branch to I13 if condition true


    # ======================================
    # === B8_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: goto I15
I12:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I15
    j I15


    # ======================================
    # === B9_i12_i13 ===
    # ======================================
    # Registers cleared at block start
    # TAC 12: 13: #t1 = 1
I13:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    li $t0, 1
    # DEBUG: #t1 = constant 1 loaded in $t0 (dirty)

    # TAC 13: 14: goto I16
I14:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)
    # Unconditional jump to I16
    j I16


    # ======================================
    # === B10_i14_i14 ===
    # ======================================
    # Registers cleared at block start
    # TAC 14: 15: #t1 = 0
I15:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    li $t0, 0
    # DEBUG: #t1 = constant 0 loaded in $t0 (dirty)

    # End of block B10 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)

    # ======================================
    # === B11_i15_i15 ===
    # ======================================
    # Registers cleared at block start
    # TAC 15: 16: if #t1   goto I18
I16:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t1 ?? 0 goto I18
    lw $t0, -4($fp)
    # DEBUG: Loaded #t1 from memory at -4($fp)
    # DEBUG: #t1 in $t0
    bne $t0, $zero, I18
    # Branch to I18 if condition true


    # ======================================
    # === B12_i16_i16 ===
    # ======================================
    # Registers cleared at block start
    # TAC 16: 17: goto I20
I17:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I20
    j I20


    # ======================================
    # === B13_i17_i17 ===
    # ======================================
    # Registers cleared at block start
    # TAC 17: 18: return 1
I18:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return 1
    li $v0, 1
    # DEBUG: Return constant 1 in $v0


    # ======================================
    # === B14_i18_i18 ===
    # ======================================
    # Registers cleared at block start
    # TAC 18: 19: goto I25
I19:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I25
    j I25


    # ======================================
    # === B15_i19_i23 ===
    # ======================================
    # Registers cleared at block start
    # TAC 19: 20: #t2 = v_n_factorial_i_s2 - 1
I20:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_n_factorial_i_s2 sub 1
    lw $t0, 8($fp)
    # DEBUG: Loaded v_n_factorial_i_s2 from memory at 8($fp)
    # DEBUG: v_n_factorial_i_s2 in $t0
    li $t1, 1
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    sub $t2, $t0, $t1
    # DEBUG: #t2 = result in $t2 (dirty)

    # TAC 20: 21: param #t2
I21:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_n_factorial_i_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # <CONSTANT>: [$t1]
    # v_n_factorial_i_s2: [$t0]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t2
    # DEBUG: Collected parameter #1: #t2

    # TAC 21: 22: #t3 = call factorial_i, 1
I22:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_n_factorial_i_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # <CONSTANT>: [$t1]
    # v_n_factorial_i_s2: [$t0]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call factorial_i with 1 arguments
    # === Caller-Save: Spill dirty registers before call ===
    sw $t0, 8($fp)
    # DEBUG: Saved v_n_factorial_i_s2 from $t0 to 8($fp)
    sw $t1, 0($fp)
    # DEBUG: Saved <CONSTANT> from $t1 to 0($fp)
    sw $t2, -8($fp)
    # DEBUG: Saved #t2 from $t2 to -8($fp)
    # === End Caller-Save (saved 3 registers) ===
    addiu $sp, $sp, -4
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    lw $t0, -8($fp)
    # DEBUG: Loaded #t2 from memory at -8($fp)
    # DEBUG: Param 0 (#t2) in $t0
    sw $t0, 8($sp)
    # DEBUG: Stored param 0 on stack at 8($sp)
    move $a0, $t0
    # DEBUG: Copied param 0 to $a0
    jal factorial_i
    # DEBUG: Called factorial_i
    addiu $sp, $sp, 4
    # DEBUG: Deallocate 4 bytes of parameter space
    move $t1, $v0
    # DEBUG: Return value from $v0 to $t1
    # DEBUG: #t3 = return value in $t1 (dirty)

    # TAC 22: 23: #t4 = v_n_factorial_i_s2 * #t3
I23:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t2]
    # $t1: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = v_n_factorial_i_s2 mul #t3
    lw $t2, 8($fp)
    # DEBUG: Loaded v_n_factorial_i_s2 from memory at 8($fp)
    # DEBUG: v_n_factorial_i_s2 in $t2
    # DEBUG: #t3 in $t1
    mul $t3, $t2, $t1
    # DEBUG: #t4 = result in $t3 (dirty)

    # TAC 23: 24: return #t4
I24:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t2]
    # $t1: [#t3] (dirty)
    # $t2: [v_n_factorial_i_s2]
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1]
    # #t4: [$t3]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [$t2, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 2 dirty registers
    sw $t1, -12($fp)
    # DEBUG: Spilled #t3 from $t1 to memory at -12($fp)
    sw $t3, -16($fp)
    # DEBUG: Spilled #t4 from $t3 to memory at -16($fp)
    # return #t4
    # DEBUG: #t4 in $t3
    move $v0, $t3
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B16_i24_i24 ===
    # ======================================
    # Registers cleared at block start
    # TAC 24: 25: end function factorial_i
I25:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for factorial_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: factorial_i


    # ======================================
    # === B17_i25_i32 ===
    # ======================================
    # Registers cleared at block start
    # TAC 25: 26: function begin : main
I26:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 56 bytes
    addiu $sp, $sp, -56
    # Allocate 56 bytes (8 for $ra+$fp, 56 for locals/temps)
    sw $ra, 52($sp)
    # Save return address at 60($sp)
    sw $fp, 48($sp)
    # Save old frame pointer at 56($sp)
    addiu $fp, $sp, 48
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 26: 27: param 5
I27:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 5
    # DEBUG: Collected parameter #1: 5

    # TAC 27: 28: #t5 = call factorial_i, 1
I28:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call factorial_i with 1 arguments
    # === Caller-Save: Spill dirty registers before call ===
    # === End Caller-Save (saved 0 registers) ===
    addiu $sp, $sp, -4
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    li $t0, 5
    # DEBUG: Loaded constant param 0 = 5
    sw $t0, 8($sp)
    # DEBUG: Stored param 0 on stack at 8($sp)
    move $a0, $t0
    # DEBUG: Copied param 0 to $a0
    jal factorial_i
    # DEBUG: Called factorial_i
    addiu $sp, $sp, 4
    # DEBUG: Deallocate 4 bytes of parameter space
    move $t0, $v0
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t5 = return value in $t0 (dirty)

    # TAC 28: 29: v_x_main_s2 = #t5
I29:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = #t5
    # DEBUG: #t5 already in $t0
    # DEBUG: v_x_main_s2 now also in $t0 (dirty)
    sw $t0, -4($fp)
    # DEBUG: Saved v_x_main_s2 to memory at -4($fp)

    # TAC 29: 30: param v_x_main_s2
I30:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t5, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #1: v_x_main_s2

    # TAC 30: 31: #t6 = call print_int_i, 1
I31:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t5, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 31: 32: #t7 = call print_newline, 0
I32:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t5, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 32: 33: return v_x_main_s2
I33:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t5, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -8($fp)
    # DEBUG: Spilled #t5 from $t0 to memory at -8($fp)
    sw $t0, -4($fp)
    # DEBUG: Spilled v_x_main_s2 from $t0 to memory at -4($fp)
    # return v_x_main_s2
    # DEBUG: v_x_main_s2 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B18_i33_i33 ===
    # ======================================
    # Registers cleared at block start
    # TAC 33: 34: end function main
I34:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-8($fp)]
    # <CONSTANT>: [memory:0($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main


    # End of code
