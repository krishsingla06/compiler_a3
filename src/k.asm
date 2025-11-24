    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 30

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""p: %d, q: %d\n""
    # Found 1 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i28
    # Block B6: i29-i29

.data
    # String Literals
str_0: .asciiz "p: %d, q: %d\n"

    # Global and Static Variables
    # (no global or static variables)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i1 Next-Use:
    # Instr i0 Next-Use:
    #   printf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B1 ===

    # Next-use information computed
    # TAC 0: 1: function begin : printf_cp1_variadic
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
printf_cp1_variadic:
    # Function: printf_cp1_variadic
    # === Function Prologue for printf_cp1_variadic ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_s_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_s_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_s_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i2 Next-Use:
    #   printf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: end function printf_cp1_variadic
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for printf_cp1_variadic ===
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
    # End of function: printf_cp1_variadic


    # ======================================
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i4 Next-Use:
    # Instr i3 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : scanf_cp1_variadic
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
scanf_cp1_variadic:
    # Function: scanf_cp1_variadic
    # === Function Prologue for scanf_cp1_variadic ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_s_scanf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_s_scanf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # $a0: [v_s_scanf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i5 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: end function scanf_cp1_variadic
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for scanf_cp1_variadic ===
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
    # End of function: scanf_cp1_variadic


    # ======================================
    # === B5_i6_i28 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i28 Next-Use:
    # Instr i27 Next-Use:
    #   #t13 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i26 Next-Use:
    #   v_q_main_s2 -> N/A
    # Instr i25 Next-Use:
    #   v_p_main_s2 -> N/A
    # Instr i24 Next-Use:
    # Instr i23 Next-Use:
    #   #t12 -> N/A
    #   v_q_main_s2 -> N/A
    # Instr i22 Next-Use:
    #   #t11 -> N/A
    #   #t12 -> N/A
    # Instr i21 Next-Use:
    #   #t10 -> N/A
    #   #t11 -> N/A
    # Instr i20 Next-Use:
    #   #t10 -> N/A
    #   v_b_main_s2 -> N/A
    # Instr i19 Next-Use:
    #   #t9 -> N/A
    #   v_p_main_s2 -> N/A
    # Instr i18 Next-Use:
    #   #t8 -> N/A
    #   #t9 -> N/A
    # Instr i17 Next-Use:
    #   #t7 -> N/A
    #   #t8 -> N/A
    # Instr i16 Next-Use:
    #   #t7 -> N/A
    #   v_b_main_s2 -> i20
    # Instr i15 Next-Use:
    #   v_a_main_s2 -> N/A
    #   v_b_main_s2 -> N/A
    # Instr i14 Next-Use:
    #   #t6 -> N/A
    # Instr i13 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    # Instr i12 Next-Use:
    #   #t4 -> N/A
    #   #t5 -> N/A
    # Instr i11 Next-Use:
    #   #t4 -> N/A
    #   v_a_main_s2 -> i15
    # Instr i10 Next-Use:
    #   #t3 -> N/A
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i8 Next-Use:
    #   #t1 -> N/A
    #   #t2 -> N/A
    # Instr i7 Next-Use:
    #   #t1 -> N/A
    #   v_a_main_s2 -> i11
    # Instr i6 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 120 bytes
    addiu $sp, $sp, -120
    # Allocate 120 bytes (8 for $ra+$fp, 120 for locals/temps)
    sw $ra, 116($sp)
    # Save return address at 124($sp)
    sw $fp, 112($sp)
    # Save old frame pointer at 120($sp)
    addiu $fp, $sp, 112
    # Set new frame pointer (points to saved old $fp)

    # TAC 7: 8: #t1 = & v_a_main_s2
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_a_main_s2
    # DEBUG: #t1 = address of v_a_main_s2 at -8($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    addiu $t0, $fp, -8

    # TAC 8: 9: #t2 = #t1 + 0
I9:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = #t1 add 0
    # DEBUG: #t1 in $t0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    # DEBUG: #t2 = result in $t2 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t1, 0
    move $t2, $t0

    # TAC 9: 10: #t3 = #t2
I10:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = #t2
    # DEBUG: #t2 already in $t2
    # DEBUG: #t3 now also in $t2 (dirty)
    # DEBUG: Saved #t3 to memory at -36($fp)
    sw $t2, -36($fp)

    # TAC 10: 11: *(#t3) = 10
I11:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t3 = 10
    # DEBUG: Pointer #t3 in $t2
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: Integer value 10 in $t1
    # DEBUG: Stored integer 10 through pointer #t3
    # DEBUG: Invalidating all cached values due to pointer store
    li $t1, 10
    sw $t1, 0($t2)

    # TAC 11: 12: #t4 = & v_a_main_s2
I12:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # <CONST_10_10>: [$t1]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = &v_a_main_s2
    # DEBUG: Spilled #t1 from $t0 to memory
    # DEBUG: #t4 = address of v_a_main_s2 at -8($fp)
    # DEBUG: #t4 (pointer) in $t0 (dirty)
    sw $t0, -28($fp)
    addiu $t0, $fp, -8

    # TAC 12: 13: #t5 = #t4 + 4
I13:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [$t0]
    # <CONST_10_10>: [$t1]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = #t4 add 4
    # DEBUG: #t4 in $t0
    # DEBUG: Loaded constant 4 into $t3
    # DEBUG: 4 in $t3
    # DEBUG: #t5 = result in $t4 (dirty)
    li $t3, 4
    add $t4, $t0, $t3

    # TAC 13: 14: #t6 = #t5
I14:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [$t0]
    # #t5: [$t4]
    # <CONST_10_10>: [$t1]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t6 = #t5
    # DEBUG: #t5 already in $t4
    # DEBUG: #t6 now also in $t4 (dirty)
    # DEBUG: Saved #t6 to memory at -48($fp)
    sw $t4, -48($fp)

    # TAC 14: 15: *(#t6) = 20
I15:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [$t0]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # <CONST_10_10>: [$t1]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t6 = 20
    # DEBUG: Pointer #t6 in $t4
    # DEBUG: Loaded constant 20 into $t3
    # DEBUG: Integer value 20 in $t3
    # DEBUG: Stored integer 20 through pointer #t6
    # DEBUG: Invalidating all cached values due to pointer store
    li $t3, 20
    sw $t3, 0($t4)

    # TAC 15: 16: v_b_main_s2 = v_a_main_s2
I16:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [$t0]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_b_main_s2 = v_a_main_s2
    # DEBUG: Loaded v_a_main_s2 from memory at -8($fp)
    # DEBUG: v_b_main_s2 loaded in $t5 (dirty)
    lw $t5, -8($fp)

    # TAC 16: 17: #t7 = & v_b_main_s2
I17:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [$t0]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = &v_b_main_s2
    # DEBUG: Spilled #t4 from $t0 to memory
    # DEBUG: #t7 = address of v_b_main_s2 at -16($fp)
    # DEBUG: #t7 (pointer) in $t0 (dirty)
    sw $t0, -40($fp)
    addiu $t0, $fp, -16

    # TAC 17: 18: #t8 = #t7 + 0
I18:
    # --- Register Descriptor ---
    # $t0: [#t7] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t8 = #t7 add 0
    # DEBUG: #t7 in $t0
    # DEBUG: Loaded constant 0 into $t6
    # DEBUG: 0 in $t6
    # DEBUG: #t8 = result in $t7 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t6, 0
    move $t7, $t0

    # TAC 18: 19: #t9 = * #t8
I19:
    # --- Register Descriptor ---
    # $t0: [#t7] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [$t0]
    # #t8: [$t7]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t9 = *#t8
    # DEBUG: Pointer #t8 already in $t7
    # DEBUG: Spilled #t7 from $t0 to memory
    # DEBUG: Dereferenced *#t8 into $t0
    # DEBUG: #t9 = *#t8 in $t0 (dirty)
    sw $t0, -52($fp)
    lw $t0, 0($t7)

    # TAC 19: 20: v_p_main_s2 = #t9
I20:
    # --- Register Descriptor ---
    # $t0: [#t9] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_p_main_s2 = #t9
    # DEBUG: #t9 already in $t0
    # DEBUG: v_p_main_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_p_main_s2 to memory at -20($fp)
    sw $t0, -20($fp)

    # TAC 20: 21: #t10 = & v_b_main_s2
I21:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [<CONST_10_10>]
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t10 = &v_b_main_s2
    # DEBUG: #t10 = address of v_b_main_s2 at -16($fp)
    # DEBUG: #t10 (pointer) in $t1 (dirty)
    addiu $t1, $fp, -16

    # TAC 21: 22: #t11 = #t10 + 4
I22:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [#t10] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t11 = #t10 add 4
    # DEBUG: #t10 in $t1
    # DEBUG: Loaded constant 4 into $t6
    # DEBUG: 4 in $t6
    # DEBUG: #t11 = result in $t8 (dirty)
    li $t6, 4
    add $t8, $t1, $t6

    # TAC 22: 23: #t12 = * #t11
I23:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [#t10] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t1]
    # #t11: [$t8]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t12 = *#t11
    # DEBUG: Pointer #t11 already in $t8
    # DEBUG: Spilled #t10 from $t1 to memory
    # DEBUG: Dereferenced *#t11 into $t1
    # DEBUG: #t12 = *#t11 in $t1 (dirty)
    sw $t1, -64($fp)
    lw $t1, 0($t8)

    # TAC 23: 24: v_q_main_s2 = #t12
I24:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [#t12] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:#t10]
    # #t11: [$t8]
    # #t12: [$t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_q_main_s2 = #t12
    # DEBUG: #t12 already in $t1
    # DEBUG: v_q_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_q_main_s2 to memory at -24($fp)
    sw $t1, -24($fp)

    # TAC 24: 25: param "p: %d, q: %d\n"
I25:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [#t12, v_q_main_s2] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:#t10]
    # #t11: [$t8]
    # #t12: [$t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_q_main_s2: [$t1, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "p: %d, q: %d\n"
    # DEBUG: Collected parameter #1: "p: %d, q: %d\n"

    # TAC 25: 26: param v_p_main_s2
I26:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [#t12, v_q_main_s2] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:#t10]
    # #t11: [$t8]
    # #t12: [$t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_q_main_s2: [$t1, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_p_main_s2
    # DEBUG: Collected parameter #2: v_p_main_s2

    # TAC 26: 27: param v_q_main_s2
I27:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [#t12, v_q_main_s2] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:#t10]
    # #t11: [$t8]
    # #t12: [$t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_q_main_s2: [$t1, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_q_main_s2
    # DEBUG: Collected parameter #3: v_q_main_s2

    # TAC 27: 28: #t13 = call printf_cp1_variadic, 3
I28:
    # --- Register Descriptor ---
    # $t0: [#t9, v_p_main_s2] (dirty)
    # $t1: [#t12, v_q_main_s2] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t3: [<CONST_14_20>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [v_a_main_s2, v_b_main_s2] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:#t10]
    # #t11: [$t8]
    # #t12: [$t1]
    # #t2: [$t2]
    # #t3: [$t2, memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [$t4]
    # #t6: [$t4, memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [$t7]
    # #t9: [$t0]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [$t5]
    # v_b_main_s2: [$t5]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_q_main_s2: [$t1, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 3 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t9 from $t0 to -60($fp)
    # DEBUG: Spilled v_p_main_s2 from $t0 to -20($fp)
    # DEBUG: Spilled #t12 from $t1 to -72($fp)
    # DEBUG: Spilled v_q_main_s2 from $t1 to -24($fp)
    # DEBUG: Spilled #t2 from $t2 to -32($fp)
    # DEBUG: Spilled #t3 from $t2 to -36($fp)
    # DEBUG: Spilled #t5 from $t4 to -44($fp)
    # DEBUG: Spilled #t6 from $t4 to -48($fp)
    # DEBUG: Spilled v_a_main_s2 from $t5 to -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t5 to -16($fp)
    # DEBUG: Spilled #t8 from $t7 to -56($fp)
    sw $t0, -60($fp)
    # DEBUG: Spilled #t11 from $t8 to -68($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 2 arguments
    # DEBUG: format_param = '"p: %d, q: %d\n"', first char = 34
    sw $t0, -20($fp)
    # Load format string literal address
    # Store variadic arguments on stack
    sw $t1, -72($fp)
    # Arg 0: v_p_main_s2
    sw $t1, -24($fp)
    # DEBUG: Loaded v_p_main_s2 from memory at -20($fp)
    sw $t2, -32($fp)
    # Arg 1: v_q_main_s2
    sw $t2, -36($fp)
    # DEBUG: Loaded v_q_main_s2 from memory at -24($fp)
    sw $t4, -44($fp)
    sw $t4, -48($fp)
    sw $t5, -8($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t5, -16($fp)
    sw $t7, -56($fp)
    sw $t8, -68($fp)
    la $a0, str_0
    addiu $sp, $sp, -8
    lw $t0, -20($fp)
    sw $t0, 0($sp)
    lw $t1, -24($fp)
    sw $t1, 4($sp)
    jal __lib_printf
    addiu $sp, $sp, 8

    # TAC 28: 29: return 0
I29:
    # --- Register Descriptor ---
    # $t0: [v_p_main_s2]
    # $t1: [v_q_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:#t10]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # <CONST_10_10>: [$t1]
    # <CONST_14_20>: [$t3]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-16($fp)]
    # v_p_main_s2: [$t0, memory:-20($fp)]
    # v_q_main_s2: [$t1, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B6_i29_i29 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i29 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 29: 30: end function main
I30:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:#t10]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:#t4]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-16($fp)]
    # v_p_main_s2: [memory:-20($fp)]
    # v_q_main_s2: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
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
    # ======================================
    #   Including Runtime Library Functions
    # ======================================

#==============================================================================
# RUNTIME LIBRARY FUNCTIONS
# The following functions are imported from the runtime library
#==============================================================================

#==============================================================================
__lib_printf:
    # Save registers
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $fp, 8($sp)
    sw $a0, 4($sp)  # Save format string
    sw $s0, 0($sp)  # Save $s0
    move $fp, $sp
    
    # Format string is in $a0 (already loaded by caller)
    # We'll save it and work with it
    move $s0, $a0  # $s0 = format string pointer
    
    # Parameter pointer - variadic args would be on stack after return address
    # For now, we'll just handle the format string without additional args
    addiu $t0, $fp, 16  # Points to where variadic args would be on stack
    
printf_loop:
    # Load next character from format string
    lb $t1, 0($s0)
    beqz $t1, printf_end
    
    # Check if it's a format specifier
    li $t2, 37  # ASCII '%'
    bne $t1, $t2, printf_print_char
    
    # It's a format specifier, check next character
    addiu $s0, $s0, 1
    lb $t1, 0($s0)
    beqz $t1, printf_end
    
    # Check format type
    li $t2, 100  # ASCII 'd' - integer
    beq $t1, $t2, printf_int
    
    li $t2, 115  # ASCII 's' - string
    beq $t1, $t2, printf_string
    
    li $t2, 99   # ASCII 'c' - char
    beq $t1, $t2, printf_char
    
    li $t2, 102  # ASCII 'f' - float
    beq $t1, $t2, printf_float
    
    # Unknown format, just print the %
    li $a0, 37
    li $v0, 11
    syscall
    j printf_continue

printf_int:
    # Print integer
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 1
    syscall
    j printf_continue

printf_string:
    # Print string
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 4
    syscall
    j printf_continue

printf_char:
    # Print character
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 11
    syscall
    j printf_continue

printf_float:
    # Print float
    l.s $f12, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 2
    syscall
    j printf_continue

printf_print_char:
    # Print regular character
    move $a0, $t1
    li $v0, 11
    syscall

printf_continue:
    # Move to next character in format string
    addiu $s0, $s0, 1
    j printf_loop

printf_end:
    # Restore registers
    lw $s0, 0($sp)
    lw $a0, 4($sp)
    lw $fp, 8($sp)
    lw $ra, 12($sp)
    addiu $sp, $sp, 16
    jr $ra


#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

