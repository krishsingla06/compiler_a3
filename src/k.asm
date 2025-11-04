    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 9

.data
    # Global variables

.text
.globl main

    # TAC: 1: function begin : main_i_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main_i_i:
    # Function: main_i_i
    # === Function Prologue for main_i_i ===
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


    # TAC: 2: if v_m_main_i_i_s2 < v_n_main_i_i_s2 goto I4
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Conditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # if v_m_main_i_i_s2 < v_n_main_i_i_s2 goto I4
    lw $t0, 8($fp)
    # DEBUG: Loaded v_m_main_i_i_s2 from memory at 8($fp)
    # DEBUG: v_m_main_i_i_s2 in $t0
    lw $t1, 12($fp)
    # DEBUG: Loaded v_n_main_i_i_s2 from memory at 12($fp)
    # DEBUG: v_n_main_i_i_s2 in $t1
    blt $t0, $t1, I4
    # Branch to I4 if condition true

    # TAC: 3: goto I6
I3:
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I6
    j I6

    # TAC: 4: #t1 = 1
I4:
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    li $t2, 1
    # DEBUG: #t1 = constant 1 loaded in $t2 (dirty)

    # TAC: 5: goto I7
I5:
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -12($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -12($fp)
    # Unconditional jump to I7
    j I7

    # TAC: 6: #t1 = 0
I6:
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # $t2: [#t1]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    li $t3, 0
    # DEBUG: #t1 = constant 0 loaded in $t3 (dirty)

    # TAC: 7: v_p_main_i_i_s2 = #t1
I7:
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # $t2: [#t1]
    # $t3: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3]
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_p_main_i_i_s2 = #t1
    # DEBUG: #t1 already in $t3
    # DEBUG: v_p_main_i_i_s2 now also in $t3 (dirty)

    # TAC: 8: return v_p_main_i_i_s2
I8:
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # $t2: [#t1]
    # $t3: [#t1, v_p_main_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3]
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # v_p_main_i_i_s2: [$t3]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t3, -12($fp)
    # DEBUG: Spilled #t1 from $t3 to memory at -12($fp)
    sw $t3, -4($fp)
    # DEBUG: Spilled v_p_main_i_i_s2 from $t3 to memory at -4($fp)

    # TAC: 9: end function main_i_i
I9:
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # $t2: [#t1]
    # $t3: [#t1, v_p_main_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3, memory:-12($fp)]
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # v_p_main_i_i_s2: [$t3, memory:-4($fp)]
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
    addiu $sp, $sp, 36
    # Deallocate frame (36 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main_i_i

    # End of code
