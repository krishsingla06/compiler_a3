    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 11

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated global/static variable 'v_global_val_s1' at offset 0($gp)
    # Allocated space for 1 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i0
    # Block B2: i1-i6
    # Block B3: i7-i9
    # Block B4: i10-i10

.data
    # String Literals
    # (no string literals)

    # Global and Static Variables
v_global_val_s1: .word 0  # int (global/static) at 0($gp)

.text
.globl main

    # ======================================
    # === B1_i0_i0 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i0 Next-Use:
    #   v_global_val_s1 -> N/A
    # === End of Next-Use Computation for Block B1 ===

    # Next-use information computed
    # TAC 0: 1: v_global_val_s1 = 100
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_global_val_s1 = 100
    # DEBUG: v_global_val_s1 = constant 100 loaded in $t0 (dirty)
    li $t0, 100

    # End of block B1 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled global/static v_global_val_s1 from $t0 to 0($gp)

    # ======================================
    # === B2_i1_i6 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i6 Next-Use:
    #   modify_through_pointer -> N/A
    # Instr i5 Next-Use:
    #   #t2 -> N/A
    # Instr i4 Next-Use:
    #   #t2 -> N/A
    #   v_p_modify_through_pointer_s2 -> N/A
    # Instr i3 Next-Use:
    #   #t1 -> N/A
    #   v_p_modify_through_pointer_s2 -> N/A
    # Instr i2 Next-Use:
    #   #t1 -> N/A
    #   v_global_val_s1 -> N/A
    # Instr i1 Next-Use:
    #   modify_through_pointer -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 1: 2: function begin : modify_through_pointer
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_global_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
modify_through_pointer:
    # Function: modify_through_pointer
    # === Function Prologue for modify_through_pointer ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)
    sw $t0, 0($gp)

    # TAC 2: 3: #t1 = & v_global_val_s1
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_global_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_global_val_s1
    # DEBUG: #t1 = address of v_global_val_s1 at $fp
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    move $t0, $fp

    # TAC 3: 4: v_p_modify_through_pointer_s2 = #t1
I4:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_global_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Assignment: v_p_modify_through_pointer_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_p_modify_through_pointer_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_p_modify_through_pointer_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 4: 5: #t2 = v_p_modify_through_pointer_s2
I5:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_modify_through_pointer_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_global_val_s1: [memory:0($gp)]
    # v_p_modify_through_pointer_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = v_p_modify_through_pointer_s2
    # DEBUG: v_p_modify_through_pointer_s2 already in $t0
    # DEBUG: #t2 now also in $t0 (dirty)
    # DEBUG: Saved #t2 to memory at -12($fp)
    sw $t0, -12($fp)

    # TAC 5: 6: *(#t2) = 200
I6:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2, v_p_modify_through_pointer_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0, memory:-12($fp)]
    # v_global_val_s1: [memory:0($gp)]
    # v_p_modify_through_pointer_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # *#t2 = 200
    # DEBUG: Pointer #t2 in $t0
    # DEBUG: Loaded constant 200 into $t1
    # DEBUG: Integer value 200 in $t1
    # DEBUG: Stored integer 200 through pointer #t2
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_p_modify_through_pointer_s2 in $t0
    li $t1, 200
    sw $t1, 0($t0)

    # TAC 6: 7: end function modify_through_pointer
I7:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2] (dirty)
    # $t1: [<CONST_5_200>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0, memory:-12($fp)]
    # <CONST_5_200>: [$t1]
    # v_global_val_s1: [memory:0($gp)]
    # v_p_modify_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for modify_through_pointer ===
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
    # End of function: modify_through_pointer


    # ======================================
    # === B3_i7_i9 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i9 Next-Use:
    # Instr i8 Next-Use:
    #   #t3 -> N/A
    #   modify_through_pointer -> N/A
    # Instr i7 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 7: 8: function begin : main
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_global_val_s1: [memory:0($gp)]
    # v_p_modify_through_pointer_s2: [memory:-8($fp)]
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

    # TAC 8: 9: #t3 = call modify_through_pointer, 0
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_global_val_s1: [memory:0($gp)]
    # v_p_modify_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call modify_through_pointer with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # DEBUG: Called modify_through_pointer
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t3 = return value in $t0 (dirty)
    jal modify_through_pointer
    move $t0, $v0

    # TAC 9: 10: return 0
I10:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t0]
    # v_global_val_s1: [memory:0($gp)]
    # v_p_modify_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t3 from $t0 to memory at 0($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    sw $t0, 0($fp)
    li $v0, 0


    # ======================================
    # === B4_i10_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i10 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 10: 11: end function main
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [memory:0($fp)]
    # v_global_val_s1: [memory:0($gp)]
    # v_p_modify_through_pointer_s2: [memory:-8($fp)]
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
