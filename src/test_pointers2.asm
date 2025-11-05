    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 15

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i13
    # Block B2: i14-i14

.data
    # Global variables

.text
.globl main

    # ======================================
    # === B1_i0_i13 ===
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


    # TAC 1: 2: v_x_main_s2 = 5
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 5
    li $t0, 5
    # DEBUG: v_x_main_s2 = constant 5 loaded in $t0 (dirty)

    # TAC 2: 3: v_y_main_s2 = 10
I3:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = 10
    li $t1, 10
    # DEBUG: v_y_main_s2 = constant 10 loaded in $t1 (dirty)

    # TAC 3: 4: #t1 = & v_x_main_s2
I4:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t1 = &v_x_main_s2
    sw $t0, -4($fp)
    addiu $t0, $fp, -4
    # DEBUG: #t1 = address of v_x_main_s2 at -4($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)

    # TAC 4: 5: v_ptr1_main_s2 = #t1
I5:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_ptr1_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_ptr1_main_s2 now also in $t0 (dirty)

    # TAC 5: 6: #t2 = & v_y_main_s2
I6:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_ptr1_main_s2: [$t0]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t2 = &v_y_main_s2
    sw $t1, -8($fp)
    addiu $t1, $fp, -8
    # DEBUG: #t2 = address of v_y_main_s2 at -8($fp)
    # DEBUG: #t2 (pointer) in $t1 (dirty)

    # TAC 6: 7: v_ptr2_main_s2 = #t2
I7:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_ptr1_main_s2: [$t0]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # Assignment: v_ptr2_main_s2 = #t2
    # DEBUG: #t2 already in $t1
    # DEBUG: v_ptr2_main_s2 now also in $t1 (dirty)

    # TAC 7: 8: #t3 = * v_ptr1_main_s2
I8:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2, v_ptr2_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_ptr1_main_s2: [$t0]
    # v_ptr2_main_s2: [$t1]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # #t3 = *v_ptr1_main_s2
    # DEBUG: Pointer v_ptr1_main_s2 already in $t0
    lw $t2, 0($t0)
    # DEBUG: Dereferenced *v_ptr1_main_s2 into $t2
    # DEBUG: #t3 = *v_ptr1_main_s2 in $t2 (dirty)

    # TAC 8: 9: #t3 = 20
I9:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2, v_ptr2_main_s2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # v_ptr1_main_s2: [$t0]
    # v_ptr2_main_s2: [$t1]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 20
    li $t3, 20
    # DEBUG: Removed #t3 from old register $t2
    # DEBUG: #t3 = constant 20 loaded in $t3 (dirty)

    # TAC 9: 10: #t4 = * v_ptr2_main_s2
I10:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2, v_ptr2_main_s2] (dirty)
    # $t3: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # v_ptr1_main_s2: [$t0]
    # v_ptr2_main_s2: [$t1]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # #t4 = *v_ptr2_main_s2
    # DEBUG: Pointer v_ptr2_main_s2 already in $t1
    sw $t3, -28($fp)
    lw $t3, 0($t1)
    # DEBUG: Dereferenced *v_ptr2_main_s2 into $t3
    # DEBUG: #t4 = *v_ptr2_main_s2 in $t3 (dirty)

    # TAC 10: 11: #t5 = * v_ptr1_main_s2
I11:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2, v_ptr2_main_s2] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [$t3]
    # v_ptr1_main_s2: [$t0]
    # v_ptr2_main_s2: [$t1]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # #t5 = *v_ptr1_main_s2
    # DEBUG: Pointer v_ptr1_main_s2 already in $t0
    lw $t4, 0($t0)
    # DEBUG: Dereferenced *v_ptr1_main_s2 into $t4
    # DEBUG: #t5 = *v_ptr1_main_s2 in $t4 (dirty)

    # TAC 11: 12: #t4 = #t5
I12:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2, v_ptr2_main_s2] (dirty)
    # $t3: [#t4] (dirty)
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [$t3]
    # #t5: [$t4]
    # v_ptr1_main_s2: [$t0]
    # v_ptr2_main_s2: [$t1]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = #t5
    # DEBUG: #t5 already in $t4
    # DEBUG: #t4 was in $t3, spilling all variables in that register
    sw $t3, -32($fp)
    # DEBUG: Spilled #t4 from $t3 to memory at -32($fp)
    # DEBUG: #t4 now also in $t4 (dirty)

    # TAC 12: 13: #t6 = v_x_main_s2 + v_y_main_s2
I13:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2, v_ptr2_main_s2] (dirty)
    # $t4: [#t4, #t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [$t4]
    # #t5: [$t4]
    # v_ptr1_main_s2: [$t0]
    # v_ptr2_main_s2: [$t1]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # #t6 = v_x_main_s2 add v_y_main_s2
    lw $t2, -4($fp)
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # DEBUG: v_x_main_s2 in $t2
    lw $t3, -8($fp)
    # DEBUG: Loaded v_y_main_s2 from memory at -8($fp)
    # DEBUG: v_y_main_s2 in $t3
    add $t5, $t2, $t3
    # DEBUG: #t6 = result in $t5 (dirty)

    # TAC 13: 14: return #t6
I14:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr1_main_s2] (dirty)
    # $t1: [#t2, v_ptr2_main_s2] (dirty)
    # $t2: [v_x_main_s2] (dirty)
    # $t3: [v_y_main_s2] (dirty)
    # $t4: [#t4, #t5] (dirty)
    # $t5: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [$t4]
    # #t5: [$t4]
    # #t6: [$t5]
    # v_ptr1_main_s2: [$t0]
    # v_ptr2_main_s2: [$t1]
    # v_x_main_s2: [$t2, memory:v_x_main_s2]
    # v_y_main_s2: [$t3, memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 6 dirty registers
    sw $t0, -20($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -20($fp)
    sw $t0, -12($fp)
    # DEBUG: Spilled v_ptr1_main_s2 from $t0 to memory at -12($fp)
    sw $t1, -24($fp)
    # DEBUG: Spilled #t2 from $t1 to memory at -24($fp)
    sw $t1, -16($fp)
    # DEBUG: Spilled v_ptr2_main_s2 from $t1 to memory at -16($fp)
    sw $t2, -4($fp)
    # DEBUG: Spilled v_x_main_s2 from $t2 to memory at -4($fp)
    sw $t3, -8($fp)
    # DEBUG: Spilled v_y_main_s2 from $t3 to memory at -8($fp)
    sw $t4, -32($fp)
    # DEBUG: Spilled #t4 from $t4 to memory at -32($fp)
    sw $t4, -36($fp)
    # DEBUG: Spilled #t5 from $t4 to memory at -36($fp)
    sw $t5, -40($fp)
    # DEBUG: Spilled #t6 from $t5 to memory at -40($fp)
    # return #t6
    # DEBUG: #t6 in $t5
    move $v0, $t5
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B2_i14_i14 ===
    # ======================================
    # Registers cleared at block start
    # TAC 14: 15: end function main
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-20($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-32($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # v_ptr1_main_s2: [memory:-12($fp)]
    # v_ptr2_main_s2: [memory:-16($fp)]
    # v_x_main_s2: [memory:-4($fp), memory:v_x_main_s2]
    # v_y_main_s2: [memory:-8($fp), memory:v_y_main_s2]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
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
    # End of function: main


    # End of code
