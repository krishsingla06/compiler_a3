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
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0

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
    addiu $sp, $sp, 24
    # Deallocate frame (24 bytes)
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


    # TAC: 11: param v_p_main_s2
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
    # param v_p_main_s2
    # DEBUG: Collected parameter #1: v_p_main_s2

    # TAC: 12: param v_q_main_s2
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
    # param v_q_main_s2
    # DEBUG: Collected parameter #2: v_q_main_s2

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
    # Call foo_i_i with 2 arguments
    addiu $sp, $sp, -8
    # DEBUG: Allocate 8 bytes for 2 parameters + $ra/$fp
    lw $t3, -8($fp)
    # DEBUG: Loaded v_q_main_s2 from memory at -8($fp)
    # DEBUG: Param 0 (v_q_main_s2) in $t3
    sw $t3, 0($sp)
    # DEBUG: Stored param 0 on stack at 0($sp)
    move $a0, $t3
    # DEBUG: Copied param 0 to $a0
    lw $t4, -4($fp)
    # DEBUG: Loaded v_p_main_s2 from memory at -4($fp)
    # DEBUG: Param 1 (v_p_main_s2) in $t4
    sw $t4, 4($sp)
    # DEBUG: Stored param 1 on stack at 4($sp)
    move $a1, $t4
    # DEBUG: Copied param 1 to $a1
    jal foo_i_i
    # DEBUG: Called foo_i_i
    addiu $sp, $sp, 8
    # DEBUG: Deallocate 8 bytes of parameter space
    move $t5, $v0
    # DEBUG: Return value from $v0 to $t5
    # DEBUG: #t2 = return value in $t5 (dirty)

    # TAC: 14: end function main
I14:
    # --- Register Descriptor ---
    # $t0: [v_x_foo_i_i_s2]
    # $t1: [#t1]
    # $t2: [#t1, v_p_foo_i_i_s2]
    # $t3: [v_q_main_s2]
    # $t4: [v_p_main_s2]
    # $t5: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2, memory:-8($fp)]
    # #t2: [$t5]
    # v_p_foo_i_i_s2: [$t2, memory:-4($fp)]
    # v_p_main_s2: [$t4]
    # v_q_main_s2: [$t3]
    # v_x_foo_i_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t5, -12($fp)
    # DEBUG: Spilled #t2 from $t5 to memory at -12($fp)
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
