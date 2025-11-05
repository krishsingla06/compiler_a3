    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 28

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i0
    # Block B2: i1-i1
    # Block B3: i2-i2
    # Block B4: i3-i3
    # Block B5: i4-i4
    # Block B6: i5-i5
    # Block B7: i6-i6
    # Block B8: i7-i7
    # Block B9: i8-i8
    # Block B10: i9-i9
    # Block B11: i10-i10
    # Block B12: i11-i11
    # Block B13: i12-i12
    # Block B14: i13-i13
    # Block B15: i14-i14
    # Block B16: i15-i15
    # Block B17: i16-i16
    # Block B18: i17-i17
    # Block B19: i18-i18
    # Block B20: i19-i19
    # Block B21: i20-i20
    # Block B22: i21-i21
    # Block B23: i22-i22
    # Block B24: i23-i23
    # Block B25: i24-i24
    # Block B26: i25-i25
    # Block B27: i26-i26
    # Block B28: i27-i27

.data
    # Global variables

.text
.globl main

    # ======================================
    # === B1_i0_i0 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : add_i_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
add_i_i:
    # Function: add_i_i
    # === Function Prologue for add_i_i ===
    # Frame size: 24 bytes
    addiu $sp, $sp, -24
    # Allocate 24 bytes (8 for $ra+$fp, 24 for locals/temps)
    sw $ra, 20($sp)
    # Save return address at 28($sp)
    sw $fp, 16($sp)
    # Save old frame pointer at 24($sp)
    addiu $fp, $sp, 16
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_a_add_i_i_s2) at 8($fp)
    # DEBUG: Parameter 0 (v_a_add_i_i_s2) also in $a0
    # DEBUG: Parameter 1 (v_b_add_i_i_s2) at 12($fp)
    # DEBUG: Parameter 1 (v_b_add_i_i_s2) also in $a1
    # === End Parameter Initialization ===


    # End of block B1 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B2_i1_i1 ===
    # ======================================
    # Registers cleared at block start
    # TAC 1: 2: #t1 = v_a_add_i_i_s2 + v_b_add_i_i_s2
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t1 = v_a_add_i_i_s2 add v_b_add_i_i_s2
    lw $t0, 8($fp)
    # DEBUG: Loaded v_a_add_i_i_s2 from memory at 8($fp)
    # DEBUG: v_a_add_i_i_s2 in $t0
    lw $t1, 12($fp)
    # DEBUG: Loaded v_b_add_i_i_s2 from memory at 12($fp)
    # DEBUG: v_b_add_i_i_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # End of block B2 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -8($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -8($fp)

    # ======================================
    # === B3_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: v_sum_add_i_i_s2 = #t1
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_add_i_i_s2 = #t1
    lw $t0, -8($fp)
    # DEBUG: Loaded #t1 from memory at -8($fp)
    # DEBUG: v_sum_add_i_i_s2 loaded in $t0 (dirty)

    # End of block B3 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -8($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -8($fp)
    sw $t0, -4($fp)
    # DEBUG: Spilled v_sum_add_i_i_s2 from $t0 to memory at -4($fp)

    # ======================================
    # === B4_i3_i3 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: return v_sum_add_i_i_s2
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # return v_sum_add_i_i_s2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_sum_add_i_i_s2 from memory at -4($fp)
    # DEBUG: v_sum_add_i_i_s2 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0

    # End of block B4 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B5_i4_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 4: 5: end function add_i_i
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for add_i_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 24
    # Deallocate frame (24 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: add_i_i

    # End of block B5 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B6_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: function begin : multiply_i_i_i_i_i
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
multiply_i_i_i_i_i:
    # Function: multiply_i_i_i_i_i
    # === Function Prologue for multiply_i_i_i_i_i ===
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

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_multiply_i_i_i_i_i_s2) at 8($fp)
    # DEBUG: Parameter 0 (v_x_multiply_i_i_i_i_i_s2) also in $a0
    # DEBUG: Parameter 1 (v_y_multiply_i_i_i_i_i_s2) at 12($fp)
    # DEBUG: Parameter 1 (v_y_multiply_i_i_i_i_i_s2) also in $a1
    # DEBUG: Parameter 2 (v_z_multiply_i_i_i_i_i_s2) at 16($fp)
    # DEBUG: Parameter 2 (v_z_multiply_i_i_i_i_i_s2) also in $a2
    # DEBUG: Parameter 3 (v_w_multiply_i_i_i_i_i_s2) at 20($fp)
    # DEBUG: Parameter 3 (v_w_multiply_i_i_i_i_i_s2) also in $a3
    # DEBUG: Parameter 4 (v_extra_multiply_i_i_i_i_i_s2) at 24($fp)
    # === End Parameter Initialization ===


    # End of block B6 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B7_i6_i6 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: #t2 = v_x_multiply_i_i_i_i_i_s2 * v_y_multiply_i_i_i_i_i_s2
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_x_multiply_i_i_i_i_i_s2 mul v_y_multiply_i_i_i_i_i_s2
    lw $t0, 8($fp)
    # DEBUG: Loaded v_x_multiply_i_i_i_i_i_s2 from memory at 8($fp)
    # DEBUG: v_x_multiply_i_i_i_i_i_s2 in $t0
    lw $t1, 12($fp)
    # DEBUG: Loaded v_y_multiply_i_i_i_i_i_s2 from memory at 12($fp)
    # DEBUG: v_y_multiply_i_i_i_i_i_s2 in $t1
    mul $t2, $t0, $t1
    # DEBUG: #t2 = result in $t2 (dirty)

    # End of block B7 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -8($fp)
    # DEBUG: Spilled #t2 from $t2 to memory at -8($fp)

    # ======================================
    # === B8_i7_i7 ===
    # ======================================
    # Registers cleared at block start
    # TAC 7: 8: #t3 = v_z_multiply_i_i_i_i_i_s2 * v_w_multiply_i_i_i_i_i_s2
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # #t3 = v_z_multiply_i_i_i_i_i_s2 mul v_w_multiply_i_i_i_i_i_s2
    lw $t0, 16($fp)
    # DEBUG: Loaded v_z_multiply_i_i_i_i_i_s2 from memory at 16($fp)
    # DEBUG: v_z_multiply_i_i_i_i_i_s2 in $t0
    lw $t1, 20($fp)
    # DEBUG: Loaded v_w_multiply_i_i_i_i_i_s2 from memory at 20($fp)
    # DEBUG: v_w_multiply_i_i_i_i_i_s2 in $t1
    mul $t2, $t0, $t1
    # DEBUG: #t3 = result in $t2 (dirty)

    # End of block B8 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -12($fp)
    # DEBUG: Spilled #t3 from $t2 to memory at -12($fp)

    # ======================================
    # === B9_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # TAC 8: 9: #t4 = #t2 + #t3
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # #t4 = #t2 add #t3
    lw $t0, -8($fp)
    # DEBUG: Loaded #t2 from memory at -8($fp)
    # DEBUG: #t2 in $t0
    lw $t1, -12($fp)
    # DEBUG: Loaded #t3 from memory at -12($fp)
    # DEBUG: #t3 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t4 = result in $t2 (dirty)

    # End of block B9 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -16($fp)
    # DEBUG: Spilled #t4 from $t2 to memory at -16($fp)

    # ======================================
    # === B10_i9_i9 ===
    # ======================================
    # Registers cleared at block start
    # TAC 9: 10: #t5 = #t4 + v_extra_multiply_i_i_i_i_i_s2
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # #t5 = #t4 add v_extra_multiply_i_i_i_i_i_s2
    lw $t0, -16($fp)
    # DEBUG: Loaded #t4 from memory at -16($fp)
    # DEBUG: #t4 in $t0
    lw $t1, 24($fp)
    # DEBUG: Loaded v_extra_multiply_i_i_i_i_i_s2 from memory at 24($fp)
    # DEBUG: v_extra_multiply_i_i_i_i_i_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t5 = result in $t2 (dirty)

    # End of block B10 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -20($fp)
    # DEBUG: Spilled #t5 from $t2 to memory at -20($fp)

    # ======================================
    # === B11_i10_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 10: 11: v_result_multiply_i_i_i_i_i_s2 = #t5
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_multiply_i_i_i_i_i_s2 = #t5
    lw $t0, -20($fp)
    # DEBUG: Loaded #t5 from memory at -20($fp)
    # DEBUG: v_result_multiply_i_i_i_i_i_s2 loaded in $t0 (dirty)

    # End of block B11 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -20($fp)
    # DEBUG: Spilled #t5 from $t0 to memory at -20($fp)
    sw $t0, -4($fp)
    # DEBUG: Spilled v_result_multiply_i_i_i_i_i_s2 from $t0 to memory at -4($fp)

    # ======================================
    # === B12_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: return v_result_multiply_i_i_i_i_i_s2
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # return v_result_multiply_i_i_i_i_i_s2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_result_multiply_i_i_i_i_i_s2 from memory at -4($fp)
    # DEBUG: v_result_multiply_i_i_i_i_i_s2 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0

    # End of block B12 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B13_i12_i12 ===
    # ======================================
    # Registers cleared at block start
    # TAC 12: 13: end function multiply_i_i_i_i_i
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for multiply_i_i_i_i_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 48
    # Deallocate frame (48 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: multiply_i_i_i_i_i

    # End of block B13 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B14_i13_i13 ===
    # ======================================
    # Registers cleared at block start
    # TAC 13: 14: function begin : main
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 28 bytes
    addiu $sp, $sp, -28
    # Allocate 28 bytes (8 for $ra+$fp, 28 for locals/temps)
    sw $ra, 24($sp)
    # Save return address at 32($sp)
    sw $fp, 20($sp)
    # Save old frame pointer at 28($sp)
    addiu $fp, $sp, 20
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # End of block B14 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B15_i14_i14 ===
    # ======================================
    # Registers cleared at block start
    # TAC 14: 15: param 5
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # param 5
    # DEBUG: Collected parameter #1: 5

    # End of block B15 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B16_i15_i15 ===
    # ======================================
    # Registers cleared at block start
    # TAC 15: 16: param 10
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # param 10
    # DEBUG: Collected parameter #2: 10

    # End of block B16 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B17_i16_i16 ===
    # ======================================
    # Registers cleared at block start
    # TAC 16: 17: #t6 = call add_i_i, 2
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # Call add_i_i with 2 arguments
    addiu $sp, $sp, -16
    # DEBUG: Allocate 16 bytes for 2 parameters + $ra/$fp
    li $t0, 10
    # DEBUG: Loaded constant param 0 = 10
    sw $t0, 8($sp)
    # DEBUG: Stored param 0 on stack at 8($sp)
    move $a0, $t0
    # DEBUG: Copied param 0 to $a0
    li $t0, 5
    # DEBUG: Loaded constant param 1 = 5
    sw $t0, 12($sp)
    # DEBUG: Stored param 1 on stack at 12($sp)
    move $a1, $t0
    # DEBUG: Copied param 1 to $a1
    jal add_i_i
    # DEBUG: Called add_i_i
    addiu $sp, $sp, 16
    # DEBUG: Deallocate 16 bytes of parameter space
    move $t0, $v0
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t6 = return value in $t0 (dirty)

    # End of block B17 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t6 from $t0 to memory at -12($fp)

    # ======================================
    # === B18_i17_i17 ===
    # ======================================
    # Registers cleared at block start
    # TAC 17: 18: v_result1_main_s2 = #t6
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result1_main_s2 = #t6
    lw $t0, -12($fp)
    # DEBUG: Loaded #t6 from memory at -12($fp)
    # DEBUG: v_result1_main_s2 loaded in $t0 (dirty)

    # End of block B18 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t6 from $t0 to memory at -12($fp)
    sw $t0, -4($fp)
    # DEBUG: Spilled v_result1_main_s2 from $t0 to memory at -4($fp)

    # ======================================
    # === B19_i18_i18 ===
    # ======================================
    # Registers cleared at block start
    # TAC 18: 19: param 2
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # param 2
    # DEBUG: Collected parameter #1: 2

    # End of block B19 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B20_i19_i19 ===
    # ======================================
    # Registers cleared at block start
    # TAC 19: 20: param 3
I20:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # param 3
    # DEBUG: Collected parameter #2: 3

    # End of block B20 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B21_i20_i20 ===
    # ======================================
    # Registers cleared at block start
    # TAC 20: 21: param 4
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # param 4
    # DEBUG: Collected parameter #3: 4

    # End of block B21 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B22_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # TAC 21: 22: param 5
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # param 5
    # DEBUG: Collected parameter #4: 5

    # End of block B22 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B23_i22_i22 ===
    # ======================================
    # Registers cleared at block start
    # TAC 22: 23: param 6
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # param 6
    # DEBUG: Collected parameter #5: 6

    # End of block B23 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B24_i23_i23 ===
    # ======================================
    # Registers cleared at block start
    # TAC 23: 24: #t7 = call multiply_i_i_i_i_i, 5
I24:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # Call multiply_i_i_i_i_i with 5 arguments
    addiu $sp, $sp, -28
    # DEBUG: Allocate 28 bytes for 5 parameters + $ra/$fp
    li $t0, 6
    # DEBUG: Loaded constant param 0 = 6
    sw $t0, 8($sp)
    # DEBUG: Stored param 0 on stack at 8($sp)
    move $a0, $t0
    # DEBUG: Copied param 0 to $a0
    li $t0, 5
    # DEBUG: Loaded constant param 1 = 5
    sw $t0, 12($sp)
    # DEBUG: Stored param 1 on stack at 12($sp)
    move $a1, $t0
    # DEBUG: Copied param 1 to $a1
    li $t0, 4
    # DEBUG: Loaded constant param 2 = 4
    sw $t0, 16($sp)
    # DEBUG: Stored param 2 on stack at 16($sp)
    move $a2, $t0
    # DEBUG: Copied param 2 to $a2
    li $t0, 3
    # DEBUG: Loaded constant param 3 = 3
    sw $t0, 20($sp)
    # DEBUG: Stored param 3 on stack at 20($sp)
    move $a3, $t0
    # DEBUG: Copied param 3 to $a3
    li $t0, 2
    # DEBUG: Loaded constant param 4 = 2
    sw $t0, 24($sp)
    # DEBUG: Stored param 4 on stack at 24($sp)
    jal multiply_i_i_i_i_i
    # DEBUG: Called multiply_i_i_i_i_i
    addiu $sp, $sp, 28
    # DEBUG: Deallocate 28 bytes of parameter space
    move $t0, $v0
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t7 = return value in $t0 (dirty)

    # End of block B24 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t7 from $t0 to memory at -16($fp)

    # ======================================
    # === B25_i24_i24 ===
    # ======================================
    # Registers cleared at block start
    # TAC 24: 25: v_result2_main_s2 = #t7
I25:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result2_main_s2 = #t7
    lw $t0, -16($fp)
    # DEBUG: Loaded #t7 from memory at -16($fp)
    # DEBUG: v_result2_main_s2 loaded in $t0 (dirty)

    # End of block B25 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t7 from $t0 to memory at -16($fp)
    sw $t0, -8($fp)
    # DEBUG: Spilled v_result2_main_s2 from $t0 to memory at -8($fp)

    # ======================================
    # === B26_i25_i25 ===
    # ======================================
    # Registers cleared at block start
    # TAC 25: 26: #t8 = v_result1_main_s2 + v_result2_main_s2
I26:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result2_main_s2: [memory:-8($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # #t8 = v_result1_main_s2 add v_result2_main_s2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_result1_main_s2 from memory at -4($fp)
    # DEBUG: v_result1_main_s2 in $t0
    lw $t1, -8($fp)
    # DEBUG: Loaded v_result2_main_s2 from memory at -8($fp)
    # DEBUG: v_result2_main_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t8 = result in $t2 (dirty)

    # End of block B26 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -20($fp)
    # DEBUG: Spilled #t8 from $t2 to memory at -20($fp)

    # ======================================
    # === B27_i26_i26 ===
    # ======================================
    # Registers cleared at block start
    # TAC 26: 27: return #t8
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result2_main_s2: [memory:-8($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # return #t8
    lw $t0, -20($fp)
    # DEBUG: Loaded #t8 from memory at -20($fp)
    # DEBUG: #t8 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0

    # End of block B27 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B28_i27_i27 ===
    # ======================================
    # Registers cleared at block start
    # TAC 27: 28: end function main
I28:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-20($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [memory:24($fp)]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result2_main_s2: [memory:-8($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [memory:20($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [memory:8($fp)]
    # v_y_multiply_i_i_i_i_i_s2: [memory:12($fp)]
    # v_z_multiply_i_i_i_i_i_s2: [memory:16($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 28
    # Deallocate frame (28 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main

    # End of block B28 - spilling all registers
    # DEBUG: No dirty registers to spill

    # End of code
