    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 14

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


    # TAC: 2: if v_x_foo_i_i_s2   goto I4
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Conditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # if v_x_foo_i_i_s2 ?? 0 goto I4
    lw $t0, 8($fp)
    # DEBUG: Loaded v_x_foo_i_i_s2 from memory at 8($fp)
    # DEBUG: v_x_foo_i_i_s2 in $t0
    bne $t0, $zero, I4
    # Branch to I4 if condition true

    # TAC: 3: goto I6
I3:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I6
    j I6

    # TAC: 4: #t1 = 0
I4:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    li $t1, 0
    # DEBUG: #t1 = constant 0 loaded in $t1 (dirty)

    # TAC: 5: goto I7
I5:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t1, -8($fp)
    # DEBUG: Spilled #t1 from $t1 to memory at -8($fp)
    # Unconditional jump to I7
    j I7

    # TAC: 6: #t1 = 1
I6:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1, memory:-8($fp)]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    li $t2, 1
    # DEBUG: #t1 = constant 1 loaded in $t2 (dirty)

    # TAC: 7: v_p_foo_i_i_s2 = #t1
I7:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_p_foo_i_i_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_p_foo_i_i_s2 now also in $t2 (dirty)

    # TAC: 8: return 0
I8:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_p_foo_i_i_s2: [$t2]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -8($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -8($fp)
    sw $t2, -4($fp)
    # DEBUG: Spilled v_p_foo_i_i_s2 from $t2 to memory at -4($fp)

    # TAC: 9: end function foo_i_i
I9:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_p_foo_i_i_s2: [$t2, memory:-4($fp)]
    # v_x_foo_i_i_s2: [$t0]
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
    addiu $sp, $sp, 32
    # Deallocate frame (32 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: foo_i_i

    # TAC: 10: function begin : main
I10:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_p_foo_i_i_s2: [$t2, memory:-4($fp)]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 12 bytes
    addiu $sp, $sp, -20
    # Allocate 20 bytes (8 for $ra+$fp, 12 for locals/temps)
    sw $ra, 16($sp)
    # Save return address at 16($sp)
    sw $fp, 12($sp)
    # Save old frame pointer at 12($sp)
    addiu $fp, $sp, 12
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 11: param 5
I11:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_p_foo_i_i_s2: [$t2, memory:-4($fp)]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # TODO: Implement TAC op type 26

    # TAC: 12: param 10
I12:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_p_foo_i_i_s2: [$t2, memory:-4($fp)]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # TODO: Implement TAC op type 26

    # TAC: 13: #t2 = call foo_i_i, 2
I13:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_p_foo_i_i_s2: [$t2, memory:-4($fp)]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Function call - spilling dirty registers
    # DEBUG: No dirty registers to spill

    # TAC: 14: end function main
I14:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # v_p_foo_i_i_s2: [$t2, memory:-4($fp)]
    # v_x_foo_i_i_s2: [$t0]
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
