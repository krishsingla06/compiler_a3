    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 8

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i6
    # Block B2: i7-i7

.data
    # Global variables

.text
.globl main

    # ======================================
    # === B1_i0_i6 ===
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
    # Frame size: 28 bytes
    addiu $sp, $sp, -28
    # Allocate 28 bytes (8 for $ra+$fp, 28 for locals/temps)
    sw $ra, 24($sp)
    # Save return address at 32($sp)
    sw $fp, 20($sp)
    # Save old frame pointer at 28($sp)
    addiu $fp, $sp, 20
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 1: 2: v_x_main_s2 = 10
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 10
    li $t0, 10
    # DEBUG: v_x_main_s2 = constant 10 loaded in $t0 (dirty)

    # TAC 2: 3: #t1 = & v_x_main_s2
I3:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t1 = &v_x_main_s2
    sw $t0, -4($fp)
    addiu $t0, $fp, -4
    # DEBUG: #t1 = address of v_x_main_s2 at -4($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)

    # TAC 3: 4: v_ptr_main_s2 = #t1
I4:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_x_main_s2: [memory:v_x_main_s2]
    # --- End Storage Descriptor ---
    # Assignment: v_ptr_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_ptr_main_s2 now also in $t0 (dirty)

    # TAC 4: 5: #t2 = * v_ptr_main_s2
I5:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_ptr_main_s2: [$t0]
    # v_x_main_s2: [memory:v_x_main_s2]
    # --- End Storage Descriptor ---
    # #t2 = *v_ptr_main_s2
    # DEBUG: Pointer v_ptr_main_s2 already in $t0
    lw $t1, 0($t0)
    # DEBUG: Dereferenced *v_ptr_main_s2 into $t1
    # DEBUG: #t2 = *v_ptr_main_s2 in $t1 (dirty)

    # TAC 5: 6: v_y_main_s2 = #t2
I6:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_ptr_main_s2: [$t0]
    # v_x_main_s2: [memory:v_x_main_s2]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = #t2
    # DEBUG: #t2 already in $t1
    # DEBUG: v_y_main_s2 now also in $t1 (dirty)

    # TAC 6: 7: return v_y_main_s2
I7:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # $t1: [#t2, v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_ptr_main_s2: [$t0]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 2 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -16($fp)
    sw $t0, -8($fp)
    # DEBUG: Spilled v_ptr_main_s2 from $t0 to memory at -8($fp)
    sw $t1, -20($fp)
    # DEBUG: Spilled #t2 from $t1 to memory at -20($fp)
    sw $t1, -12($fp)
    # DEBUG: Spilled v_y_main_s2 from $t1 to memory at -12($fp)
    # return v_y_main_s2
    # DEBUG: v_y_main_s2 in $t1
    move $v0, $t1
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B2_i7_i7 ===
    # ======================================
    # Registers cleared at block start
    # TAC 7: 8: end function main
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # v_ptr_main_s2: [memory:-8($fp)]
    # v_x_main_s2: [memory:v_x_main_s2]
    # v_y_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 28
    # Deallocate frame (28 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main


    # End of code
