    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 39
    # Total TAC instructions: 41

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
    # Block B5: i6-i8
    # Block B6: i9-i9
    # Block B7: i10-i10
    # Block B8: i11-i12
    # Block B9: i13-i13
    # Block B10: i14-i14
    # Block B11: i15-i15
    # Block B12: i16-i18
    # Block B13: i19-i20
    # Block B14: i21-i21
    # Block B15: i22-i23
    # Block B16: i24-i24
    # Block B17: i25-i25
    # Block B18: i26-i26
    # Block B19: i27-i29
    # Block B20: i30-i33
    # Block B21: i34-i37
    # Block B22: i38-i38
    # Block B5: i6-i7
    # Block B6: i8-i8
    # Block B7: i9-i11
    # Block B8: i12-i12
    # Block B9: i13-i13
    # Block B10: i14-i15
    # Block B11: i16-i16
    # Block B12: i17-i17
    # Block B13: i18-i18
    # Block B14: i19-i22
    # Block B15: i23-i23
    # Block B16: i24-i25
    # Block B17: i26-i26
    # Block B18: i27-i27
    # Block B19: i28-i28
    # Block B20: i29-i31
    # Block B21: i32-i35
    # Block B22: i36-i39
    # Block B23: i40-i40

.data
    # String Literals
    # (no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : print_int_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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
    # DEBUG: Parameter 0 (v_n_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_n_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_n_print_int_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: end function print_int_i
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
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
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: function begin : print_newline
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
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


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: end function print_newline
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
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
    # === B5_i6_i8 ===
    # === B7_i9_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 84 bytes
    addiu $sp, $sp, -84
    # Allocate 84 bytes (8 for $ra+$fp, 84 for locals/temps)
    sw $ra, 80($sp)
    # Save return address at 88($sp)
    sw $fp, 76($sp)
    # Save old frame pointer at 84($sp)
    addiu $fp, $sp, 76
    # Frame size: 84 bytes
    addiu $sp, $sp, -84
    # Allocate 84 bytes (8 for $ra+$fp, 84 for locals/temps)
    sw $ra, 80($sp)
    # Save return address at 88($sp)
    sw $fp, 76($sp)
    # Save old frame pointer at 84($sp)
    addiu $fp, $sp, 76
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 7: 8: v_sum_main_s2 = 0
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_main_s2 = 0
    li $t0, 0
    # DEBUG: v_sum_main_s2 = constant 0 loaded in $t0 (dirty)

    # TAC 8: 9: v_i_main_s2 = 1
I9:
    # --- Register Descriptor ---
    # $t0: [v_sum_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = 1
    li $t1, 1
    # DEBUG: v_i_main_s2 = constant 1 loaded in $t1 (dirty)

    # End of block B5 - spilling all registers
    # DEBUG: Spilling 2 dirty registers
    sw $t0, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t0 to memory at -8($fp)
    sw $t1, -4($fp)
    # DEBUG: Spilled v_i_main_s2 from $t1 to memory at -4($fp)

    # ======================================
    # === B6_i9_i9 ===
    # ======================================
    # Registers cleared at block start
    # TAC 9: 10: if v_i_main_s2 <= 10 goto I12
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_i_main_s2 <= 10 goto I12
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 10
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: 10 in $t1
    ble $t0, $t1, I12
    # Branch to I12 if condition true


    # ======================================
    # === B7_i10_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 10: 11: goto I14
    # TAC 10: 11: v_sum_main_s2 = 0
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I14
    j I14


    # ======================================
    # === B8_i11_i12 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: #t1 = 1
    # Assignment: v_sum_main_s2 = 0
    li $t0, 0
    # DEBUG: v_sum_main_s2 = constant 0 loaded in $t0 (dirty)

    # TAC 11: 12: v_i_main_s2 = 1
I12:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_sum_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_sum_main_s2: [$t0]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    li $t0, 1
    # DEBUG: #t1 = constant 1 loaded in $t0 (dirty)

    # TAC 12: 13: goto I15
    # Assignment: v_i_main_s2 = 1
    li $t1, 1
    # DEBUG: v_i_main_s2 = constant 1 loaded in $t1 (dirty)

    # End of block B7 - spilling all registers
    # DEBUG: Spilling 2 dirty registers
    sw $t0, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t0 to memory at -8($fp)
    sw $t1, -4($fp)
    # DEBUG: Spilled v_i_main_s2 from $t1 to memory at -4($fp)

    # ======================================
    # === B8_i12_i12 ===
    # ======================================
    # Registers cleared at block start
    # TAC 12: 13: if v_i_main_s2 <= 10 goto I15
I13:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -12($fp)
    # Unconditional jump to I15
    j I15


    # ======================================
    # === B9_i13_i13 ===
    # ======================================
    # Registers cleared at block start
    # TAC 13: 14: #t1 = 0
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_i_main_s2 <= 10 goto I15
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 10
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: 10 in $t1
    ble $t0, $t1, I15
    # Branch to I15 if condition true


    # ======================================
    # === B9_i13_i13 ===
    # ======================================
    # Registers cleared at block start
    # TAC 13: 14: goto I17
I14:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    li $t0, 0
    # DEBUG: #t1 = constant 0 loaded in $t0 (dirty)

    # End of block B9 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -12($fp)

    # ======================================
    # === B10_i14_i14 ===
    # ======================================
    # Registers cleared at block start
    # TAC 14: 15: if #t1   goto I20
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I17
    j I17


    # ======================================
    # === B10_i14_i15 ===
    # ======================================
    # Registers cleared at block start
    # TAC 14: 15: #t1 = 1
I15:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t1 ?? 0 goto I20
    lw $t0, -12($fp)
    # DEBUG: Loaded #t1 from memory at -12($fp)
    # DEBUG: #t1 in $t0
    bne $t0, $zero, I20
    # Branch to I20 if condition true


    # ======================================
    # === B11_i15_i15 ===
    # ======================================
    # Registers cleared at block start
    # TAC 15: 16: goto I35
    # Assignment: #t1 = 1
    li $t0, 1
    # DEBUG: #t1 = constant 1 loaded in $t0 (dirty)

    # TAC 15: 16: goto I18
I16:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # #t1: [$t0]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I35
    j I35


    # ======================================
    # === B12_i16_i18 ===
    # ======================================
    # Registers cleared at block start
    # TAC 16: 17: #t2 = v_i_main_s2 + 1
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -12($fp)
    # Unconditional jump to I18
    j I18


    # ======================================
    # === B11_i16_i16 ===
    # ======================================
    # Registers cleared at block start
    # TAC 16: 17: #t1 = 0
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_i_main_s2 add 1
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 1
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t2 = result in $t2 (dirty)

    # TAC 17: 18: v_i_main_s2 = #t2
I18:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [$t2]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = #t2
    # DEBUG: #t2 already in $t2
    # DEBUG: v_i_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_i_main_s2 now also in $t2 (dirty)
    sw $t2, -4($fp)
    # DEBUG: Saved v_i_main_s2 to memory at -4($fp)

    # TAC 18: 19: goto I10
I19:
    # --- Register Descriptor ---
    # $t1: [<CONSTANT>]
    # $t2: [#t2, v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [$t2]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t2, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -16($fp)
    # DEBUG: Spilled #t2 from $t2 to memory at -16($fp)
    sw $t2, -4($fp)
    # DEBUG: Spilled v_i_main_s2 from $t2 to memory at -4($fp)
    # Unconditional jump to I10
    j I10


    # ======================================
    # === B13_i19_i20 ===
    # ======================================
    # Registers cleared at block start
    # TAC 19: 20: #t3 = v_i_main_s2 % 2
I20:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = v_i_main_s2 rem 2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 2
    # DEBUG: Loaded constant 2 into $t1
    # DEBUG: 2 in $t1
    rem $t2, $t0, $t1
    # DEBUG: #t3 = result in $t2 (dirty)

    # TAC 20: 21: if #t3 == 0 goto I23
I21:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t2]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -20($fp)
    # DEBUG: Spilled #t3 from $t2 to memory at -20($fp)
    # if #t3 == 0 goto I23
    # DEBUG: #t3 in $t2
    li $t3, 0
    # DEBUG: Loaded constant 0 into $t3
    # DEBUG: 0 in $t3
    beq $t2, $t3, I23
    # Branch to I23 if condition true


    # ======================================
    # === B14_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # TAC 21: 22: goto I25
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I25
    j I25


    # ======================================
    # === B15_i22_i23 ===
    # ======================================
    # Registers cleared at block start
    # TAC 22: 23: #t4 = 1
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = 1
    li $t0, 1
    # DEBUG: #t4 = constant 1 loaded in $t0 (dirty)

    # TAC 23: 24: goto I26
I24:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t0]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -24($fp)
    # DEBUG: Spilled #t4 from $t0 to memory at -24($fp)
    # Unconditional jump to I26
    j I26


    # ======================================
    # === B16_i24_i24 ===
    # ======================================
    # Registers cleared at block start
    # TAC 24: 25: #t4 = 0
I25:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = 0
    li $t0, 0
    # DEBUG: #t4 = constant 0 loaded in $t0 (dirty)

    # End of block B16 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -24($fp)
    # DEBUG: Spilled #t4 from $t0 to memory at -24($fp)

    # ======================================
    # === B17_i25_i25 ===
    # ======================================
    # Registers cleared at block start
    # TAC 25: 26: if #t4   goto I28
I26:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t4 ?? 0 goto I28
    lw $t0, -24($fp)
    # DEBUG: Loaded #t4 from memory at -24($fp)
    # DEBUG: #t4 in $t0
    bne $t0, $zero, I28
    # Branch to I28 if condition true


    # ======================================
    # === B18_i26_i26 ===
    # ======================================
    # Registers cleared at block start
    # TAC 26: 27: goto I31
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I31
    j I31


    # ======================================
    # === B19_i27_i29 ===
    # ======================================
    # Registers cleared at block start
    # TAC 27: 28: #t5 = v_sum_main_s2 + v_i_main_s2
I28:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = v_sum_main_s2 add v_i_main_s2
    lw $t0, -8($fp)
    # DEBUG: Loaded v_sum_main_s2 from memory at -8($fp)
    # DEBUG: v_sum_main_s2 in $t0
    lw $t1, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t5 = result in $t2 (dirty)

    # TAC 28: 29: v_sum_main_s2 = #t5
I29:
    # --- Register Descriptor ---
    # $t0: [v_sum_main_s2]
    # $t1: [v_i_main_s2]
    # $t2: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [$t2]
    # v_i_main_s2: [$t1, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_main_s2 = #t5
    # DEBUG: #t5 already in $t2
    # DEBUG: v_sum_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_sum_main_s2 now also in $t2 (dirty)
    sw $t2, -8($fp)
    # DEBUG: Saved v_sum_main_s2 to memory at -8($fp)

    # TAC 29: 30: goto I35
I30:
    # --- Register Descriptor ---
    # $t1: [v_i_main_s2]
    # $t2: [#t5, v_sum_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [$t2]
    # v_i_main_s2: [$t1, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [$t2, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -28($fp)
    # DEBUG: Spilled #t5 from $t2 to memory at -28($fp)
    sw $t2, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t2 to memory at -8($fp)
    # Unconditional jump to I35
    j I35


    # ======================================
    # === B20_i30_i33 ===
    # ======================================
    # Registers cleared at block start
    # TAC 30: 31: #t6 = v_i_main_s2 * 2
I31:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = v_i_main_s2 mul 2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 2
    # DEBUG: Loaded constant 2 into $t1
    # DEBUG: 2 in $t1
    mul $t2, $t0, $t1
    # DEBUG: #t6 = result in $t2 (dirty)

    # TAC 31: 32: #t7 = v_sum_main_s2 + #t6
I32:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [$t2]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = v_sum_main_s2 add #t6
    lw $t3, -8($fp)
    # DEBUG: Loaded v_sum_main_s2 from memory at -8($fp)
    # DEBUG: v_sum_main_s2 in $t3
    # DEBUG: #t6 in $t2
    add $t4, $t3, $t2
    # DEBUG: #t7 = result in $t4 (dirty)

    # TAC 32: 33: v_sum_main_s2 = #t7
I33:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t6] (dirty)
    # $t3: [v_sum_main_s2]
    # $t4: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [$t2]
    # #t7: [$t4]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [$t3, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_main_s2 = #t7
    # DEBUG: #t7 already in $t4
    # DEBUG: v_sum_main_s2 was in $t3, spilling all variables in that register
    # DEBUG: v_sum_main_s2 now also in $t4 (dirty)
    sw $t4, -8($fp)
    # DEBUG: Saved v_sum_main_s2 to memory at -8($fp)

    # TAC 33: 34: goto I17
I34:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t6] (dirty)
    # $t4: [#t7, v_sum_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [$t2]
    # #t7: [$t4]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [$t4, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 2 dirty registers
    sw $t2, -32($fp)
    # DEBUG: Spilled #t6 from $t2 to memory at -32($fp)
    sw $t4, -36($fp)
    # DEBUG: Spilled #t7 from $t4 to memory at -36($fp)
    sw $t4, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t4 to memory at -8($fp)
    # Unconditional jump to I17
    j I17


    # ======================================
    # === B21_i34_i37 ===
    # ======================================
    # Registers cleared at block start
    # TAC 34: 35: param v_sum_main_s2
I35:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_sum_main_s2
    # DEBUG: Collected parameter #1: v_sum_main_s2

    # TAC 35: 36: #t8 = call print_int_i, 1
I36:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    lw $t0, -8($fp)
    # DEBUG: Loaded v_sum_main_s2 from memory at -8($fp)
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 36: 37: #t9 = call print_newline, 0
I37:
    # --- Register Descriptor ---
    # $t0: [v_sum_main_s2]
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    li $t0, 0
    # DEBUG: #t1 = constant 0 loaded in $t0 (dirty)

    # End of block B11 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -12($fp)

    # ======================================
    # === B12_i17_i17 ===
    # ======================================
    # Registers cleared at block start
    # TAC 17: 18: if #t1   goto I20
I18:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t1 ?? 0 goto I20
    lw $t0, -12($fp)
    # DEBUG: Loaded #t1 from memory at -12($fp)
    # DEBUG: #t1 in $t0
    bne $t0, $zero, I20
    # Branch to I20 if condition true


    # ======================================
    # === B13_i18_i18 ===
    # ======================================
    # Registers cleared at block start
    # TAC 18: 19: goto I37
I19:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I37
    j I37


    # ======================================
    # === B14_i19_i22 ===
    # ======================================
    # Registers cleared at block start
    # TAC 19: 20: #t2 = v_i_main_s2 + 1
I20:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_i_main_s2 add 1
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 1
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t2 = result in $t2 (dirty)

    # TAC 20: 21: v_i_main_s2 = #t2
I21:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [$t2]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = #t2
    # DEBUG: #t2 already in $t2
    # DEBUG: v_i_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_i_main_s2 now also in $t2 (dirty)
    sw $t2, -4($fp)
    # DEBUG: Saved v_i_main_s2 to memory at -4($fp)

    # TAC 21: 22: #t3 = v_i_main_s2 % 2
I22:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t2, v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [$t2]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t2, memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = v_i_main_s2 rem 2
    # DEBUG: v_i_main_s2 in $t2
    li $t0, 2
    # DEBUG: Loaded constant 2 into $t0
    # DEBUG: 2 in $t0
    rem $t3, $t2, $t0
    # DEBUG: #t3 = result in $t3 (dirty)

    # TAC 22: 23: if #t3 == 0 goto I25
I23:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [<CONSTANT>]
    # $t1: [<CONSTANT>]
    # $t2: [#t2, v_i_main_s2] (dirty)
    # $t3: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [$t2]
    # #t3: [$t3]
    # <CONSTANT>: [$t0]
    # v_i_main_s2: [$t2, memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 2 dirty registers
    sw $t2, -16($fp)
    # DEBUG: Spilled #t2 from $t2 to memory at -16($fp)
    sw $t2, -4($fp)
    # DEBUG: Spilled v_i_main_s2 from $t2 to memory at -4($fp)
    sw $t3, -20($fp)
    # DEBUG: Spilled #t3 from $t3 to memory at -20($fp)
    # if #t3 == 0 goto I25
    # DEBUG: #t3 in $t3
    li $t4, 0
    # DEBUG: Loaded constant 0 into $t4
    # DEBUG: 0 in $t4
    beq $t3, $t4, I25
    # Branch to I25 if condition true


    # ======================================
    # === B15_i23_i23 ===
    # ======================================
    # Registers cleared at block start
    # TAC 23: 24: goto I27
I24:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I27
    j I27


    # ======================================
    # === B16_i24_i25 ===
    # ======================================
    # Registers cleared at block start
    # TAC 24: 25: #t4 = 1
I25:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = 1
    li $t0, 1
    # DEBUG: #t4 = constant 1 loaded in $t0 (dirty)

    # TAC 25: 26: goto I28
I26:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t0]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -24($fp)
    # DEBUG: Spilled #t4 from $t0 to memory at -24($fp)
    # Unconditional jump to I28
    j I28


    # ======================================
    # === B17_i26_i26 ===
    # ======================================
    # Registers cleared at block start
    # TAC 26: 27: #t4 = 0
I27:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = 0
    li $t0, 0
    # DEBUG: #t4 = constant 0 loaded in $t0 (dirty)

    # End of block B17 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -24($fp)
    # DEBUG: Spilled #t4 from $t0 to memory at -24($fp)

    # ======================================
    # === B18_i27_i27 ===
    # ======================================
    # Registers cleared at block start
    # TAC 27: 28: if #t4   goto I30
I28:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t4 ?? 0 goto I30
    lw $t0, -24($fp)
    # DEBUG: Loaded #t4 from memory at -24($fp)
    # DEBUG: #t4 in $t0
    bne $t0, $zero, I30
    # Branch to I30 if condition true


    # ======================================
    # === B19_i28_i28 ===
    # ======================================
    # Registers cleared at block start
    # TAC 28: 29: goto I33
I29:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I33
    j I33


    # ======================================
    # === B20_i29_i31 ===
    # ======================================
    # Registers cleared at block start
    # TAC 29: 30: #t5 = v_sum_main_s2 + v_i_main_s2
I30:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = v_sum_main_s2 add v_i_main_s2
    lw $t0, -8($fp)
    # DEBUG: Loaded v_sum_main_s2 from memory at -8($fp)
    # DEBUG: v_sum_main_s2 in $t0
    lw $t1, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t5 = result in $t2 (dirty)

    # TAC 30: 31: v_sum_main_s2 = #t5
I31:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_sum_main_s2]
    # $t1: [v_i_main_s2]
    # $t2: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [$t2]
    # v_i_main_s2: [$t1, memory:-4($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_main_s2 = #t5
    # DEBUG: #t5 already in $t2
    # DEBUG: v_sum_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_sum_main_s2 now also in $t2 (dirty)
    sw $t2, -8($fp)
    # DEBUG: Saved v_sum_main_s2 to memory at -8($fp)

    # TAC 31: 32: goto I13
I32:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t1: [v_i_main_s2]
    # $t2: [#t5, v_sum_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [$t2]
    # v_i_main_s2: [$t1, memory:-4($fp)]
    # v_sum_main_s2: [$t2, memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -28($fp)
    # DEBUG: Spilled #t5 from $t2 to memory at -28($fp)
    sw $t2, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t2 to memory at -8($fp)
    # Unconditional jump to I13
    j I13


    # ======================================
    # === B21_i32_i35 ===
    # ======================================
    # Registers cleared at block start
    # TAC 32: 33: #t6 = v_i_main_s2 * 2
I33:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = v_i_main_s2 mul 2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 2
    # DEBUG: Loaded constant 2 into $t1
    # DEBUG: 2 in $t1
    mul $t2, $t0, $t1
    # DEBUG: #t6 = result in $t2 (dirty)

    # TAC 33: 34: #t7 = v_sum_main_s2 + #t6
I34:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [$t2]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = v_sum_main_s2 add #t6
    lw $t3, -8($fp)
    # DEBUG: Loaded v_sum_main_s2 from memory at -8($fp)
    # DEBUG: v_sum_main_s2 in $t3
    # DEBUG: #t6 in $t2
    add $t4, $t3, $t2
    # DEBUG: #t7 = result in $t4 (dirty)

    # TAC 34: 35: v_sum_main_s2 = #t7
I35:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t6] (dirty)
    # $t3: [v_sum_main_s2]
    # $t4: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [$t2]
    # #t7: [$t4]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_sum_main_s2: [$t3, memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_main_s2 = #t7
    # DEBUG: #t7 already in $t4
    # DEBUG: v_sum_main_s2 was in $t3, spilling all variables in that register
    # DEBUG: v_sum_main_s2 now also in $t4 (dirty)
    sw $t4, -8($fp)
    # DEBUG: Saved v_sum_main_s2 to memory at -8($fp)

    # TAC 35: 36: goto I13
I36:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_i_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t6] (dirty)
    # $t4: [#t7, v_sum_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [$t2]
    # #t7: [$t4]
    # <CONSTANT>: [$t1]
    # v_i_main_s2: [$t0, memory:-4($fp)]
    # v_sum_main_s2: [$t4, memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 2 dirty registers
    sw $t2, -32($fp)
    # DEBUG: Spilled #t6 from $t2 to memory at -32($fp)
    sw $t4, -36($fp)
    # DEBUG: Spilled #t7 from $t4 to memory at -36($fp)
    sw $t4, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t4 to memory at -8($fp)
    # Unconditional jump to I13
    j I13


    # ======================================
    # === B22_i36_i39 ===
    # ======================================
    # Registers cleared at block start
    # TAC 36: 37: param v_sum_main_s2
I37:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_sum_main_s2
    # DEBUG: Collected parameter #1: v_sum_main_s2

    # TAC 37: 38: #t8 = call print_int_i, 1
I38:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    lw $t0, -8($fp)
    # DEBUG: Loaded v_sum_main_s2 from memory at -8($fp)
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 38: 39: #t9 = call print_newline, 0
I39:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_sum_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 37: 38: return v_sum_main_s2
I38:
    # TAC 39: 40: return v_sum_main_s2
I40:
    # --- Register Descriptor ---
    # $t0: [v_sum_main_s2]
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_sum_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return v_sum_main_s2
    # DEBUG: v_sum_main_s2 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0
    # DEBUG: No dirty registers to spill
    # return v_sum_main_s2
    # DEBUG: v_sum_main_s2 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B22_i38_i38 ===
    # === B23_i40_i40 ===
    # ======================================
    # Registers cleared at block start
    # TAC 38: 39: end function main
I39:
    # TAC 40: 41: end function main
I41:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
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
