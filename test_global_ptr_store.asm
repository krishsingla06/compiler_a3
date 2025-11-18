    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 20

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated global/static variable 'v_val_s1' at offset 0($gp)
    # Allocated space for 1 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i5
    # Block B2: i6-i13
    # Block B3: i14-i18
    # Block B4: i19-i19

.data
    # String Literals
    # (no string literals)

    # Global and Static Variables
v_val_s1: .word 0  # int (global/static) at 0($gp)

.text
.globl main

    # ======================================
    # === B1_i0_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i5 Next-Use:
    #   foo -> N/A
    # Instr i4 Next-Use:
    #   #t2 -> N/A
    #   v_val_s1 -> N/A
    # Instr i3 Next-Use:
    #   #t2 -> N/A
    #   v_p_foo_s2 -> N/A
    # Instr i2 Next-Use:
    #   #t1 -> N/A
    #   v_p_foo_s2 -> N/A
    # Instr i1 Next-Use:
    #   #t1 -> N/A
    #   v_val_s1 -> N/A
    # Instr i0 Next-Use:
    #   foo -> N/A
    # === End of Next-Use Computation for Block B1 ===

    # Next-use information computed
    # TAC 0: 1: function begin : foo
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
foo:
    # Function: foo
    # === Function Prologue for foo ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)

    # TAC 1: 2: #t1 = & v_val_s1
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # #t1 = &v_val_s1
    # DEBUG: #t1 = address of v_val_s1 at $fp
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    move $t0, $fp

    # TAC 2: 3: v_p_foo_s2 = #t1
I3:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_p_foo_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_p_foo_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_p_foo_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 3: 4: #t2 = * v_p_foo_s2
I4:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_foo_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_p_foo_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = *v_p_foo_s2
    # DEBUG: Pointer v_p_foo_s2 already in $t0
    # DEBUG: Dereferenced *v_p_foo_s2 into $t1
    # DEBUG: #t2 = *v_p_foo_s2 in $t1 (dirty)
    lw $t1, 0($t0)

    # TAC 4: 5: v_val_s1 = #t2
I5:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_foo_s2] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_p_foo_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_val_s1 = #t2
    # DEBUG: #t2 already in $t1
    # DEBUG: v_val_s1 now also in $t1 (dirty)
    # DEBUG: Saved global/static v_val_s1 to memory at 0($gp)
    sw $t1, 0($gp)

    # TAC 5: 6: end function foo
I6:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_foo_s2] (dirty)
    # $t1: [#t2, v_val_s1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_p_foo_s2: [$t0, memory:-8($fp)]
    # v_val_s1: [$t1, memory:0($gp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for foo ===
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
    # End of function: foo


    # ======================================
    # === B2_i6_i13 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i13 Next-Use:
    #   bar -> N/A
    # Instr i12 Next-Use:
    #   #t6 -> N/A
    #   v_val_s1 -> N/A
    # Instr i11 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    # Instr i10 Next-Use:
    #   #t4 -> N/A
    #   #t5 -> N/A
    #   v_p_bar_s2 -> N/A
    # Instr i9 Next-Use:
    #   #t4 -> N/A
    #   4 -> N/A
    # Instr i8 Next-Use:
    #   #t3 -> N/A
    #   v_p_bar_s2 -> N/A
    # Instr i7 Next-Use:
    #   #t3 -> N/A
    #   v_val_s1 -> i12
    # Instr i6 Next-Use:
    #   bar -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 6: 7: function begin : bar
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
bar:
    # Function: bar
    # === Function Prologue for bar ===
    # Frame size: 68 bytes
    addiu $sp, $sp, -68
    # Allocate 68 bytes (8 for $ra+$fp, 68 for locals/temps)
    sw $ra, 64($sp)
    # Save return address at 72($sp)
    sw $fp, 60($sp)
    # Save old frame pointer at 68($sp)
    addiu $fp, $sp, 60
    # Set new frame pointer (points to saved old $fp)

    # TAC 7: 8: #t3 = & v_val_s1
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # #t3 = &v_val_s1
    # DEBUG: #t3 = address of v_val_s1 at $fp
    # DEBUG: #t3 (pointer) in $t0 (dirty)
    move $t0, $fp

    # TAC 8: 9: v_p_bar_s2 = #t3
I9:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t3: [$t0]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Assignment: v_p_bar_s2 = #t3
    # DEBUG: #t3 already in $t0
    # DEBUG: v_p_bar_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_p_bar_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 9: 10: #t4 = 1 * 4
I10:
    # --- Register Descriptor ---
    # $t0: [#t3, v_p_bar_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t3: [$t0]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # #t4 = 1 mul 4
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: Loaded numeric literal 4 into $t2
    # DEBUG: 4 in $t2
    # DEBUG: #t4 = result in $t3 (dirty)
    li $t1, 1
    li $t2, 4
    mul $t3, $t1, $t2

    # TAC 10: 11: #t5 = v_p_bar_s2 - #t4
I11:
    # --- Register Descriptor ---
    # $t0: [#t3, v_p_bar_s2] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t3: [$t0]
    # #t4: [$t3]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # #t5 = v_p_bar_s2 sub #t4
    # DEBUG: v_p_bar_s2 in $t0
    # DEBUG: #t4 in $t3
    # DEBUG: #t5 = result in $t1 (dirty)
    sub $t1, $t0, $t3

    # TAC 11: 12: #t6 = #t5
I12:
    # --- Register Descriptor ---
    # $t0: [#t3, v_p_bar_s2] (dirty)
    # $t1: [#t5] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t3: [$t0]
    # #t4: [$t3]
    # #t5: [$t1]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Assignment: #t6 = #t5
    # DEBUG: #t5 already in $t1
    # DEBUG: #t6 now also in $t1 (dirty)
    # DEBUG: Saved #t6 to memory at -20($fp)
    sw $t1, -20($fp)

    # TAC 12: 13: *(#t6) = v_val_s1
I13:
    # --- Register Descriptor ---
    # $t0: [#t3, v_p_bar_s2] (dirty)
    # $t1: [#t5, #t6] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t3: [$t0]
    # #t4: [$t3]
    # #t5: [$t1]
    # #t6: [$t1, memory:-20($fp)]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # *#t6 = v_val_s1
    # DEBUG: Pointer #t6 in $t1
    # DEBUG: Loaded global/static v_val_s1 from 0($gp)
    # DEBUG: Integer value v_val_s1 in $t2
    # DEBUG: Stored integer v_val_s1 through pointer #t6
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_p_bar_s2 in $t0
    # DEBUG: Invalidating cached value of v_val_s1 in $t2
    lw $t2, 0($gp)
    sw $t2, 0($t1)

    # TAC 13: 14: end function bar
I14:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # $t1: [#t5, #t6] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t3: [$t0]
    # #t4: [$t3]
    # #t5: [$t1]
    # #t6: [$t1, memory:-20($fp)]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for bar ===
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
    # End of function: bar


    # ======================================
    # === B3_i14_i18 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i18 Next-Use:
    # Instr i17 Next-Use:
    #   #t8 -> N/A
    #   bar -> N/A
    # Instr i16 Next-Use:
    #   #t7 -> N/A
    #   foo -> N/A
    # Instr i15 Next-Use:
    #   v_val_s1 -> N/A
    # Instr i14 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 14: 15: function begin : main
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t6: [memory:-20($fp)]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
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

    # TAC 15: 16: v_val_s1 = 42
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t6: [memory:-20($fp)]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Assignment: v_val_s1 = 42
    # DEBUG: v_val_s1 = constant 42 loaded in $t0 (dirty)
    li $t0, 42

    # TAC 16: 17: #t7 = call foo, 0
I17:
    # --- Register Descriptor ---
    # $t0: [v_val_s1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t6: [memory:-20($fp)]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [$t0]
    # --- End Storage Descriptor ---
    # Call foo with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # DEBUG: Called foo
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t7 = return value in $t0 (dirty)
    jal foo
    move $t0, $v0

    # TAC 17: 18: #t8 = call bar, 0
I18:
    # --- Register Descriptor ---
    # $t0: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t6: [memory:-20($fp)]
    # #t7: [$t0]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [$t0]
    # --- End Storage Descriptor ---
    # Call bar with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # DEBUG: Called bar
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t8 = return value in $t0 (dirty)
    jal bar
    move $t0, $v0

    # TAC 18: 19: return 0
I19:
    # --- Register Descriptor ---
    # $t0: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t6: [memory:-20($fp)]
    # #t7: [$t0]
    # #t8: [$t0]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [$t0]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t8 from $t0 to memory at 0($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    sw $t0, 0($fp)
    li $v0, 0


    # ======================================
    # === B4_i19_i19 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i19 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 19: 20: end function main
I20:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t6: [memory:-20($fp)]
    # #t7: [$t0]
    # #t8: [memory:0($fp)]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [$t0]
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
