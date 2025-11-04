    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 5

.data
    # Global variables

.text
.globl main

    # TAC: 1: function begin : main_i_i
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


    # TAC: 2: #t1 = v_m_main_i_i_s2 + v_n_main_i_i_s2
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # #t1 = v_m_main_i_i_s2 add v_n_main_i_i_s2
    lw $t0, 8($fp)
    # DEBUG: Loaded v_m_main_i_i_s2 from memory at 8($fp)
    # DEBUG: v_m_main_i_i_s2 in $t0
    lw $t1, 12($fp)
    # DEBUG: Loaded v_n_main_i_i_s2 from memory at 12($fp)
    # DEBUG: v_n_main_i_i_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # TAC: 3: v_p_main_i_i_s2 = #t1
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
    # Assignment: v_p_main_i_i_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_p_main_i_i_s2 now also in $t2 (dirty)

    # TAC: 4: return v_p_main_i_i_s2
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # $t2: [#t1, v_p_main_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # v_p_main_i_i_s2: [$t2]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -12($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -12($fp)
    sw $t2, -4($fp)
    # DEBUG: Spilled v_p_main_i_i_s2 from $t2 to memory at -4($fp)

    # TAC: 5: end function main_i_i
    # --- Register Descriptor ---
    # $t0: [v_m_main_i_i_s2]
    # $t1: [v_n_main_i_i_s2]
    # $t2: [#t1, v_p_main_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-12($fp)]
    # v_m_main_i_i_s2: [$t0]
    # v_n_main_i_i_s2: [$t1]
    # v_p_main_i_i_s2: [$t2, memory:-4($fp)]
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
