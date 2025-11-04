    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 18

.data
    # Global variables

.text
.globl main

    # TAC: 1: function begin : foo_i_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
foo_i_i:
    # Function: foo_i_i
    # === Function Prologue for foo_i_i ===
    # Frame size: 36 bytes
    addiu $sp, $sp, -44
    # Allocate 44 bytes (8 for $ra+$fp, 36 for locals/temps)
    sw $ra, 40($sp)
    # Save return address at 40($sp)
    sw $fp, 36($sp)
    # Save old frame pointer at 36($sp)
    addiu $fp, $sp, 36
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 2: v_p_foo_i_i_s2 = 1
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_p_foo_i_i_s2 = 1
    li $t0, 1
    # DEBUG: v_p_foo_i_i_s2 = constant 1 loaded in $t0 (dirty)

    # TAC: 3: v_q_foo_i_i_s2 = 2
I3:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_q_foo_i_i_s2 = 2
    li $t1, 2
    # DEBUG: v_q_foo_i_i_s2 = constant 2 loaded in $t1 (dirty)

    # TAC: 4: #t1 = v_p_foo_i_i_s2 + v_q_foo_i_i_s2
I4:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2] (dirty)
    # $t1: [v_q_foo_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_foo_i_i_s2: [$t0]
    # v_q_foo_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t1 = v_p_foo_i_i_s2 add v_q_foo_i_i_s2
    # DEBUG: v_p_foo_i_i_s2 in $t0
    # DEBUG: v_q_foo_i_i_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # TAC: 5: #t2 = #t1 + v_x_foo_i_i_s2
I5:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2] (dirty)
    # $t1: [v_q_foo_i_i_s2] (dirty)
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_p_foo_i_i_s2: [$t0]
    # v_q_foo_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t2 = #t1 add v_x_foo_i_i_s2
    # DEBUG: #t1 in $t2
    lw $t3, 8($fp)
    # DEBUG: Loaded v_x_foo_i_i_s2 from memory at 8($fp)
    # DEBUG: v_x_foo_i_i_s2 in $t3
    add $t4, $t2, $t3
    # DEBUG: #t2 = result in $t4 (dirty)

    # TAC: 6: #t3 = #t2 + v_y_foo_i_i_s2
I6:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2] (dirty)
    # $t1: [v_q_foo_i_i_s2] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t4]
    # v_p_foo_i_i_s2: [$t0]
    # v_q_foo_i_i_s2: [$t1]
    # v_x_foo_i_i_s2: [$t3]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add v_y_foo_i_i_s2
    # DEBUG: #t2 in $t4
    lw $t5, 12($fp)
    # DEBUG: Loaded v_y_foo_i_i_s2 from memory at 12($fp)
    # DEBUG: v_y_foo_i_i_s2 in $t5
    add $t6, $t4, $t5
    # DEBUG: #t3 = result in $t6 (dirty)

    # TAC: 7: return #t3
I7:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2] (dirty)
    # $t1: [v_q_foo_i_i_s2] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2] (dirty)
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t4]
    # #t3: [$t6]
    # v_p_foo_i_i_s2: [$t0]
    # v_q_foo_i_i_s2: [$t1]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 5 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_p_foo_i_i_s2 from $t0 to memory at -4($fp)
    sw $t1, -8($fp)
    # DEBUG: Spilled v_q_foo_i_i_s2 from $t1 to memory at -8($fp)
    sw $t2, -12($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -12($fp)
    sw $t4, -16($fp)
    # DEBUG: Spilled #t2 from $t4 to memory at -16($fp)
    sw $t6, -20($fp)
    # DEBUG: Spilled #t3 from $t6 to memory at -20($fp)

    # TAC: 8: end function foo_i_i
I8:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2]
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # v_p_foo_i_i_s2: [$t0, memory:-4($fp)]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # === Function Epilogue for foo_i_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 44
    # Deallocate frame (44 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: foo_i_i

    # TAC: 9: function begin : main_i_i
I9:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2]
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # v_p_foo_i_i_s2: [$t0, memory:-4($fp)]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
main_i_i:
    # Function: main_i_i
    # === Function Prologue for main_i_i ===
    # Frame size: 36 bytes
    addiu $sp, $sp, -44
    # Allocate 44 bytes (8 for $ra+$fp, 36 for locals/temps)
    sw $ra, 40($sp)
    # Save return address at 40($sp)
    sw $fp, 36($sp)
    # Save old frame pointer at 36($sp)
    addiu $fp, $sp, 36
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 10: #t4 = v_m_main_i_i_s2 + v_n_main_i_i_s2
I10:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2]
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # v_p_foo_i_i_s2: [$t0, memory:-4($fp)]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # #t4 = v_m_main_i_i_s2 add v_n_main_i_i_s2
    lw $t7, 8($fp)
    # DEBUG: Loaded v_m_main_i_i_s2 from memory at 8($fp)
    # DEBUG: v_m_main_i_i_s2 in $t7
    lw $t8, 12($fp)
    # DEBUG: Loaded v_n_main_i_i_s2 from memory at 12($fp)
    # DEBUG: v_n_main_i_i_s2 in $t8
    add $t9, $t7, $t8
    # DEBUG: #t4 = result in $t9 (dirty)

    # TAC: 11: v_p_main_i_i_s2 = #t4
I11:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2]
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [$t0, memory:-4($fp)]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # Assignment: v_p_main_i_i_s2 = #t4
    # DEBUG: #t4 already in $t9
    # DEBUG: v_p_main_i_i_s2 now also in $t9 (dirty)

    # TAC: 12: #t5 = v_m_main_i_i_s2 - v_n_main_i_i_s2
I12:
    # --- Register Descriptor ---
    # $t0: [v_p_foo_i_i_s2]
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4, v_p_main_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [$t0, memory:-4($fp)]
    # v_p_main_i_i_s2: [$t9]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # #t5 = v_m_main_i_i_s2 sub v_n_main_i_i_s2
    # DEBUG: v_m_main_i_i_s2 in $t7
    # DEBUG: v_n_main_i_i_s2 in $t8
    # DEBUG: Spilling register $t0 due to register pressure
    sub $t0, $t7, $t8
    # DEBUG: #t5 = result in $t0 (dirty)

    # TAC: 13: v_q_main_i_i_s2 = #t5
I13:
    # --- Register Descriptor ---
    # $t0: [#t5] (dirty)
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4, v_p_main_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9]
    # #t5: [$t0]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [memory:-4($fp)]
    # v_p_main_i_i_s2: [$t9]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # Assignment: v_q_main_i_i_s2 = #t5
    # DEBUG: #t5 already in $t0
    # DEBUG: v_q_main_i_i_s2 now also in $t0 (dirty)

    # TAC: 14: param v_p_main_i_i_s2
I14:
    # --- Register Descriptor ---
    # $t0: [#t5, v_q_main_i_i_s2] (dirty)
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4, v_p_main_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9]
    # #t5: [$t0]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [memory:-4($fp)]
    # v_p_main_i_i_s2: [$t9]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_q_main_i_i_s2: [$t0]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # TODO: Implement TAC op type 27

    # TAC: 15: param v_q_main_i_i_s2
I15:
    # --- Register Descriptor ---
    # $t0: [#t5, v_q_main_i_i_s2] (dirty)
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4, v_p_main_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9]
    # #t5: [$t0]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [memory:-4($fp)]
    # v_p_main_i_i_s2: [$t9]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_q_main_i_i_s2: [$t0]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # TODO: Implement TAC op type 27

    # TAC: 16: #t6 = call foo_i_i, 2
I16:
    # --- Register Descriptor ---
    # $t0: [#t5, v_q_main_i_i_s2] (dirty)
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4, v_p_main_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9]
    # #t5: [$t0]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [memory:-4($fp)]
    # v_p_main_i_i_s2: [$t9]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_q_main_i_i_s2: [$t0]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # Function call - spilling dirty registers
    # DEBUG: Spilling 2 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t5 from $t0 to memory at -16($fp)
    sw $t0, -8($fp)
    # DEBUG: Spilled v_q_main_i_i_s2 from $t0 to memory at -8($fp)
    sw $t9, -12($fp)
    # DEBUG: Spilled #t4 from $t9 to memory at -12($fp)
    sw $t9, -4($fp)
    # DEBUG: Spilled v_p_main_i_i_s2 from $t9 to memory at -4($fp)

    # TAC: 17: return #t6
I17:
    # --- Register Descriptor ---
    # $t0: [#t5, v_q_main_i_i_s2]
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4, v_p_main_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9, memory:-12($fp)]
    # #t5: [$t0, memory:-16($fp)]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [memory:-4($fp)]
    # v_p_main_i_i_s2: [$t9, memory:-4($fp)]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_q_main_i_i_s2: [$t0, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: No dirty registers to spill

    # TAC: 18: end function main_i_i
I18:
    # --- Register Descriptor ---
    # $t0: [#t5, v_q_main_i_i_s2]
    # $t1: [v_q_foo_i_i_s2]
    # $t2: [#t1]
    # $t3: [v_x_foo_i_i_s2]
    # $t4: [#t2]
    # $t5: [v_y_foo_i_i_s2]
    # $t6: [#t3]
    # $t7: [v_m_main_i_i_s2]
    # $t8: [v_n_main_i_i_s2]
    # $t9: [#t4, v_p_main_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # #t2: [$t4, memory:-16($fp)]
    # #t3: [$t6, memory:-20($fp)]
    # #t4: [$t9, memory:-12($fp)]
    # #t5: [$t0, memory:-16($fp)]
    # v_m_main_i_i_s2: [$t7]
    # v_n_main_i_i_s2: [$t8]
    # v_p_foo_i_i_s2: [memory:-4($fp)]
    # v_p_main_i_i_s2: [$t9, memory:-4($fp)]
    # v_q_foo_i_i_s2: [$t1, memory:-8($fp)]
    # v_q_main_i_i_s2: [$t0, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t3]
    # v_y_foo_i_i_s2: [$t5]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # === Function Epilogue for main_i_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 44
    # Deallocate frame (44 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main_i_i

    # End of code
