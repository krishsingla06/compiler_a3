    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 12

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i2
    # Block B2: i3-i3
    # Block B3: i4-i10
    # Block B4: i11-i11

.data
    # String Literals
    # (no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : foo_i_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
foo_i_i:
    # Function: foo_i_i
    # === Function Prologue for foo_i_i ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_a_foo_i_i_s2) at 8($fp)
    # DEBUG: Parameter 0 (v_a_foo_i_i_s2) also in $a0
    # DEBUG: Parameter 1 (v_b_foo_i_i_s2) at 12($fp)
    # DEBUG: Parameter 1 (v_b_foo_i_i_s2) also in $a1
    # === End Parameter Initialization ===


    # TAC 1: 2: #t1 = v_a_foo_i_i_s2 + v_b_foo_i_i_s2
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_foo_i_i_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_i_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t1 = v_a_foo_i_i_s2 add v_b_foo_i_i_s2
    # DEBUG: v_a_foo_i_i_s2 in $a0
    # DEBUG: v_b_foo_i_i_s2 in $a1
    add $t0, $a0, $a1
    # DEBUG: #t1 = result in $t0 (dirty)

    # TAC 2: 3: return #t1
I3:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_a_foo_i_i_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_i_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)
    # return #t1
    # DEBUG: #t1 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B2_i3_i3 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: end function foo_i_i
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for foo_i_i ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: foo_i_i


    # ======================================
    # === B3_i4_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 4: 5: function begin : main
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 5: 6: v_x_main_s2 = 10
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 10
    li $t0, 10
    # DEBUG: v_x_main_s2 = constant 10 loaded in $t0 (dirty)

    # TAC 6: 7: v_y_main_s2 = 20
I7:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = 20
    li $t1, 20
    # DEBUG: v_y_main_s2 = constant 20 loaded in $t1 (dirty)

    # TAC 7: 8: param v_x_main_s2
I8:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #1: v_x_main_s2

    # TAC 8: 9: param v_y_main_s2
I9:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # param v_y_main_s2
    # DEBUG: Collected parameter #2: v_y_main_s2

    # TAC 9: 10: #t2 = call foo_i_i, 2
I10:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Call foo_i_i with 2 arguments
    # === Caller-Save: Spill dirty registers before call ===
    sw $t0, -4($fp)
    # DEBUG: Saved v_x_main_s2 from $t0 to -4($fp)
    sw $t1, -8($fp)
    # DEBUG: Saved v_y_main_s2 from $t1 to -8($fp)
    # === End Caller-Save (saved 2 registers) ===
    addiu $sp, $sp, -8
    # DEBUG: Allocate 8 bytes for 2 parameters + $ra/$fp
    lw $t0, -8($fp)
    # DEBUG: Loaded v_y_main_s2 from memory at -8($fp)
    # DEBUG: Param 0 (v_y_main_s2) in $t0
    sw $t0, 8($sp)
    # DEBUG: Stored param 0 on stack at 8($sp)
    move $a0, $t0
    # DEBUG: Copied param 0 to $a0
    lw $t1, -4($fp)
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # DEBUG: Param 1 (v_x_main_s2) in $t1
    sw $t1, 12($sp)
    # DEBUG: Stored param 1 on stack at 12($sp)
    move $a1, $t1
    # DEBUG: Copied param 1 to $a1
    jal foo_i_i
    # DEBUG: Called foo_i_i
    addiu $sp, $sp, 8
    # DEBUG: Deallocate 8 bytes of parameter space
    move $t2, $v0
    # DEBUG: Return value from $v0 to $t2
    # DEBUG: #t2 = return value in $t2 (dirty)

    # TAC 10: 11: return #t2
I11:
    # --- Register Descriptor ---
    # $t0: [v_y_main_s2]
    # $t1: [v_x_main_s2]
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # v_x_main_s2: [$t1, memory:-4($fp)]
    # v_y_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -12($fp)
    # DEBUG: Spilled #t2 from $t2 to memory at -12($fp)
    # return #t2
    # DEBUG: #t2 in $t2
    move $v0, $t2
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B4_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: end function main
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # v_a_foo_i_i_s2: [memory:8($fp)]
    # v_b_foo_i_i_s2: [memory:12($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main


    # End of code
