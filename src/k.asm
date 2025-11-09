    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 8

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i6
    # Block B2: i7-i7

.data
    # String Literals
    # (no string literals)

    # Global and Static Variables
    # (no global or static variables)

.text
.globl main

    # ======================================
    # === B1_i0_i6 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i6 Next-Use:
    #   v_z_main_s2 -> N/A
    # Instr i5 Next-Use:
    #   #t2 -> N/A
    #   v_z_main_s2 -> N/A
    # Instr i4 Next-Use:
    #   #t2 -> N/A
    #   v_y_main_s2 -> N/A
    # Instr i3 Next-Use:
    #   #t1 -> N/A
    #   v_y_main_s2 -> N/A
    # Instr i2 Next-Use:
    #   #t1 -> N/A
    #   v_x_main_s2 -> N/A
    # Instr i1 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i0 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B1 ===

    # Next-use information computed
    # TAC 0: 1: function begin : main
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 68 bytes
    addiu $sp, $sp, -68
    # Allocate 68 bytes (8 for $ra+$fp, 68 for locals/temps)
    sw $ra, 64($sp)
    # Save return address at 72($sp)
    sw $fp, 60($sp)
    # Save old frame pointer at 68($sp)
    addiu $fp, $sp, 60
    # Set new frame pointer (points to saved old $fp)

    # TAC 1: 2: v_x_main_s2 = 10
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 10
    # DEBUG: v_x_main_s2 = constant 10 loaded in $t0 (dirty)
    li $t0, 10

    # TAC 2: 3: #t1 = v_x_main_s2 * 1
I3:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t1 = v_x_main_s2 mul 1
    # DEBUG: v_x_main_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t1 = result in $t2 (dirty)
    # PEEPHOLE: Simplified mul by 1 to move
    li $t1, 1
    move $t2, $t0

    # TAC 3: 4: v_y_main_s2 = #t1
I4:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_y_main_s2 now also in $t2 (dirty)
    # DEBUG: Saved v_y_main_s2 to memory at -12($fp)
    sw $t2, -12($fp)

    # TAC 4: 5: #t2 = v_y_main_s2 + 0
I5:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1, v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_y_main_s2 add 0
    # DEBUG: v_y_main_s2 in $t2
    # DEBUG: Loaded constant 0 into $t3
    # DEBUG: 0 in $t3
    # DEBUG: #t2 = result in $t4 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t3, 0
    move $t4, $t2

    # TAC 5: 6: v_z_main_s2 = #t2
I6:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1, v_y_main_s2] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t4]
    # <CONSTANT>: [$t3]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_z_main_s2 = #t2
    # DEBUG: #t2 already in $t4
    # DEBUG: v_z_main_s2 now also in $t4 (dirty)
    # DEBUG: Saved v_z_main_s2 to memory at -20($fp)
    sw $t4, -20($fp)

    # TAC 6: 7: return v_z_main_s2
I7:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1, v_y_main_s2] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [#t2, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t4]
    # <CONSTANT>: [$t3]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$t2, memory:-12($fp)]
    # v_z_main_s2: [$t4, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 3 dirty registers
    # DEBUG: Spilled v_x_main_s2 from $t0 to memory at -4($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -8($fp)
    # DEBUG: Spilled v_y_main_s2 from $t2 to memory at -12($fp)
    # DEBUG: Spilled #t2 from $t4 to memory at -16($fp)
    # DEBUG: Spilled v_z_main_s2 from $t4 to memory at -20($fp)
    # === Spilling all dirty registers before return ===
    # return v_z_main_s2
    # DEBUG: v_z_main_s2 in $t4
    # DEBUG: Moved return value to $v0
    sw $t0, -4($fp)
    sw $t2, -8($fp)
    sw $t2, -12($fp)
    sw $t4, -16($fp)
    sw $t4, -20($fp)
    move $v0, $t4


    # ======================================
    # === B2_i7_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i7 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 7: 8: end function main
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-16($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-12($fp)]
    # v_z_main_s2: [memory:-20($fp)]
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
