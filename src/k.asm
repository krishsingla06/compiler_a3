    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 9

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i8

.data
    # Global variables

.text
.globl main

    # ======================================
    # === B1_i0_i8 ===
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
    # Frame size: 32 bytes
    addiu $sp, $sp, -32
    # Allocate 32 bytes (8 for $ra+$fp, 32 for locals/temps)
    sw $ra, 28($sp)
    # Save return address at 36($sp)
    sw $fp, 24($sp)
    # Save old frame pointer at 32($sp)
    addiu $fp, $sp, 24
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 1: 2: #t1 = * v_x_main_s2
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # #t1 = *v_x_main_s2
    lw $t0, -4($fp)
    # DEBUG: Loaded pointer v_x_main_s2 from memory at -4($fp)
    lw $t1, 0($t0)
    # DEBUG: Dereferenced *v_x_main_s2 into $t1
    # DEBUG: #t1 = *v_x_main_s2 in $t1 (dirty)

    # TAC 2: 3: *(#t1) = v_y_main_s2
I3:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # TODO: Implement TAC op type 29

    # TAC 3: 4: #t2 = * v_y_main_s2
I4:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t2 = *v_y_main_s2
    lw $t2, -8($fp)
    # DEBUG: Loaded pointer v_y_main_s2 from memory at -8($fp)
    lw $t3, 0($t2)
    # DEBUG: Dereferenced *v_y_main_s2 into $t3
    # DEBUG: #t2 = *v_y_main_s2 in $t3 (dirty)

    # TAC 4: 5: *(#t2) = 10
I5:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # $t2: [v_y_main_s2]
    # $t3: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t3]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # TODO: Implement TAC op type 29

    # TAC 5: 6: #t3 = * v_x_main_s2
I6:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # $t2: [v_y_main_s2]
    # $t3: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t3]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # #t3 = *v_x_main_s2
    # DEBUG: Pointer v_x_main_s2 already in $t0
    lw $t4, 0($t0)
    # DEBUG: Dereferenced *v_x_main_s2 into $t4
    # DEBUG: #t3 = *v_x_main_s2 in $t4 (dirty)

    # TAC 6: 7: #t4 = * #t3
I7:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # $t2: [v_y_main_s2]
    # $t3: [#t2] (dirty)
    # $t4: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t3]
    # #t3: [$t4]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # #t4 = *#t3
    # DEBUG: Pointer #t3 already in $t4
    lw $t5, 0($t4)
    # DEBUG: Dereferenced *#t3 into $t5
    # DEBUG: #t4 = *#t3 in $t5 (dirty)

    # TAC 7: 8: *(#t4) = 20
I8:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # $t2: [v_y_main_s2]
    # $t3: [#t2] (dirty)
    # $t4: [#t3] (dirty)
    # $t5: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # TODO: Implement TAC op type 29

    # TAC 8: 9: end function main
I9:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # $t2: [v_y_main_s2]
    # $t3: [#t2] (dirty)
    # $t4: [#t3] (dirty)
    # $t5: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
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
    # End of function: main


    # End of code
