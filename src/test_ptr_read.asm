    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 14

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i12
    # Block B2: i13-i13

.data
    # Global variables

.text
.globl main

    # ======================================
    # === B1_i0_i12 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : main
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
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


    # TAC 1: 2: v_a_main_s2 = 100
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = 100
    li $t0, 100
    # DEBUG: v_a_main_s2 = constant 100 loaded in $t0 (dirty)

    # TAC 2: 3: v_b_main_s2 = 200
I3:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_b_main_s2 = 200
    li $t1, 200
    # DEBUG: v_b_main_s2 = constant 200 loaded in $t1 (dirty)

    # TAC 3: 4: #t1 = & v_a_main_s2
I4:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t1 = &v_a_main_s2
    sw $t0, -4($fp)
    addiu $t0, $fp, -4
    # DEBUG: #t1 = address of v_a_main_s2 at -4($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)

    # TAC 4: 5: v_p_main_s2 = #t1
I5:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_p_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_p_main_s2 now also in $t0 (dirty)

    # TAC 5: 6: #t2 = & v_b_main_s2
I6:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [$t1]
    # v_p_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t2 = &v_b_main_s2
    sw $t1, -8($fp)
    addiu $t1, $fp, -8
    # DEBUG: #t2 = address of v_b_main_s2 at -8($fp)
    # DEBUG: #t2 (pointer) in $t1 (dirty)

    # TAC 6: 7: v_q_main_s2 = #t2
I7:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_q_main_s2 = #t2
    # DEBUG: #t2 already in $t1
    # DEBUG: v_q_main_s2 now also in $t1 (dirty)

    # TAC 7: 8: #t3 = * v_p_main_s2
I8:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [#t2, v_q_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [$t0]
    # v_q_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t3 = *v_p_main_s2
    # DEBUG: Pointer v_p_main_s2 already in $t0
    lw $t2, 0($t0)
    # DEBUG: Dereferenced *v_p_main_s2 into $t2
    # DEBUG: #t3 = *v_p_main_s2 in $t2 (dirty)

    # TAC 8: 9: v_x_main_s2 = #t3
I9:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [#t2, v_q_main_s2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [$t0]
    # v_q_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = #t3
    # DEBUG: #t3 already in $t2
    # DEBUG: v_x_main_s2 now also in $t2 (dirty)

    # TAC 9: 10: #t4 = * v_q_main_s2
I10:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [#t2, v_q_main_s2] (dirty)
    # $t2: [#t3, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [$t0]
    # v_q_main_s2: [$t1]
    # v_x_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # #t4 = *v_q_main_s2
    # DEBUG: Pointer v_q_main_s2 already in $t1
    lw $t3, 0($t1)
    # DEBUG: Dereferenced *v_q_main_s2 into $t3
    # DEBUG: #t4 = *v_q_main_s2 in $t3 (dirty)

    # TAC 10: 11: v_y_main_s2 = #t4
I11:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [#t2, v_q_main_s2] (dirty)
    # $t2: [#t3, v_x_main_s2] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [$t0]
    # v_q_main_s2: [$t1]
    # v_x_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = #t4
    # DEBUG: #t4 already in $t3
    # DEBUG: v_y_main_s2 now also in $t3 (dirty)

    # TAC 11: 12: #t5 = v_x_main_s2 + v_y_main_s2
I12:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [#t2, v_q_main_s2] (dirty)
    # $t2: [#t3, v_x_main_s2] (dirty)
    # $t3: [#t4, v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [$t0]
    # v_q_main_s2: [$t1]
    # v_x_main_s2: [$t2]
    # v_y_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # #t5 = v_x_main_s2 add v_y_main_s2
    # DEBUG: v_x_main_s2 in $t2
    # DEBUG: v_y_main_s2 in $t3
    add $t4, $t2, $t3
    # DEBUG: #t5 = result in $t4 (dirty)

    # TAC 12: 13: return #t5
I13:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_main_s2] (dirty)
    # $t1: [#t2, v_q_main_s2] (dirty)
    # $t2: [#t3, v_x_main_s2] (dirty)
    # $t3: [#t4, v_y_main_s2] (dirty)
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t4]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [$t0]
    # v_q_main_s2: [$t1]
    # v_x_main_s2: [$t2]
    # v_y_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 5 dirty registers
    sw $t0, -28($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -28($fp)
    sw $t0, -12($fp)
    # DEBUG: Spilled v_p_main_s2 from $t0 to memory at -12($fp)
    sw $t1, -32($fp)
    # DEBUG: Spilled #t2 from $t1 to memory at -32($fp)
    sw $t1, -16($fp)
    # DEBUG: Spilled v_q_main_s2 from $t1 to memory at -16($fp)
    sw $t2, -36($fp)
    # DEBUG: Spilled #t3 from $t2 to memory at -36($fp)
    sw $t2, -20($fp)
    # DEBUG: Spilled v_x_main_s2 from $t2 to memory at -20($fp)
    sw $t3, -40($fp)
    # DEBUG: Spilled #t4 from $t3 to memory at -40($fp)
    sw $t3, -24($fp)
    # DEBUG: Spilled v_y_main_s2 from $t3 to memory at -24($fp)
    sw $t4, -44($fp)
    # DEBUG: Spilled #t5 from $t4 to memory at -44($fp)
    # return #t5
    # DEBUG: #t5 in $t4
    move $v0, $t4
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B2_i13_i13 ===
    # ======================================
    # Registers cleared at block start
    # TAC 13: 14: end function main
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # v_a_main_s2: [memory:v_a_main_s2]
    # v_b_main_s2: [memory:v_b_main_s2]
    # v_p_main_s2: [memory:-12($fp)]
    # v_q_main_s2: [memory:-16($fp)]
    # v_x_main_s2: [memory:-20($fp)]
    # v_y_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 52
    # Deallocate frame (52 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main


    # End of code
