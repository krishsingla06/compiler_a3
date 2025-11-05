    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 7

.data
    # Global variables

.text
.globl main

    # TAC: 1: function begin : main
    # Label (basic block start) - spilling dirty registers before label
    # DEBUG: No dirty registers to spill
    # Clearing register descriptor for basic block entry
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 20 bytes
    addiu $sp, $sp, -20
    # Allocate 20 bytes (8 for $ra+$fp, 20 for locals/temps)
    sw $ra, 16($sp)
    # Save return address at 24($sp)
    sw $fp, 12($sp)
    # Save old frame pointer at 20($sp)
    addiu $fp, $sp, 12
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 2: v_x_main_s2 = 5
    # Label (basic block start) - spilling dirty registers before label
    # DEBUG: No dirty registers to spill
    # Clearing register descriptor for basic block entry
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 5
    li $t0, 5
    # DEBUG: v_x_main_s2 = constant 5 loaded in $t0 (dirty)

    # TAC: 3: v_y_main_s2 = v_x_main_s2
    # Label (basic block start) - spilling dirty registers before label
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_x_main_s2 from $t0 to memory at -4($fp)
    # Clearing register descriptor for basic block entry
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = v_x_main_s2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # DEBUG: v_y_main_s2 loaded in $t0 (dirty)

    # TAC: 4: v_x_main_s2 = 10
    # Label (basic block start) - spilling dirty registers before label
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_x_main_s2 from $t0 to memory at -4($fp)
    sw $t0, -8($fp)
    # DEBUG: Spilled v_y_main_s2 from $t0 to memory at -8($fp)
    # Clearing register descriptor for basic block entry
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 10
    li $t0, 10
    # DEBUG: v_x_main_s2 = constant 10 loaded in $t0 (dirty)

    # TAC: 5: #t1 = v_x_main_s2 + v_y_main_s2
    # Label (basic block start) - spilling dirty registers before label
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_x_main_s2 from $t0 to memory at -4($fp)
    # Clearing register descriptor for basic block entry
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = v_x_main_s2 add v_y_main_s2
    lw $t0, -4($fp)
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # DEBUG: v_x_main_s2 in $t0
    lw $t1, -8($fp)
    # DEBUG: Loaded v_y_main_s2 from memory at -8($fp)
    # DEBUG: v_y_main_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # TAC: 6: return #t1
    # Label (basic block start) - spilling dirty registers before label
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -12($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -12($fp)
    # Clearing register descriptor for basic block entry
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # return #t1
    lw $t0, -12($fp)
    # DEBUG: Loaded #t1 from memory at -12($fp)
    # DEBUG: #t1 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0

    # TAC: 7: end function main
    # Label (basic block start) - spilling dirty registers before label
    # DEBUG: No dirty registers to spill
    # Clearing register descriptor for basic block entry
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
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
    addiu $sp, $sp, 20
    # Deallocate frame (20 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main

    # End of code
