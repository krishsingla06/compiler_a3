    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 9

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
    # Block B1: i0-i2
    # Block B2: i3-i3
    # Block B3: i4-i4
    # Block B4: i5-i7
    # Block B5: i8-i8

.data
    # String Literals
    # (no string literals)

    # Global and Static Variables
    # (no global or static variables)

.text
.globl main

    # ======================================
    # === B1_i0_i2 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i2 Next-Use:
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
    # Frame size: 56 bytes
    addiu $sp, $sp, -56
    # Allocate 56 bytes (8 for $ra+$fp, 56 for locals/temps)
    sw $ra, 52($sp)
    # Save return address at 60($sp)
    sw $fp, 48($sp)
    # Save old frame pointer at 56($sp)
    addiu $fp, $sp, 48
    # Set new frame pointer (points to saved old $fp)

    # TAC 1: 2: v_x_main_s2 = 5
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 5
    # DEBUG: v_x_main_s2 = constant 5 loaded in $t0 (dirty)
    li $t0, 5

    # TAC 2: 3: goto I6
I3:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled v_x_main_s2 from $t0 to memory at -4($fp)
    # Unconditional jump to I6
    sw $t0, -4($fp)
    j I6


    # ======================================
    # === B2_i3_i3 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i3 Next-Use:
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 3: 4: goto I6
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I6
    j I6


    # ======================================
    # === B3_i4_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i4 Next-Use:
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 4: 5: goto I6
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I6
    j I6


    # ======================================
    # === B4_i5_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i7 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i6 Next-Use:
    #   #t1 -> N/A
    #   v_x_main_s2 -> N/A
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    #   v_x_main_s2 -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: #t1 = v_x_main_s2 + 1
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t1 = v_x_main_s2 add 1
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # DEBUG: v_x_main_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t1 = result in $t2 (dirty)
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

    # TAC 6: 7: v_x_main_s2 = #t1
I7:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_x_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_x_main_s2 now also in $t2 (dirty)
    # DEBUG: Saved v_x_main_s2 to memory at -4($fp)
    sw $t2, -4($fp)

    # TAC 7: 8: return v_x_main_s2
I8:
    # --- Register Descriptor ---
    # $t1: [<CONSTANT>]
    # $t2: [#t1, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # v_x_main_s2: [$t2, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t1 from $t2 to memory at -8($fp)
    # DEBUG: Spilled v_x_main_s2 from $t2 to memory at -4($fp)
    # === Spilling all dirty registers before return ===
    # return v_x_main_s2
    # DEBUG: v_x_main_s2 in $t2
    # DEBUG: Moved return value to $v0
    sw $t2, -8($fp)
    sw $t2, -4($fp)
    move $v0, $t2


    # ======================================
    # === B5_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i8 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 8: 9: end function main
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
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
