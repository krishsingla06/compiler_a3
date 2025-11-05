    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 4

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i3

.data
    # Global variables

.text
.globl main

    # ======================================
    # === B1_i0_i3 ===
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
    # Frame size: 416 bytes
    addiu $sp, $sp, -416
    # Allocate 416 bytes (8 for $ra+$fp, 416 for locals/temps)
    sw $ra, 412($sp)
    # Save return address at 420($sp)
    sw $fp, 408($sp)
    # Save old frame pointer at 416($sp)
    addiu $fp, $sp, 408
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
    lw $t0, -404($fp)
    # DEBUG: Loaded pointer v_x_main_s2 from memory at -404($fp)
    lw $t1, 0($t0)
    # DEBUG: Dereferenced *v_x_main_s2 into $t1
    # DEBUG: #t1 = *v_x_main_s2 in $t1 (dirty)

    # TAC 2: 3: *(#t1) = 1
I3:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # *#t1 = 1
    # DEBUG: Pointer #t1 already in $t1
    lw $t2, -100($fp)
    # DEBUG: Loaded value 1 from memory at -100($fp)
    sw $t2, 0($t1)
    # DEBUG: Stored 1 through pointer #t1

    # TAC 3: 4: end function main
I4:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [#t1] (dirty)
    # $t2: [1]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # 1: [$t2]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 416
    # Deallocate frame (416 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main


    # End of code
