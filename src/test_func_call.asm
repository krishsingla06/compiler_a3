    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 28

.data
    # Global variables

.text
.globl main

    # TAC: 1: function begin : add_i_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
add_i_i:
    # Function: add_i_i
    # === Function Prologue for add_i_i ===
    # Frame size: 24 bytes
    addiu $sp, $sp, -32
    # Allocate 32 bytes (8 for $ra+$fp, 24 for locals/temps)
    sw $ra, 28($sp)
    # Save return address at 28($sp)
    sw $fp, 24($sp)
    # Save old frame pointer at 24($sp)
    addiu $fp, $sp, 24
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 2: #t1 = v_a_add_i_i_s2 + v_b_add_i_i_s2
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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

    # TAC: 3: v_sum_add_i_i_s2 = #t1
I3:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_sum_add_i_i_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_sum_add_i_i_s2 now also in $t2 (dirty)

    # TAC: 4: return v_sum_add_i_i_s2
I4:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -8($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -8($fp)
    sw $t2, -4($fp)
    # DEBUG: Spilled v_sum_add_i_i_s2 from $t2 to memory at -4($fp)
    # return v_sum_add_i_i_s2
    # DEBUG: v_sum_add_i_i_s2 in $t2
    move $v0, $t2
    # DEBUG: Moved return value to $v0

    # TAC: 5: end function add_i_i
I5:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # === Function Epilogue for add_i_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 32
    # Deallocate frame (32 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: add_i_i

    # TAC: 6: function begin : multiply_i_i_i_i_i
I6:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # --- End Storage Descriptor ---
multiply_i_i_i_i_i:
    # Function: multiply_i_i_i_i_i
    # === Function Prologue for multiply_i_i_i_i_i ===
    # Frame size: 48 bytes
    addiu $sp, $sp, -56
    # Allocate 56 bytes (8 for $ra+$fp, 48 for locals/temps)
    sw $ra, 52($sp)
    # Save return address at 52($sp)
    sw $fp, 48($sp)
    # Save old frame pointer at 48($sp)
    addiu $fp, $sp, 48
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 7: #t2 = v_x_multiply_i_i_i_i_i_s2 * v_y_multiply_i_i_i_i_i_s2
I7:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_x_multiply_i_i_i_i_i_s2 mul v_y_multiply_i_i_i_i_i_s2
    lw $t3, 8($fp)
    # DEBUG: Loaded v_x_multiply_i_i_i_i_i_s2 from memory at 8($fp)
    # DEBUG: v_x_multiply_i_i_i_i_i_s2 in $t3
    lw $t4, 12($fp)
    # DEBUG: Loaded v_y_multiply_i_i_i_i_i_s2 from memory at 12($fp)
    # DEBUG: v_y_multiply_i_i_i_i_i_s2 in $t4
    mul $t5, $t3, $t4
    # DEBUG: #t2 = result in $t5 (dirty)

    # TAC: 8: #t3 = v_z_multiply_i_i_i_i_i_s2 * v_w_multiply_i_i_i_i_i_s2
I8:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t3 = v_z_multiply_i_i_i_i_i_s2 mul v_w_multiply_i_i_i_i_i_s2
    lw $t6, 16($fp)
    # DEBUG: Loaded v_z_multiply_i_i_i_i_i_s2 from memory at 16($fp)
    # DEBUG: v_z_multiply_i_i_i_i_i_s2 in $t6
    lw $t7, 20($fp)
    # DEBUG: Loaded v_w_multiply_i_i_i_i_i_s2 from memory at 20($fp)
    # DEBUG: v_w_multiply_i_i_i_i_i_s2 in $t7
    mul $t8, $t6, $t7
    # DEBUG: #t3 = result in $t8 (dirty)

    # TAC: 9: #t4 = #t2 + #t3
I9:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2] (dirty)
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5]
    # #t3: [$t8]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # #t4 = #t2 add #t3
    # DEBUG: #t2 in $t5
    # DEBUG: #t3 in $t8
    add $t9, $t5, $t8
    # DEBUG: #t4 = result in $t9 (dirty)

    # TAC: 10: #t5 = #t4 + v_extra_multiply_i_i_i_i_i_s2
I10:
    # --- Register Descriptor ---
    # $t0: [v_a_add_i_i_s2]
    # $t1: [v_b_add_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2] (dirty)
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3] (dirty)
    # $t9: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5]
    # #t3: [$t8]
    # #t4: [$t9]
    # v_a_add_i_i_s2: [$t0]
    # v_b_add_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # #t5 = #t4 add v_extra_multiply_i_i_i_i_i_s2
    # DEBUG: #t4 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    lw $t0, 24($fp)
    # DEBUG: Loaded v_extra_multiply_i_i_i_i_i_s2 from memory at 24($fp)
    # DEBUG: v_extra_multiply_i_i_i_i_i_s2 in $t0
    # DEBUG: Spilling register $t1 due to register pressure
    add $t1, $t9, $t0
    # DEBUG: #t5 = result in $t1 (dirty)

    # TAC: 11: v_result_multiply_i_i_i_i_i_s2 = #t5
I11:
    # --- Register Descriptor ---
    # $t0: [v_extra_multiply_i_i_i_i_i_s2]
    # $t1: [#t5] (dirty)
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2] (dirty)
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3] (dirty)
    # $t9: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5]
    # #t3: [$t8]
    # #t4: [$t9]
    # #t5: [$t1]
    # v_extra_multiply_i_i_i_i_i_s2: [$t0]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # Assignment: v_result_multiply_i_i_i_i_i_s2 = #t5
    # DEBUG: #t5 already in $t1
    # DEBUG: v_result_multiply_i_i_i_i_i_s2 now also in $t1 (dirty)

    # TAC: 12: return v_result_multiply_i_i_i_i_i_s2
I12:
    # --- Register Descriptor ---
    # $t0: [v_extra_multiply_i_i_i_i_i_s2]
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2] (dirty)
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2] (dirty)
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3] (dirty)
    # $t9: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5]
    # #t3: [$t8]
    # #t4: [$t9]
    # #t5: [$t1]
    # v_extra_multiply_i_i_i_i_i_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 4 dirty registers
    sw $t1, -20($fp)
    # DEBUG: Spilled #t5 from $t1 to memory at -20($fp)
    sw $t1, -4($fp)
    # DEBUG: Spilled v_result_multiply_i_i_i_i_i_s2 from $t1 to memory at -4($fp)
    sw $t5, -8($fp)
    # DEBUG: Spilled #t2 from $t5 to memory at -8($fp)
    sw $t8, -12($fp)
    # DEBUG: Spilled #t3 from $t8 to memory at -12($fp)
    sw $t9, -16($fp)
    # DEBUG: Spilled #t4 from $t9 to memory at -16($fp)
    # return v_result_multiply_i_i_i_i_i_s2
    # DEBUG: v_result_multiply_i_i_i_i_i_s2 in $t1
    move $v0, $t1
    # DEBUG: Moved return value to $v0

    # TAC: 13: end function multiply_i_i_i_i_i
I13:
    # --- Register Descriptor ---
    # $t0: [v_extra_multiply_i_i_i_i_i_s2]
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # === Function Epilogue for multiply_i_i_i_i_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 56
    # Deallocate frame (56 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: multiply_i_i_i_i_i

    # TAC: 14: function begin : main
I14:
    # --- Register Descriptor ---
    # $t0: [v_extra_multiply_i_i_i_i_i_s2]
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 28 bytes
    addiu $sp, $sp, -36
    # Allocate 36 bytes (8 for $ra+$fp, 28 for locals/temps)
    sw $ra, 32($sp)
    # Save return address at 32($sp)
    sw $fp, 28($sp)
    # Save old frame pointer at 28($sp)
    addiu $fp, $sp, 28
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 15: param 5
I15:
    # --- Register Descriptor ---
    # $t0: [v_extra_multiply_i_i_i_i_i_s2]
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # param 5
    # DEBUG: Collected parameter #1: 5

    # TAC: 16: param 10
I16:
    # --- Register Descriptor ---
    # $t0: [v_extra_multiply_i_i_i_i_i_s2]
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # param 10
    # DEBUG: Collected parameter #2: 10

    # TAC: 17: #t6 = call add_i_i, 2
I17:
    # --- Register Descriptor ---
    # $t0: [v_extra_multiply_i_i_i_i_i_s2]
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # v_extra_multiply_i_i_i_i_i_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # Function call - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # Call add_i_i with 2 arguments
    # DEBUG: Spilling register $t0 due to register pressure
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
    move $t0, $v0
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t6 = return value in $t0 (dirty)

    # TAC: 18: v_result1_main_s2 = #t6
I18:
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # Assignment: v_result1_main_s2 = #t6
    # DEBUG: #t6 already in $t0
    # DEBUG: v_result1_main_s2 now also in $t0 (dirty)

    # TAC: 19: param 2
I19:
    # --- Register Descriptor ---
    # $t0: [#t6, v_result1_main_s2] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [$t0]
    # v_result1_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # param 2
    # DEBUG: Collected parameter #1: 2

    # TAC: 20: param 3
I20:
    # --- Register Descriptor ---
    # $t0: [#t6, v_result1_main_s2] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [$t0]
    # v_result1_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # param 3
    # DEBUG: Collected parameter #2: 3

    # TAC: 21: param 4
I21:
    # --- Register Descriptor ---
    # $t0: [#t6, v_result1_main_s2] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [$t0]
    # v_result1_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # param 4
    # DEBUG: Collected parameter #3: 4

    # TAC: 22: param 5
I22:
    # --- Register Descriptor ---
    # $t0: [#t6, v_result1_main_s2] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [$t0]
    # v_result1_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # param 5
    # DEBUG: Collected parameter #4: 5

    # TAC: 23: param 6
I23:
    # --- Register Descriptor ---
    # $t0: [#t6, v_result1_main_s2] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [$t0]
    # v_result1_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # param 6
    # DEBUG: Collected parameter #5: 6

    # TAC: 24: #t7 = call multiply_i_i_i_i_i, 5
I24:
    # --- Register Descriptor ---
    # $t0: [#t6, v_result1_main_s2] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [$t0]
    # v_result1_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # Function call - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t6 from $t0 to memory at -12($fp)
    sw $t0, -4($fp)
    # DEBUG: Spilled v_result1_main_s2 from $t0 to memory at -4($fp)
    # Call multiply_i_i_i_i_i with 5 arguments
    # DEBUG: Spilling register $t0 due to register pressure
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
    move $t0, $v0
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t7 = return value in $t0 (dirty)

    # TAC: 25: v_result2_main_s2 = #t7
I25:
    # --- Register Descriptor ---
    # $t0: [#t7] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [$t0]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # Assignment: v_result2_main_s2 = #t7
    # DEBUG: #t7 already in $t0
    # DEBUG: v_result2_main_s2 now also in $t0 (dirty)

    # TAC: 26: #t8 = v_result1_main_s2 + v_result2_main_s2
I26:
    # --- Register Descriptor ---
    # $t0: [#t7, v_result2_main_s2] (dirty)
    # $t1: [#t5, v_result_multiply_i_i_i_i_i_s2]
    # $t2: [#t1, v_sum_add_i_i_s2]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [$t1, memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [$t0]
    # v_result1_main_s2: [memory:-4($fp)]
    # v_result2_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [$t1, memory:-4($fp)]
    # v_sum_add_i_i_s2: [$t2, memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # #t8 = v_result1_main_s2 add v_result2_main_s2
    # DEBUG: Spilling register $t1 due to register pressure
    lw $t1, -4($fp)
    # DEBUG: Loaded v_result1_main_s2 from memory at -4($fp)
    # DEBUG: v_result1_main_s2 in $t1
    # DEBUG: v_result2_main_s2 in $t0
    # DEBUG: Spilling register $t2 due to register pressure
    add $t2, $t1, $t0
    # DEBUG: #t8 = result in $t2 (dirty)

    # TAC: 27: return #t8
I27:
    # --- Register Descriptor ---
    # $t0: [#t7, v_result2_main_s2] (dirty)
    # $t1: [v_result1_main_s2]
    # $t2: [#t8] (dirty)
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [$t0]
    # #t8: [$t2]
    # v_result1_main_s2: [$t1, memory:-4($fp)]
    # v_result2_main_s2: [$t0]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 2 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t7 from $t0 to memory at -16($fp)
    sw $t0, -8($fp)
    # DEBUG: Spilled v_result2_main_s2 from $t0 to memory at -8($fp)
    sw $t2, -20($fp)
    # DEBUG: Spilled #t8 from $t2 to memory at -20($fp)
    # return #t8
    # DEBUG: #t8 in $t2
    move $v0, $t2
    # DEBUG: Moved return value to $v0

    # TAC: 28: end function main
I28:
    # --- Register Descriptor ---
    # $t0: [#t7, v_result2_main_s2]
    # $t1: [v_result1_main_s2]
    # $t2: [#t8]
    # $t3: [v_x_multiply_i_i_i_i_i_s2]
    # $t4: [v_y_multiply_i_i_i_i_i_s2]
    # $t5: [#t2]
    # $t6: [v_z_multiply_i_i_i_i_i_s2]
    # $t7: [v_w_multiply_i_i_i_i_i_s2]
    # $t8: [#t3]
    # $t9: [#t4]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [$t5, memory:-8($fp)]
    # #t3: [$t8, memory:-12($fp)]
    # #t4: [$t9, memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [$t0, memory:-16($fp)]
    # #t8: [$t2, memory:-20($fp)]
    # v_result1_main_s2: [$t1, memory:-4($fp)]
    # v_result2_main_s2: [$t0, memory:-8($fp)]
    # v_result_multiply_i_i_i_i_i_s2: [memory:-4($fp)]
    # v_sum_add_i_i_s2: [memory:-4($fp)]
    # v_w_multiply_i_i_i_i_i_s2: [$t7]
    # v_x_multiply_i_i_i_i_i_s2: [$t3]
    # v_y_multiply_i_i_i_i_i_s2: [$t4]
    # v_z_multiply_i_i_i_i_i_s2: [$t6]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 36
    # Deallocate frame (36 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main

    # End of code
