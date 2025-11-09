    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 54

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i7
    # Block B6: i8-i8
    # Block B7: i9-i33
    # Block B8: i34-i52
    # Block B9: i53-i53

.data
    # String Literals
    # (no string literals)

    # Global and Static Variables
    # (no global or static variables)
    # (no global or static variables)

.text
.globl main

    # ======================================
    # === B1_i0_i6 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : print_float_f
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
print_float_f:
    # Function: print_float_f
    # === Function Prologue for print_float_f ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_print_float_f_s2) at 8($fp)
    # DEBUG: Float parameter 0 (v_x_print_float_f_s2) in $f12
    # === End Parameter Initialization ===


    # TAC 1: 2: v_x_main_s2 = 10
I2:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: end function print_float_f
I3:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_float_f ===
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
    # End of function: print_float_f


    # ======================================
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: function begin : print_int_i
I4:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # --- End Storage Descriptor ---
print_int_i:
    # Function: print_int_i
    # === Function Prologue for print_int_i ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # $a0: [v_x_print_int_i_s2]
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: end function print_int_i
I6:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_int_i ===
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
    # End of function: print_int_i


    # ======================================
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : print_newline
I7:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_newline:
    # Function: print_newline
    # === Function Prologue for print_newline ===
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


    # TAC 7: 8: return 
I8:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # TAC 8: 9: end function print_newline
I9:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_newline ===
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
    # End of function: print_newline


    # ======================================
    # === B7_i9_i33 ===
    # ======================================
    # Registers cleared at block start
    # TAC 9: 10: function begin : foo_up1
I10:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
foo_up1:
    # Function: foo_up1
    # === Function Prologue for foo_up1 ===
    # Frame size: 104 bytes
    addiu $sp, $sp, -104
    # Allocate 104 bytes (8 for $ra+$fp, 104 for locals/temps)
    sw $ra, 100($sp)
    # Save return address at 108($sp)
    sw $fp, 96($sp)
    # Save old frame pointer at 104($sp)
    addiu $fp, $sp, 96
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_a_foo_up1_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_a_foo_up1_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 10: 11: #t1 = v_a_foo_up1_s2 + 0
I11:
    # --- Register Descriptor ---
    # $a0: [v_a_foo_up1_s2]
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_foo_up1_s2: [$a0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = v_a_foo_up1_s2 add 0
    # DEBUG: v_a_foo_up1_s2 in $a0
    li $t0, 0
    # DEBUG: Loaded constant 0 into $t0
    # DEBUG: 0 in $t0
    add $t1, $a0, $t0
    # DEBUG: #t1 = result in $t1 (dirty)

    # TAC 11: 12: #t2 = * #t1
I12:
    # --- Register Descriptor ---
    # $a0: [v_a_foo_up1_s2]
    # $f12: [v_x_print_float_f_s2]
    # $t0: [<CONSTANT>]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [$a0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = *#t1
    # DEBUG: Pointer #t1 already in $t1
    lw $t0, 0($t1)
    # DEBUG: Dereferenced *#t1 into $t0
    # DEBUG: #t2 = *#t1 in $t0 (dirty)

    # TAC 12: 13: param #t2
I13:
    # --- Register Descriptor ---
    # $a0: [v_a_foo_up1_s2]
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t0]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [$a0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t2
    # DEBUG: Collected parameter #1: #t2

    # TAC 13: 14: #t3 = call print_int_i, 1
I14:
    # --- Register Descriptor ---
    # $a0: [v_a_foo_up1_s2]
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t0]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [$a0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -8($fp)
    # DEBUG: Spilled #t2 from $t0 to -8($fp)
    sw $t1, -4($fp)
    # DEBUG: Spilled #t1 from $t1 to -4($fp)
    sw $a0, 8($fp)
    # DEBUG: Spilled v_a_foo_up1_s2 from $a0 to 8($fp)
    # === End Caller-Save ===
    # === Built-in print_int function ===
    lw $t0, -8($fp)
    # DEBUG: Loaded #t2 from memory at -8($fp)
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 14: 15: #t4 = call print_newline, 0
I15:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -8($fp)
    # DEBUG: Spilled #t2 from $t0 to -8($fp)
    # === End Caller-Save ===
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 15: 16: #t5 = v_a_foo_up1_s2 + 4
I16:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = v_a_foo_up1_s2 add 4
    lw $t0, 8($fp)
    # DEBUG: Loaded v_a_foo_up1_s2 from memory at 8($fp)
    # DEBUG: v_a_foo_up1_s2 in $t0
    li $t1, 4
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t5 = result in $t2 (dirty)

    # TAC 16: 17: #t6 = * #t5
I17:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [$t2]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = *#t5
    # DEBUG: Pointer #t5 already in $t2
    lw $t1, 0($t2)
    # DEBUG: Dereferenced *#t5 into $t1
    # DEBUG: #t6 = *#t5 in $t1 (dirty)

    # TAC 17: 18: param #t6
I18:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [#t6] (dirty)
    # $t2: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [$t2]
    # #t6: [$t1]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t6
    # DEBUG: Collected parameter #1: #t6

    # TAC 18: 19: #t7 = call print_int_i, 1
I19:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [#t6] (dirty)
    # $t2: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [$t2]
    # #t6: [$t1]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, 8($fp)
    # DEBUG: Spilled v_a_foo_up1_s2 from $t0 to 8($fp)
    sw $t1, -16($fp)
    # DEBUG: Spilled #t6 from $t1 to -16($fp)
    sw $t2, -12($fp)
    # DEBUG: Spilled #t5 from $t2 to -12($fp)
    # === End Caller-Save ===
    # === Built-in print_int function ===
    lw $t0, -16($fp)
    # DEBUG: Loaded #t6 from memory at -16($fp)
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 19: 20: #t8 = call print_newline, 0
I20:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [$t0, memory:-16($fp)]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -16($fp)
    # DEBUG: Spilled #t6 from $t0 to -16($fp)
    # === End Caller-Save ===
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 20: 21: #t9 = v_a_foo_up1_s2 + 0
I21:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t9 = v_a_foo_up1_s2 add 0
    lw $t0, 8($fp)
    # DEBUG: Loaded v_a_foo_up1_s2 from memory at 8($fp)
    # DEBUG: v_a_foo_up1_s2 in $t0
    li $t1, 0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t9 = result in $t2 (dirty)

    # TAC 21: 22: #t10 = #t9
I22:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [$t2]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t10 = #t9
    # DEBUG: #t9 already in $t2
    # DEBUG: #t10 now also in $t2 (dirty)
    sw $t2, -24($fp)
    # DEBUG: Saved #t10 to memory at -24($fp)

    # TAC 22: 23: #t11 = v_a_foo_up1_s2 + 0
I23:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t10, #t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t2, memory:-24($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [$t2]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t11 = v_a_foo_up1_s2 add 0
    # DEBUG: v_a_foo_up1_s2 in $t0
    li $t3, 0
    # DEBUG: Loaded constant 0 into $t3
    # DEBUG: 0 in $t3
    add $t4, $t0, $t3
    # DEBUG: #t11 = result in $t4 (dirty)

    # TAC 23: 24: #t12 = * #t11
I24:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t10, #t9] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t2, memory:-24($fp)]
    # #t11: [$t4]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [$t2]
    # <CONSTANT>: [$t3]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t12 = *#t11
    # DEBUG: Pointer #t11 already in $t4
    sw $t2, -20($fp)
    # DEBUG: Spilled #t9 from $t2 to memory
    lw $t2, 0($t4)
    # DEBUG: Dereferenced *#t11 into $t2
    # DEBUG: #t12 = *#t11 in $t2 (dirty)

    # TAC 24: 25: #t13 = v_a_foo_up1_s2 + 4
I25:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [$t4]
    # #t12: [$t2]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t3]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t13 = v_a_foo_up1_s2 add 4
    # DEBUG: v_a_foo_up1_s2 in $t0
    li $t5, 4
    # DEBUG: Loaded constant 4 into $t5
    # DEBUG: 4 in $t5
    add $t6, $t0, $t5
    # DEBUG: #t13 = result in $t6 (dirty)

    # TAC 25: 26: #t14 = * #t13
I26:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [#t11] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [$t4]
    # #t12: [$t2]
    # #t13: [$t6]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t5]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t14 = *#t13
    # DEBUG: Pointer #t13 already in $t6
    lw $t3, 0($t6)
    # DEBUG: Dereferenced *#t13 into $t3
    # DEBUG: #t14 = *#t13 in $t3 (dirty)

    # TAC 26: 27: #t15 = #t12 + #t14
I27:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [$t4]
    # #t12: [$t2]
    # #t13: [$t6]
    # #t14: [$t3]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t5]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t15 = #t12 add #t14
    # DEBUG: #t12 in $t2
    # DEBUG: #t14 in $t3
    add $t7, $t2, $t3
    # DEBUG: #t15 = result in $t7 (dirty)

    # TAC 27: 28: *(#t10) = #t15
I28:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [#t13] (dirty)
    # $t7: [#t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [$t4]
    # #t12: [$t2]
    # #t13: [$t6]
    # #t14: [$t3]
    # #t15: [$t7]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t5]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t10 = #t15
    lw $t8, -24($fp)
    # DEBUG: Loaded #t10 from memory at -24($fp)
    # DEBUG: Pointer #t10 in $t8
    # DEBUG: Integer value #t15 in $t7
    sw $t7, 0($t8)
    # DEBUG: Stored integer #t15 through pointer #t10
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_a_foo_up1_s2 in $t0

    # TAC 28: 29: #t16 = v_a_foo_up1_s2 + 0
I29:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [#t13] (dirty)
    # $t7: [#t15] (dirty)
    # $t8: [#t10]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t8, memory:-24($fp)]
    # #t11: [$t4]
    # #t12: [$t2]
    # #t13: [$t6]
    # #t14: [$t3]
    # #t15: [$t7]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t5]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t16 = v_a_foo_up1_s2 add 0
    lw $t0, 8($fp)
    # DEBUG: Loaded v_a_foo_up1_s2 from memory at 8($fp)
    # DEBUG: v_a_foo_up1_s2 in $t0
    li $t9, 0
    # DEBUG: Loaded constant 0 into $t9
    # DEBUG: 0 in $t9
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, -28($fp)
    # DEBUG: Spilled #t11 from $t4 to memory at -28($fp)
    add $t4, $t0, $t9
    # DEBUG: #t16 = result in $t4 (dirty)

    # TAC 29: 30: #t17 = * #t16
I30:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [#t13] (dirty)
    # $t7: [#t15] (dirty)
    # $t8: [#t10]
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t8, memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [$t2]
    # #t13: [$t6]
    # #t14: [$t3]
    # #t15: [$t7]
    # #t16: [$t4]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t17 = *#t16
    # DEBUG: Pointer #t16 already in $t4
    lw $t5, 0($t4)
    # DEBUG: Dereferenced *#t16 into $t5
    # DEBUG: #t17 = *#t16 in $t5 (dirty)

    # TAC 30: 31: param #t17
I31:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t13] (dirty)
    # $t7: [#t15] (dirty)
    # $t8: [#t10]
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t8, memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [$t2]
    # #t13: [$t6]
    # #t14: [$t3]
    # #t15: [$t7]
    # #t16: [$t4]
    # #t17: [$t5]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t17
    # DEBUG: Collected parameter #1: #t17

    # TAC 31: 32: #t18 = call print_int_i, 1
I32:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [v_a_foo_up1_s2]
    # $t1: [<CONSTANT>]
    # $t2: [#t12] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t13] (dirty)
    # $t7: [#t15] (dirty)
    # $t8: [#t10]
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t8, memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [$t2]
    # #t13: [$t6]
    # #t14: [$t3]
    # #t15: [$t7]
    # #t16: [$t4]
    # #t17: [$t5]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [$t0, memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, 8($fp)
    # DEBUG: Spilled v_a_foo_up1_s2 from $t0 to 8($fp)
    sw $t2, -32($fp)
    # DEBUG: Spilled #t12 from $t2 to -32($fp)
    sw $t3, -40($fp)
    # DEBUG: Spilled #t14 from $t3 to -40($fp)
    sw $t4, -48($fp)
    # DEBUG: Spilled #t16 from $t4 to -48($fp)
    sw $t5, -52($fp)
    # DEBUG: Spilled #t17 from $t5 to -52($fp)
    sw $t6, -36($fp)
    # DEBUG: Spilled #t13 from $t6 to -36($fp)
    sw $t7, -44($fp)
    # DEBUG: Spilled #t15 from $t7 to -44($fp)
    sw $t8, -24($fp)
    # DEBUG: Spilled #t10 from $t8 to -24($fp)
    # === End Caller-Save ===
    # === Built-in print_int function ===
    lw $t0, -52($fp)
    # DEBUG: Loaded #t17 from memory at -52($fp)
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 32: 33: #t19 = call print_newline, 0
I33:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t17]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [$t0, memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -52($fp)
    # DEBUG: Spilled #t17 from $t0 to -52($fp)
    # === End Caller-Save ===
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 33: 34: end function foo_up1
I34:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for foo_up1 ===
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
    # End of function: foo_up1


    # ======================================
    # === B8_i34_i52 ===
    # ======================================
    # Registers cleared at block start
    # TAC 34: 35: function begin : main
I35:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 96 bytes
    addiu $sp, $sp, -96
    # Allocate 96 bytes (8 for $ra+$fp, 96 for locals/temps)
    sw $ra, 92($sp)
    # Save return address at 100($sp)
    sw $fp, 88($sp)
    # Save old frame pointer at 96($sp)
    addiu $fp, $sp, 88
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 35: 36: #t20 = & v_a_main_s2
I36:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t20 = &v_a_main_s2
    addiu $t0, $fp, -8
    # DEBUG: #t20 = address of v_a_main_s2 at -8($fp)
    # DEBUG: #t20 (pointer) in $t0 (dirty)

    # TAC 36: 37: #t21 = #t20 + 0
I37:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t9]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t21 = #t20 add 0
    # DEBUG: #t20 in $t0
    li $t1, 0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t21 = result in $t2 (dirty)

    # TAC 37: 38: #t22 = #t21
I38:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t21] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [$t2]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t22 = #t21
    # DEBUG: #t21 already in $t2
    # DEBUG: #t22 now also in $t2 (dirty)
    sw $t2, -20($fp)
    # DEBUG: Saved #t22 to memory at -20($fp)

    # TAC 38: 39: *(#t22) = 10
I39:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t21, #t22] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [$t2]
    # #t22: [$t2, memory:-20($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t1]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t22 = 10
    # DEBUG: Pointer #t22 in $t2
    li $t3, 10
    # DEBUG: Loaded constant 10 into $t3
    # DEBUG: Integer value 10 in $t3
    sw $t3, 0($t2)
    # DEBUG: Stored integer 10 through pointer #t22
    # DEBUG: Invalidating all cached values due to pointer store

    # TAC 39: 40: #t23 = & v_a_main_s2
I40:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t21, #t22] (dirty)
    # $t3: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [$t2]
    # #t22: [$t2, memory:-20($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t3]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t23 = &v_a_main_s2
    addiu $t1, $fp, -8
    # DEBUG: #t23 = address of v_a_main_s2 at -8($fp)
    # DEBUG: #t23 (pointer) in $t1 (dirty)

    # TAC 40: 41: #t24 = #t23 + 4
I41:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [#t23] (dirty)
    # $t2: [#t21, #t22] (dirty)
    # $t3: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [$t2]
    # #t22: [$t2, memory:-20($fp)]
    # #t23: [$t1]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t3]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t24 = #t23 add 4
    # DEBUG: #t23 in $t1
    li $t4, 4
    # DEBUG: Loaded constant 4 into $t4
    # DEBUG: 4 in $t4
    add $t5, $t1, $t4
    # DEBUG: #t24 = result in $t5 (dirty)

    # TAC 41: 42: #t25 = #t24
I42:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [#t23] (dirty)
    # $t2: [#t21, #t22] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [<CONSTANT>]
    # $t5: [#t24] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [$t2]
    # #t22: [$t2, memory:-20($fp)]
    # #t23: [$t1]
    # #t24: [$t5]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t4]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t25 = #t24
    # DEBUG: #t24 already in $t5
    # DEBUG: #t25 now also in $t5 (dirty)
    sw $t5, -32($fp)
    # DEBUG: Saved #t25 to memory at -32($fp)

    # TAC 42: 43: *(#t25) = 20
I43:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [#t23] (dirty)
    # $t2: [#t21, #t22] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [<CONSTANT>]
    # $t5: [#t24, #t25] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [$t2]
    # #t22: [$t2, memory:-20($fp)]
    # #t23: [$t1]
    # #t24: [$t5]
    # #t25: [$t5, memory:-32($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t4]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t25 = 20
    # DEBUG: Pointer #t25 in $t5
    li $t6, 20
    # DEBUG: Loaded constant 20 into $t6
    # DEBUG: Integer value 20 in $t6
    sw $t6, 0($t5)
    # DEBUG: Stored integer 20 through pointer #t25
    # DEBUG: Invalidating all cached values due to pointer store

    # TAC 43: 44: #t26 = & v_a_main_s2
I44:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [#t23] (dirty)
    # $t2: [#t21, #t22] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [<CONSTANT>]
    # $t5: [#t24, #t25] (dirty)
    # $t6: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [$t2]
    # #t22: [$t2, memory:-20($fp)]
    # #t23: [$t1]
    # #t24: [$t5]
    # #t25: [$t5, memory:-32($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t6]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t26 = &v_a_main_s2
    sw $t2, -16($fp)
    # DEBUG: Spilled #t21 from $t2 to memory
    addiu $t2, $fp, -8
    # DEBUG: #t26 = address of v_a_main_s2 at -8($fp)
    # DEBUG: #t26 (pointer) in $t2 (dirty)

    # TAC 44: 45: param #t26
I45:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [#t23] (dirty)
    # $t2: [#t26] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [<CONSTANT>]
    # $t5: [#t24, #t25] (dirty)
    # $t6: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [$t1]
    # #t24: [$t5]
    # #t25: [$t5, memory:-32($fp)]
    # #t26: [$t2]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t6]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t26
    # DEBUG: Collected parameter #1: #t26

    # TAC 45: 46: #t27 = call foo_up1, 1
I46:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t20] (dirty)
    # $t1: [#t23] (dirty)
    # $t2: [#t26] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [<CONSTANT>]
    # $t5: [#t24, #t25] (dirty)
    # $t6: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [$t0]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [$t1]
    # #t24: [$t5]
    # #t25: [$t5, memory:-32($fp)]
    # #t26: [$t2]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t6]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call foo_up1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -12($fp)
    # DEBUG: Spilled #t20 from $t0 to -12($fp)
    sw $t1, -24($fp)
    # DEBUG: Spilled #t23 from $t1 to -24($fp)
    sw $t2, -36($fp)
    # DEBUG: Spilled #t26 from $t2 to -36($fp)
    sw $t5, -28($fp)
    # DEBUG: Spilled #t24 from $t5 to -28($fp)
    sw $t5, -32($fp)
    # DEBUG: Spilled #t25 from $t5 to -32($fp)
    # === End Caller-Save ===
    addiu $sp, $sp, -4
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    lw $t0, -36($fp)
    # DEBUG: Loaded #t26 from memory at -36($fp)
    # DEBUG: Param 0 (#t26) in $t0
    sw $t0, 0($sp)
    # DEBUG: Stored param 0 on stack at 0($sp)
    move $a0, $t0
    # DEBUG: Copied param 0 to $a0
    jal foo_up1
    # DEBUG: Called foo_up1
    addiu $sp, $sp, 4
    # DEBUG: Deallocate 4 bytes of parameter space
    move $t1, $v0
    # DEBUG: Return value from $v0 to $t1
    # DEBUG: #t27 = return value in $t1 (dirty)

    # TAC 46: 47: #t28 = & v_a_main_s2
I47:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t1: [#t27] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [$t1]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t6]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t28 = &v_a_main_s2
    addiu $t3, $fp, -8
    # DEBUG: #t28 = address of v_a_main_s2 at -8($fp)
    # DEBUG: #t28 (pointer) in $t3 (dirty)

    # TAC 47: 48: #t29 = #t28 + 0
I48:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t1: [#t27] (dirty)
    # $t3: [#t28] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [$t1]
    # #t28: [$t3]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t6]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t29 = #t28 add 0
    # DEBUG: #t28 in $t3
    li $t0, 0
    # DEBUG: Loaded constant 0 into $t0
    # DEBUG: 0 in $t0
    add $t2, $t3, $t0
    # DEBUG: #t29 = result in $t2 (dirty)

    # TAC 48: 49: #t30 = * #t29
I49:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [<CONSTANT>]
    # $t1: [#t27] (dirty)
    # $t2: [#t29] (dirty)
    # $t3: [#t28] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [$t1]
    # #t28: [$t3]
    # #t29: [$t2]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t30 = *#t29
    # DEBUG: Pointer #t29 already in $t2
    lw $t4, 0($t2)
    # DEBUG: Dereferenced *#t29 into $t4
    # DEBUG: #t30 = *#t29 in $t4 (dirty)

    # TAC 49: 50: param #t30
I50:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [<CONSTANT>]
    # $t1: [#t27] (dirty)
    # $t2: [#t29] (dirty)
    # $t3: [#t28] (dirty)
    # $t4: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [$t1]
    # #t28: [$t3]
    # #t29: [$t2]
    # #t30: [$t4]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t30
    # DEBUG: Collected parameter #1: #t30

    # TAC 50: 51: #t31 = call print_int_i, 1
I51:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [<CONSTANT>]
    # $t1: [#t27] (dirty)
    # $t2: [#t29] (dirty)
    # $t3: [#t28] (dirty)
    # $t4: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [$t1]
    # #t28: [$t3]
    # #t29: [$t2]
    # #t30: [$t4]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t1, -36($fp)
    # DEBUG: Spilled #t27 from $t1 to -36($fp)
    sw $t2, -44($fp)
    # DEBUG: Spilled #t29 from $t2 to -44($fp)
    sw $t3, -40($fp)
    # DEBUG: Spilled #t28 from $t3 to -40($fp)
    sw $t4, -48($fp)
    # DEBUG: Spilled #t30 from $t4 to -48($fp)
    # === End Caller-Save ===
    # === Built-in print_int function ===
    lw $t0, -48($fp)
    # DEBUG: Loaded #t30 from memory at -48($fp)
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 51: 52: #t32 = call print_newline, 0
I52:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t30]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [memory:-36($fp)]
    # #t28: [memory:-40($fp)]
    # #t29: [memory:-44($fp)]
    # #t30: [$t0, memory:-48($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -48($fp)
    # DEBUG: Spilled #t30 from $t0 to -48($fp)
    # === End Caller-Save ===
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 52: 53: return 0
I53:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [memory:-36($fp)]
    # #t28: [memory:-40($fp)]
    # #t29: [memory:-44($fp)]
    # #t30: [memory:-48($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B9_i53_i53 ===
    # ======================================
    # Registers cleared at block start
    # TAC 53: 54: end function main
I54:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-24($fp)]
    # #t11: [memory:-28($fp)]
    # #t12: [memory:-32($fp)]
    # #t13: [memory:-36($fp)]
    # #t14: [memory:-40($fp)]
    # #t15: [memory:-44($fp)]
    # #t16: [memory:-48($fp)]
    # #t17: [memory:-52($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-12($fp)]
    # #t21: [memory:#t21]
    # #t22: [memory:-20($fp)]
    # #t23: [memory:-24($fp)]
    # #t24: [memory:-28($fp)]
    # #t25: [memory:-32($fp)]
    # #t26: [memory:-36($fp)]
    # #t27: [memory:-36($fp)]
    # #t28: [memory:-40($fp)]
    # #t29: [memory:-44($fp)]
    # #t30: [memory:-48($fp)]
    # #t5: [memory:-12($fp)]
    # #t6: [memory:-16($fp)]
    # #t9: [memory:#t9]
    # <CONSTANT>: [$t0]
    # v_a_foo_up1_s2: [memory:8($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
