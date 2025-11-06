    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 42

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
    # Block B12: i16-i16
    # Block B13: i17-i17
    # Block B14: i18-i19
    # Block B15: i20-i20
    # Block B16: i21-i21
    # Block B17: i22-i22
    # Block B18: i23-i23
    # Block B19: i24-i24
    # Block B20: i25-i25
    # Block B21: i26-i27
    # Block B22: i28-i28
    # Block B23: i29-i29
    # Block B24: i30-i30
    # Block B25: i31-i31
    # Block B26: i32-i36
    # Block B27: i37-i40
    # Block B28: i41-i41

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
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) at 8($fp)
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) also in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 0
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: end function print_int_i
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: function begin : print_newline
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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


    # TAC 4: 5: return 0
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: end function print_newline
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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
    # === B5_i6_i8 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
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
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 7: 8: v_i_main_s2 = 10
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = 10
    li $t0, 10
    # DEBUG: v_i_main_s2 = constant 10 loaded in $t0 (dirty)

    # TAC 8: 9: v_sum_main_s2 = 0
I9:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_main_s2 = 0
    li $t1, 0
    # DEBUG: v_sum_main_s2 = constant 0 loaded in $t1 (dirty)

    # End of block B5 - spilling all registers
    # DEBUG: Spilling 2 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_i_main_s2 from $t0 to memory at -4($fp)
    sw $t1, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t1 to memory at -8($fp)

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
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    li $t0, 1
    # DEBUG: #t1 = constant 1 loaded in $t0 (dirty)

    # TAC 12: 13: goto I15
I13:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
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
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
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
    # TAC 14: 15: if #t1   goto I17
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t1 ?? 0 goto I17
    lw $t0, -12($fp)
    # DEBUG: Loaded #t1 from memory at -12($fp)
    # DEBUG: #t1 in $t0
    bne $t0, $zero, I17
    # Branch to I17 if condition true


    # ======================================
    # === B11_i15_i15 ===
    # ======================================
    # Registers cleared at block start
    # TAC 15: 16: goto I38
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I38
    j I38


    # ======================================
    # === B12_i16_i16 ===
    # ======================================
    # Registers cleared at block start
    # TAC 16: 17: if v_i_main_s2 == 5 goto I19
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_i_main_s2 == 5 goto I19
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 5
    # DEBUG: Loaded constant 5 into $t1
    # DEBUG: 5 in $t1
    beq $t0, $t1, I19
    # Branch to I19 if condition true


    # ======================================
    # === B13_i17_i17 ===
    # ======================================
    # Registers cleared at block start
    # TAC 17: 18: goto I21
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I21
    j I21


    # ======================================
    # === B14_i18_i19 ===
    # ======================================
    # Registers cleared at block start
    # TAC 18: 19: #t2 = 1
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 1
    li $t0, 1
    # DEBUG: #t2 = constant 1 loaded in $t0 (dirty)

    # TAC 19: 20: goto I22
I20:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [$t0]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t2 from $t0 to memory at -16($fp)
    # Unconditional jump to I22
    j I22


    # ======================================
    # === B15_i20_i20 ===
    # ======================================
    # Registers cleared at block start
    # TAC 20: 21: #t2 = 0
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 0
    li $t0, 0
    # DEBUG: #t2 = constant 0 loaded in $t0 (dirty)

    # End of block B15 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t2 from $t0 to memory at -16($fp)

    # ======================================
    # === B16_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # TAC 21: 22: if #t2   goto I24
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t2 ?? 0 goto I24
    lw $t0, -16($fp)
    # DEBUG: Loaded #t2 from memory at -16($fp)
    # DEBUG: #t2 in $t0
    bne $t0, $zero, I24
    # Branch to I24 if condition true


    # ======================================
    # === B17_i22_i22 ===
    # ======================================
    # Registers cleared at block start
    # TAC 22: 23: goto I25
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I25
    j I25


    # ======================================
    # === B18_i23_i23 ===
    # ======================================
    # Registers cleared at block start
    # TAC 23: 24: goto I10
I24:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I10
    j I10


    # ======================================
    # === B19_i24_i24 ===
    # ======================================
    # Registers cleared at block start
    # TAC 24: 25: if v_i_main_s2 == 8 goto I27
I25:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_i_main_s2 == 8 goto I27
    lw $t0, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t0
    li $t1, 8
    # DEBUG: Loaded constant 8 into $t1
    # DEBUG: 8 in $t1
    beq $t0, $t1, I27
    # Branch to I27 if condition true


    # ======================================
    # === B20_i25_i25 ===
    # ======================================
    # Registers cleared at block start
    # TAC 25: 26: goto I29
I26:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I29
    j I29


    # ======================================
    # === B21_i26_i27 ===
    # ======================================
    # Registers cleared at block start
    # TAC 26: 27: #t3 = 1
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 1
    li $t0, 1
    # DEBUG: #t3 = constant 1 loaded in $t0 (dirty)

    # TAC 27: 28: goto I30
I28:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t0]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -20($fp)
    # DEBUG: Spilled #t3 from $t0 to memory at -20($fp)
    # Unconditional jump to I30
    j I30


    # ======================================
    # === B22_i28_i28 ===
    # ======================================
    # Registers cleared at block start
    # TAC 28: 29: #t3 = 0
I29:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 0
    li $t0, 0
    # DEBUG: #t3 = constant 0 loaded in $t0 (dirty)

    # End of block B22 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -20($fp)
    # DEBUG: Spilled #t3 from $t0 to memory at -20($fp)

    # ======================================
    # === B23_i29_i29 ===
    # ======================================
    # Registers cleared at block start
    # TAC 29: 30: if #t3   goto I32
I30:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t3 ?? 0 goto I32
    lw $t0, -20($fp)
    # DEBUG: Loaded #t3 from memory at -20($fp)
    # DEBUG: #t3 in $t0
    bne $t0, $zero, I32
    # Branch to I32 if condition true


    # ======================================
    # === B24_i30_i30 ===
    # ======================================
    # Registers cleared at block start
    # TAC 30: 31: goto I33
I31:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I33
    j I33


    # ======================================
    # === B25_i31_i31 ===
    # ======================================
    # Registers cleared at block start
    # TAC 31: 32: goto I38
I32:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I38
    j I38


    # ======================================
    # === B26_i32_i36 ===
    # ======================================
    # Registers cleared at block start
    # TAC 32: 33: #t4 = v_sum_main_s2 + v_i_main_s2
I33:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = v_sum_main_s2 add v_i_main_s2
    lw $t0, -8($fp)
    # DEBUG: Loaded v_sum_main_s2 from memory at -8($fp)
    # DEBUG: v_sum_main_s2 in $t0
    lw $t1, -4($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -4($fp)
    # DEBUG: v_i_main_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t4 = result in $t2 (dirty)

    # TAC 33: 34: v_sum_main_s2 = #t4
I34:
    # --- Register Descriptor ---
    # $t0: [v_sum_main_s2]
    # $t1: [v_i_main_s2]
    # $t2: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t2]
    # v_i_main_s2: [$t1, memory:-4($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_main_s2 = #t4
    # DEBUG: #t4 already in $t2
    # DEBUG: v_sum_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_sum_main_s2 now also in $t2 (dirty)
    sw $t2, -8($fp)
    # DEBUG: Saved v_sum_main_s2 to memory at -8($fp)

    # TAC 34: 35: #t5 = v_i_main_s2 + 1
I35:
    # --- Register Descriptor ---
    # $t1: [v_i_main_s2]
    # $t2: [#t4, v_sum_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t2]
    # v_i_main_s2: [$t1, memory:-4($fp)]
    # v_sum_main_s2: [$t2, memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = v_i_main_s2 add 1
    # DEBUG: v_i_main_s2 in $t1
    li $t0, 1
    # DEBUG: Loaded constant 1 into $t0
    # DEBUG: 1 in $t0
    add $t3, $t1, $t0
    # DEBUG: #t5 = result in $t3 (dirty)

    # TAC 35: 36: v_i_main_s2 = #t5
I36:
    # --- Register Descriptor ---
    # $t0: [<CONSTANT>]
    # $t1: [v_i_main_s2]
    # $t2: [#t4, v_sum_main_s2] (dirty)
    # $t3: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t2]
    # #t5: [$t3]
    # <CONSTANT>: [$t0]
    # v_i_main_s2: [$t1, memory:-4($fp)]
    # v_sum_main_s2: [$t2, memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = #t5
    # DEBUG: #t5 already in $t3
    # DEBUG: v_i_main_s2 was in $t1, spilling all variables in that register
    # DEBUG: v_i_main_s2 now also in $t3 (dirty)
    sw $t3, -4($fp)
    # DEBUG: Saved v_i_main_s2 to memory at -4($fp)

    # TAC 36: 37: goto I10
I37:
    # --- Register Descriptor ---
    # $t0: [<CONSTANT>]
    # $t2: [#t4, v_sum_main_s2] (dirty)
    # $t3: [#t5, v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t2]
    # #t5: [$t3]
    # <CONSTANT>: [$t0]
    # v_i_main_s2: [$t3, memory:-4($fp)]
    # v_sum_main_s2: [$t2, memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 2 dirty registers
    sw $t2, -24($fp)
    # DEBUG: Spilled #t4 from $t2 to memory at -24($fp)
    sw $t2, -8($fp)
    # DEBUG: Spilled v_sum_main_s2 from $t2 to memory at -8($fp)
    sw $t3, -28($fp)
    # DEBUG: Spilled #t5 from $t3 to memory at -28($fp)
    sw $t3, -4($fp)
    # DEBUG: Spilled v_i_main_s2 from $t3 to memory at -4($fp)
    # Unconditional jump to I10
    j I10


    # ======================================
    # === B27_i37_i40 ===
    # ======================================
    # Registers cleared at block start
    # TAC 37: 38: param v_sum_main_s2
I38:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_sum_main_s2
    # DEBUG: Collected parameter #1: v_sum_main_s2

    # TAC 38: 39: #t6 = call print_int_i, 1
I39:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
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

    # TAC 39: 40: #t7 = call print_newline, 0
I40:
    # --- Register Descriptor ---
    # $t0: [v_sum_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 40: 41: return v_sum_main_s2
I41:
    # --- Register Descriptor ---
    # $t0: [v_sum_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [$t0, memory:-8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return v_sum_main_s2
    # DEBUG: v_sum_main_s2 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B28_i41_i41 ===
    # ======================================
    # Registers cleared at block start
    # TAC 41: 42: end function main
I42:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # v_i_main_s2: [memory:-4($fp)]
    # v_sum_main_s2: [memory:-8($fp)]
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
