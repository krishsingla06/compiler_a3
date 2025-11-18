    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 21

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
    # Block B1: i0-i7
    # Block B2: i8-i15
    # Block B3: i16-i19
    # Block B4: i20-i20

.data
    # String Literals
    # (no string literals)

    # Global and Static Variables
v_val_s1: .word 0  # int (global/static) at 0($gp)

.text
.globl main

    # ======================================
    # === B1_i0_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i7 Next-Use:
    #   foo -> N/A
    # Instr i6 Next-Use:
    #   #t3 -> N/A
    #   v_val_s1 -> N/A
    # Instr i5 Next-Use:
    #   #t3 -> N/A
    #   v_p_foo_s2 -> N/A
    # Instr i4 Next-Use:
    #   #t2 -> N/A
    #   v_p_foo_s2 -> N/A
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
    # Frame size: 64 bytes
    addiu $sp, $sp, -64
    # Allocate 64 bytes (8 for $ra+$fp, 64 for locals/temps)
    sw $ra, 60($sp)
    # Save return address at 68($sp)
    sw $fp, 56($sp)
    # Save old frame pointer at 64($sp)
    addiu $fp, $sp, 56
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

    # TAC 3: 4: #t2 = v_p_foo_s2 + 1
I4:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_foo_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_p_foo_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_p_foo_s2 add 1
    # DEBUG: v_p_foo_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t2 = result in $t2 (dirty)
    li $t1, 1
    add $t2, $t0, $t1

    # TAC 4: 5: v_p_foo_s2 = #t2
I5:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_foo_s2] (dirty)
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # v_p_foo_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_p_foo_s2 = #t2
    # DEBUG: #t2 already in $t2
    # DEBUG: v_p_foo_s2 was in $t0, spilling all variables in that register
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)
    # DEBUG: Spilled v_p_foo_s2 from $t0 to memory at -8($fp)
    # DEBUG: v_p_foo_s2 now also in $t2 (dirty)
    # DEBUG: Saved v_p_foo_s2 to memory at -8($fp)
    sw $t0, -4($fp)
    sw $t0, -8($fp)
    sw $t2, -8($fp)

    # TAC 5: 6: #t3 = * v_p_foo_s2
I6:
    # --- Register Descriptor ---
    # $t2: [#t2, v_p_foo_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # v_p_foo_s2: [$t2, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = *v_p_foo_s2
    # DEBUG: Pointer v_p_foo_s2 already in $t2
    # DEBUG: Dereferenced *v_p_foo_s2 into $t0
    # DEBUG: #t3 = *v_p_foo_s2 in $t0 (dirty)
    lw $t0, 0($t2)

    # TAC 6: 7: v_val_s1 = #t3
I7:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # $t2: [#t2, v_p_foo_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # #t3: [$t0]
    # v_p_foo_s2: [$t2, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_val_s1 = #t3
    # DEBUG: #t3 already in $t0
    # DEBUG: v_val_s1 now also in $t0 (dirty)
    # DEBUG: Saved global/static v_val_s1 to memory at 0($gp)
    sw $t0, 0($gp)

    # TAC 7: 8: end function foo
I8:
    # --- Register Descriptor ---
    # $t0: [#t3, v_val_s1] (dirty)
    # $t2: [#t2, v_p_foo_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # #t3: [$t0]
    # v_p_foo_s2: [$t2, memory:-8($fp)]
    # v_val_s1: [$t0, memory:0($gp)]
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
    # === B2_i8_i15 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i15 Next-Use:
    #   bar -> N/A
    # Instr i14 Next-Use:
    #   #t7 -> N/A
    #   v_val_s1 -> N/A
    # Instr i13 Next-Use:
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i12 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    #   v_p_bar_s2 -> N/A
    # Instr i11 Next-Use:
    #   #t5 -> N/A
    #   4 -> N/A
    # Instr i10 Next-Use:
    #   #t4 -> N/A
    #   v_p_bar_s2 -> N/A
    # Instr i9 Next-Use:
    #   #t4 -> N/A
    #   v_val_s1 -> i14
    # Instr i8 Next-Use:
    #   bar -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 8: 9: function begin : bar
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
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

    # TAC 9: 10: #t4 = & v_val_s1
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # #t4 = &v_val_s1
    # DEBUG: #t4 = address of v_val_s1 at $fp
    # DEBUG: #t4 (pointer) in $t0 (dirty)
    move $t0, $fp

    # TAC 10: 11: v_p_bar_s2 = #t4
I11:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t4: [$t0]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Assignment: v_p_bar_s2 = #t4
    # DEBUG: #t4 already in $t0
    # DEBUG: v_p_bar_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_p_bar_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 11: 12: #t5 = 1 * 4
I12:
    # --- Register Descriptor ---
    # $t0: [#t4, v_p_bar_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t4: [$t0]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # #t5 = 1 mul 4
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: Loaded numeric literal 4 into $t2
    # DEBUG: 4 in $t2
    # DEBUG: #t5 = result in $t3 (dirty)
    li $t1, 1
    li $t2, 4
    mul $t3, $t1, $t2

    # TAC 12: 13: #t6 = v_p_bar_s2 - #t5
I13:
    # --- Register Descriptor ---
    # $t0: [#t4, v_p_bar_s2] (dirty)
    # $t3: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t4: [$t0]
    # #t5: [$t3]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # #t6 = v_p_bar_s2 sub #t5
    # DEBUG: v_p_bar_s2 in $t0
    # DEBUG: #t5 in $t3
    # DEBUG: #t6 = result in $t1 (dirty)
    sub $t1, $t0, $t3

    # TAC 13: 14: #t7 = #t6
I14:
    # --- Register Descriptor ---
    # $t0: [#t4, v_p_bar_s2] (dirty)
    # $t1: [#t6] (dirty)
    # $t3: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t4: [$t0]
    # #t5: [$t3]
    # #t6: [$t1]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = #t6
    # DEBUG: #t6 already in $t1
    # DEBUG: #t7 now also in $t1 (dirty)
    # DEBUG: Saved #t7 to memory at -20($fp)
    sw $t1, -20($fp)

    # TAC 14: 15: *(#t7) = v_val_s1
I15:
    # --- Register Descriptor ---
    # $t0: [#t4, v_p_bar_s2] (dirty)
    # $t1: [#t6, #t7] (dirty)
    # $t3: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t4: [$t0]
    # #t5: [$t3]
    # #t6: [$t1]
    # #t7: [$t1, memory:-20($fp)]
    # v_p_bar_s2: [$t0, memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # *#t7 = v_val_s1
    # DEBUG: Pointer #t7 in $t1
    # DEBUG: Loaded global/static v_val_s1 from 0($gp)
    # DEBUG: Integer value v_val_s1 in $t2
    # DEBUG: Stored integer v_val_s1 through pointer #t7
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_p_bar_s2 in $t0
    # DEBUG: Invalidating cached value of v_val_s1 in $t2
    lw $t2, 0($gp)
    sw $t2, 0($t1)

    # TAC 15: 16: end function bar
I16:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [#t6, #t7] (dirty)
    # $t3: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t4: [$t0]
    # #t5: [$t3]
    # #t6: [$t1]
    # #t7: [$t1, memory:-20($fp)]
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
    # === B3_i16_i19 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i19 Next-Use:
    # Instr i18 Next-Use:
    #   #t9 -> N/A
    #   bar -> N/A
    # Instr i17 Next-Use:
    #   #t8 -> N/A
    #   foo -> N/A
    # Instr i16 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 16: 17: function begin : main
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t7: [memory:-20($fp)]
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

    # TAC 17: 18: #t8 = call foo, 0
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t7: [memory:-20($fp)]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Call foo with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # DEBUG: Called foo
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t8 = return value in $t0 (dirty)
    jal foo
    move $t0, $v0

    # TAC 18: 19: #t9 = call bar, 0
I19:
    # --- Register Descriptor ---
    # $t0: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t7: [memory:-20($fp)]
    # #t8: [$t0]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Call bar with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # DEBUG: Called bar
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t9 = return value in $t0 (dirty)
    jal bar
    move $t0, $v0

    # TAC 19: 20: return 0
I20:
    # --- Register Descriptor ---
    # $t0: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t7: [memory:-20($fp)]
    # #t8: [$t0]
    # #t9: [$t0]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t9 from $t0 to memory at 0($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    sw $t0, 0($fp)
    li $v0, 0


    # ======================================
    # === B4_i20_i20 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i20 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 20: 21: end function main
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t7: [memory:-20($fp)]
    # #t8: [$t0]
    # #t9: [memory:0($fp)]
    # v_p_bar_s2: [memory:-8($fp)]
    # v_p_foo_s2: [memory:-8($fp)]
    # v_val_s1: [memory:0($gp)]
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
