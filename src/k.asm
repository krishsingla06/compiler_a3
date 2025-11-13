    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 68

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""%d\n""
    # Added string literal: str_1 = ""%f\n""
    # Added string literal: str_2 = ""%c\n""
    # Found 3 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i66
    # Block B4: i67-i67

.data
    # String Literals
str_2: .asciiz "%c\n"
str_0: .asciiz "%d\n"
str_1: .asciiz "%f\n"

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
    # DEBUG: Parameter 0 (v_format_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_format_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_format_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
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
    # === B3_i3_i66 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i66 Next-Use:
    # Instr i65 Next-Use:
    #   #t47 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i64 Next-Use:
    #   #t46 -> N/A
    # Instr i63 Next-Use:
    # Instr i62 Next-Use:
    #   #t45 -> N/A
    #   #t46 -> N/A
    # Instr i61 Next-Use:
    #   #t44 -> N/A
    #   #t45 -> N/A
    # Instr i60 Next-Use:
    #   #t43 -> N/A
    #   #t44 -> N/A
    # Instr i59 Next-Use:
    #   #t42 -> N/A
    #   #t43 -> N/A
    # Instr i58 Next-Use:
    #   #t41 -> N/A
    #   #t42 -> N/A
    # Instr i57 Next-Use:
    #   #t41 -> N/A
    #   v_var_main_s2 -> N/A
    # Instr i56 Next-Use:
    #   #t40 -> N/A
    #   printf_cp1_variadic -> i65
    # Instr i55 Next-Use:
    #   #t39 -> N/A
    # Instr i54 Next-Use:
    # Instr i53 Next-Use:
    #   #t38 -> N/A
    #   #t39 -> N/A
    # Instr i52 Next-Use:
    #   #t37 -> N/A
    #   #t38 -> N/A
    # Instr i51 Next-Use:
    #   #t36 -> N/A
    #   #t37 -> N/A
    # Instr i50 Next-Use:
    #   #t35 -> N/A
    #   #t36 -> N/A
    # Instr i49 Next-Use:
    #   #t34 -> N/A
    #   #t35 -> N/A
    # Instr i48 Next-Use:
    #   #t34 -> N/A
    #   v_var_main_s2 -> i57
    # Instr i47 Next-Use:
    #   #t33 -> N/A
    #   printf_cp1_variadic -> i56
    # Instr i46 Next-Use:
    #   #t32 -> N/A
    # Instr i45 Next-Use:
    # Instr i44 Next-Use:
    #   #t31 -> N/A
    #   #t32 -> N/A
    # Instr i43 Next-Use:
    #   #t30 -> N/A
    #   #t31 -> N/A
    # Instr i42 Next-Use:
    #   #t30 -> N/A
    #   v_var_main_s2 -> i48
    # Instr i41 Next-Use:
    #   #t29 -> N/A
    #   printf_cp1_variadic -> i47
    # Instr i40 Next-Use:
    #   #t28 -> N/A
    # Instr i39 Next-Use:
    # Instr i38 Next-Use:
    #   #t27 -> N/A
    #   #t28 -> N/A
    # Instr i37 Next-Use:
    #   #t26 -> N/A
    #   #t27 -> N/A
    # Instr i36 Next-Use:
    #   #t26 -> N/A
    #   v_var_main_s2 -> i42
    # Instr i35 Next-Use:
    #   #t25 -> N/A
    #   printf_cp1_variadic -> i41
    # Instr i34 Next-Use:
    #   #t24 -> N/A
    # Instr i33 Next-Use:
    # Instr i32 Next-Use:
    #   #t23 -> N/A
    #   #t24 -> N/A
    # Instr i31 Next-Use:
    #   #t22 -> N/A
    #   #t23 -> N/A
    # Instr i30 Next-Use:
    #   #t22 -> N/A
    #   v_var_main_s2 -> i36
    # Instr i29 Next-Use:
    #   #t21 -> N/A
    # Instr i28 Next-Use:
    #   #t20 -> N/A
    #   #t21 -> N/A
    # Instr i27 Next-Use:
    #   #t19 -> N/A
    #   #t20 -> N/A
    # Instr i26 Next-Use:
    #   #t18 -> N/A
    #   #t19 -> N/A
    # Instr i25 Next-Use:
    #   #t17 -> N/A
    #   #t18 -> N/A
    # Instr i24 Next-Use:
    #   #t16 -> N/A
    #   #t17 -> N/A
    # Instr i23 Next-Use:
    #   #t16 -> N/A
    #   v_var_main_s2 -> i30
    # Instr i22 Next-Use:
    #   #t15 -> N/A
    # Instr i21 Next-Use:
    #   #t14 -> N/A
    #   #t15 -> N/A
    # Instr i20 Next-Use:
    #   #t13 -> N/A
    #   #t14 -> N/A
    # Instr i19 Next-Use:
    #   #t12 -> N/A
    #   #t13 -> N/A
    # Instr i18 Next-Use:
    #   #t11 -> N/A
    #   #t12 -> N/A
    # Instr i17 Next-Use:
    #   #t10 -> N/A
    #   #t11 -> N/A
    # Instr i16 Next-Use:
    #   #t10 -> N/A
    #   v_var_main_s2 -> i23
    # Instr i15 Next-Use:
    #   #t9 -> N/A
    # Instr i14 Next-Use:
    #   #t8 -> N/A
    #   #t9 -> N/A
    # Instr i13 Next-Use:
    #   #t7 -> N/A
    #   #t8 -> N/A
    # Instr i12 Next-Use:
    #   #t7 -> N/A
    #   v_var_main_s2 -> i16
    # Instr i11 Next-Use:
    #   #t6 -> N/A
    # Instr i10 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    # Instr i9 Next-Use:
    #   #t4 -> N/A
    #   #t5 -> N/A
    # Instr i8 Next-Use:
    #   #t4 -> N/A
    #   v_var_main_s2 -> i12
    # Instr i7 Next-Use:
    #   #t3 -> N/A
    # Instr i6 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    #   #t2 -> N/A
    # Instr i4 Next-Use:
    #   #t1 -> N/A
    #   v_var_main_s2 -> i8
    # Instr i3 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : main
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 236 bytes
    addiu $sp, $sp, -236
    # Allocate 236 bytes (8 for $ra+$fp, 236 for locals/temps)
    sw $ra, 232($sp)
    # Save return address at 240($sp)
    sw $fp, 228($sp)
    # Save old frame pointer at 236($sp)
    addiu $fp, $sp, 228
    # Set new frame pointer (points to saved old $fp)

    # TAC 4: 5: #t1 = & v_var_main_s2
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_var_main_s2
    # DEBUG: #t1 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    addiu $t0, $fp, -20

    # TAC 5: 6: #t2 = #t1 + 0
I6:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = #t1 add 0
    # DEBUG: #t1 in $t0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    # DEBUG: #t2 = result in $t2 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t1, 0
    move $t2, $t0

    # TAC 6: 7: #t3 = #t2
I7:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = #t2
    # DEBUG: #t2 already in $t2
    # DEBUG: #t3 now also in $t2 (dirty)
    # DEBUG: Saved #t3 to memory at -32($fp)
    sw $t2, -32($fp)

    # TAC 7: 8: *(#t3) = 10
I8:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-32($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t3 = 10
    # DEBUG: Pointer #t3 in $t2
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: Integer value 10 in $t1
    # DEBUG: Stored integer 10 through pointer #t3
    # DEBUG: Invalidating all cached values due to pointer store
    li $t1, 10
    sw $t1, 0($t2)

    # TAC 8: 9: #t4 = & v_var_main_s2
I9:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [<CONST_7_10>]
    # $t2: [#t2, #t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-32($fp)]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = &v_var_main_s2
    # DEBUG: #t4 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t4 (pointer) in $t1 (dirty)
    addiu $t1, $fp, -20

    # TAC 9: 10: #t5 = #t4 + 4
I10:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-32($fp)]
    # #t4: [$t1]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = #t4 add 4
    # DEBUG: #t4 in $t1
    # DEBUG: Loaded constant 4 into $t3
    # DEBUG: 4 in $t3
    # DEBUG: #t5 = result in $t4 (dirty)
    li $t3, 4
    add $t4, $t1, $t3

    # TAC 10: 11: #t6 = #t5
I11:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t6 = #t5
    # DEBUG: Float assignment
    # DEBUG: #t5 in $t4
    # DEBUG: #t6 = #t5 in $t4 (dirty, float)

    # TAC 11: 12: *(#t6) = 97.500000
I12:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t6 = 97.500000
    # DEBUG: Pointer #t6 in $t4
    # DEBUG: Loaded float constant 97.500000 into $f0
    # DEBUG: Float value 97.500000 in $f0
    # DEBUG: Stored float 97.500000 through pointer #t6
    # DEBUG: Invalidating all cached values due to pointer store
    # Loading float constant: 97.500000
    li.s $f0, 97.500000
    s.s $f0, 0($t4)

    # TAC 12: 13: #t7 = & v_var_main_s2
I13:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t2, #t3] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # #t3: [$t2, memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = &v_var_main_s2
    # DEBUG: Spilled #t2 from $t2 to memory
    # DEBUG: #t7 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t7 (pointer) in $t2 (dirty)
    sw $t2, -28($fp)
    addiu $t2, $fp, -20

    # TAC 13: 14: #t8 = #t7 + 16
I14:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t8 = #t7 add 16
    # DEBUG: #t7 in $t2
    # DEBUG: Loaded constant 16 into $t3
    # DEBUG: 16 in $t3
    # DEBUG: #t8 = result in $t5 (dirty)
    li $t3, 16
    add $t5, $t2, $t3

    # TAC 14: 15: #t9 = #t8
I15:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t9 = #t8
    # DEBUG: #t8 already in $t5
    # DEBUG: #t9 now also in $t5 (dirty)
    # DEBUG: Saved #t9 to memory at -56($fp)
    sw $t5, -56($fp)

    # TAC 15: 16: *(#t9) = 122
I16:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t9 = 122
    # DEBUG: Pointer #t9 in $t5
    # DEBUG: Loaded constant 122 into $t3
    # DEBUG: Integer value 122 in $t3
    # DEBUG: Stored integer 122 through pointer #t9
    # DEBUG: Invalidating all cached values due to pointer store
    li $t3, 122
    sw $t3, 0($t5)

    # TAC 16: 17: #t10 = & v_var_main_s2
I17:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [<CONST_15_122>]
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t10 = &v_var_main_s2
    # DEBUG: #t10 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t10 (pointer) in $t3 (dirty)
    addiu $t3, $fp, -20

    # TAC 17: 18: #t11 = #t10 + 8
I18:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t11 = #t10 add 8
    # DEBUG: #t10 in $t3
    # DEBUG: Loaded constant 8 into $t6
    # DEBUG: 8 in $t6
    # DEBUG: #t11 = result in $t7 (dirty)
    li $t6, 8
    add $t7, $t3, $t6

    # TAC 18: 19: #t12 = #t11
I19:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t7: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t12 = #t11
    # DEBUG: #t11 already in $t7
    # DEBUG: #t12 now also in $t7 (dirty)
    # DEBUG: Saved #t12 to memory at -68($fp)
    sw $t7, -68($fp)

    # TAC 19: 20: #t13 = #t12
I20:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t13 = #t12
    # DEBUG: #t12 already in $t7
    # DEBUG: #t13 now also in $t7 (dirty)
    # DEBUG: Saved #t13 to memory at -72($fp)
    sw $t7, -72($fp)

    # TAC 20: 21: #t14 = #t13 + 0
I21:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t7: [#t11, #t12, #t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t14 = #t13 add 0
    # DEBUG: #t13 in $t7
    # DEBUG: Loaded constant 0 into $t6
    # DEBUG: 0 in $t6
    # DEBUG: #t14 = result in $t8 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t6, 0
    move $t8, $t7

    # TAC 21: 22: #t15 = #t14
I22:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t15 = #t14
    # DEBUG: #t14 already in $t8
    # DEBUG: #t15 now also in $t8 (dirty)
    # DEBUG: Saved #t15 to memory at -80($fp)
    sw $t8, -80($fp)

    # TAC 22: 23: *(#t15) = 5
I23:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t15 = 5
    # DEBUG: Pointer #t15 in $t8
    # DEBUG: Loaded constant 5 into $t6
    # DEBUG: Integer value 5 in $t6
    # DEBUG: Stored integer 5 through pointer #t15
    # DEBUG: Invalidating all cached values due to pointer store
    li $t6, 5
    sw $t6, 0($t8)

    # TAC 23: 24: #t16 = & v_var_main_s2
I24:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t5, #t6] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t16 = &v_var_main_s2
    # DEBUG: Spilled #t5 from $t4 to memory
    # DEBUG: Spilled #t6 from $t4 to memory
    # DEBUG: #t16 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t16 (pointer) in $t4 (dirty)
    sw $t4, -40($fp)
    sw $t4, -44($fp)
    addiu $t4, $fp, -20

    # TAC 24: 25: #t17 = #t16 + 8
I25:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t17 = #t16 add 8
    # DEBUG: #t16 in $t4
    # DEBUG: Loaded constant 8 into $t9
    # DEBUG: 8 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t1 from $t0 to memory at -24($fp)
    # DEBUG: #t17 = result in $t0 (dirty)
    li $t9, 8
    sw $t0, -24($fp)
    add $t0, $t4, $t9

    # TAC 25: 26: #t18 = #t17
I26:
    # --- Register Descriptor ---
    # $t0: [#t17] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t18 = #t17
    # DEBUG: #t17 already in $t0
    # DEBUG: #t18 now also in $t0 (dirty)
    # DEBUG: Saved #t18 to memory at -92($fp)
    sw $t0, -92($fp)

    # TAC 26: 27: #t19 = #t18
I27:
    # --- Register Descriptor ---
    # $t0: [#t17, #t18] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [$t0]
    # #t18: [$t0, memory:-92($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t19 = #t18
    # DEBUG: #t18 already in $t0
    # DEBUG: #t19 now also in $t0 (dirty)
    # DEBUG: Saved #t19 to memory at -96($fp)
    sw $t0, -96($fp)

    # TAC 27: 28: #t20 = #t19 + 4
I28:
    # --- Register Descriptor ---
    # $t0: [#t17, #t18, #t19] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [$t0]
    # #t18: [$t0, memory:-92($fp)]
    # #t19: [$t0, memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t20 = #t19 add 4
    # DEBUG: #t19 in $t0
    # DEBUG: Loaded constant 4 into $t9
    # DEBUG: 4 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t17 from $t0 to memory at -88($fp)
    # DEBUG: Spilled #t18 from $t0 to memory at -92($fp)
    # DEBUG: Spilled #t19 from $t0 to memory at -96($fp)
    # DEBUG: #t20 = result in $t0 (dirty)
    li $t9, 4
    sw $t0, -88($fp)
    sw $t0, -92($fp)
    sw $t0, -96($fp)
    add $t0, $t0, $t9

    # TAC 28: 29: #t21 = #t20
I29:
    # --- Register Descriptor ---
    # $t0: [#t20] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [$t0]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t21 = #t20
    # DEBUG: #t20 already in $t0
    # DEBUG: #t21 now also in $t0 (dirty)
    # DEBUG: Saved #t21 to memory at -104($fp)
    sw $t0, -104($fp)

    # TAC 29: 30: *(#t21) = 15
I30:
    # --- Register Descriptor ---
    # $t0: [#t20, #t21] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [$t0]
    # #t21: [$t0, memory:-104($fp)]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t21 = 15
    # DEBUG: Pointer #t21 in $t0
    # DEBUG: Loaded constant 15 into $t9
    # DEBUG: Integer value 15 in $t9
    # DEBUG: Stored integer 15 through pointer #t21
    # DEBUG: Invalidating all cached values due to pointer store
    li $t9, 15
    sw $t9, 0($t0)

    # TAC 30: 31: #t22 = & v_var_main_s2
I31:
    # --- Register Descriptor ---
    # $t0: [#t20, #t21] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t8, #t9] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # $t9: [<CONST_29_15>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [$t0]
    # #t21: [$t0, memory:-104($fp)]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [$t5]
    # #t9: [$t5, memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t22 = &v_var_main_s2
    # DEBUG: Spilled #t8 from $t5 to memory
    # DEBUG: #t22 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t22 (pointer) in $t5 (dirty)
    sw $t5, -52($fp)
    addiu $t5, $fp, -20

    # TAC 31: 32: #t23 = #t22 + 0
I32:
    # --- Register Descriptor ---
    # $t0: [#t20, #t21] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [<CONST_22_5>]
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # $t9: [<CONST_29_15>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [$t0]
    # #t21: [$t0, memory:-104($fp)]
    # #t22: [$t5]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_22_5>: [$t6]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t23 = #t22 add 0
    # DEBUG: #t22 in $t5
    # DEBUG: Loaded constant 0 into $t6
    # DEBUG: 0 in $t6
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t20 from $t0 to memory at -100($fp)
    # DEBUG: Spilled #t21 from $t0 to memory at -104($fp)
    # DEBUG: #t23 = result in $t0 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t6, 0
    sw $t0, -100($fp)
    sw $t0, -104($fp)
    move $t0, $t5

    # TAC 32: 33: #t24 = * #t23
I33:
    # --- Register Descriptor ---
    # $t0: [#t23] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t22] (dirty)
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # $t9: [<CONST_29_15>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [$t5]
    # #t23: [$t0]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t24 = *#t23
    # DEBUG: Pointer #t23 already in $t0
    # DEBUG: Dereferenced *#t23 into $t6
    # DEBUG: #t24 = *#t23 in $t6 (dirty)
    lw $t6, 0($t0)

    # TAC 33: 34: param "%d\n"
I34:
    # --- Register Descriptor ---
    # $t0: [#t23] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [#t24] (dirty)
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # $t9: [<CONST_29_15>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [$t5]
    # #t23: [$t0]
    # #t24: [$t6]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 34: 35: param #t24
I35:
    # --- Register Descriptor ---
    # $t0: [#t23] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [#t24] (dirty)
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # $t9: [<CONST_29_15>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [$t5]
    # #t23: [$t0]
    # #t24: [$t6]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t24
    # DEBUG: Collected parameter #2: #t24

    # TAC 35: 36: #t25 = call printf_cp1_variadic, 2
I36:
    # --- Register Descriptor ---
    # $t0: [#t23] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t10] (dirty)
    # $t4: [#t16] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [#t24] (dirty)
    # $t7: [#t11, #t12, #t13] (dirty)
    # $t8: [#t14, #t15] (dirty)
    # $t9: [<CONST_29_15>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [$t3]
    # #t11: [$t7]
    # #t12: [$t7, memory:-68($fp)]
    # #t13: [$t7, memory:-72($fp)]
    # #t14: [$t8]
    # #t15: [$t8, memory:-80($fp)]
    # #t16: [$t4]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [$t5]
    # #t23: [$t0]
    # #t24: [$t6]
    # #t3: [memory:-32($fp)]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [$t2]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t23 from $t0 to -112($fp)
    # DEBUG: Spilled #t4 from $t1 to -36($fp)
    # DEBUG: Spilled #t7 from $t2 to -48($fp)
    # DEBUG: Spilled #t10 from $t3 to -60($fp)
    # DEBUG: Spilled #t16 from $t4 to -84($fp)
    # DEBUG: Spilled #t22 from $t5 to -108($fp)
    # DEBUG: Spilled #t24 from $t6 to -116($fp)
    # DEBUG: Spilled #t11 from $t7 to -64($fp)
    # DEBUG: Spilled #t12 from $t7 to -68($fp)
    # DEBUG: Spilled #t13 from $t7 to -72($fp)
    # DEBUG: Spilled #t14 from $t8 to -76($fp)
    sw $t0, -112($fp)
    # DEBUG: Spilled #t15 from $t8 to -80($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    sw $t1, -36($fp)
    # Load format string literal address
    # Store variadic arguments on stack
    sw $t2, -48($fp)
    # Arg 0: #t24
    sw $t3, -60($fp)
    # DEBUG: Loaded #t24 from memory at -116($fp)
    sw $t4, -84($fp)
    sw $t5, -108($fp)
    sw $t6, -116($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t7, -64($fp)
    sw $t7, -68($fp)
    sw $t7, -72($fp)
    sw $t8, -76($fp)
    sw $t8, -80($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -116($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 36: 37: #t26 = & v_var_main_s2
I37:
    # --- Register Descriptor ---
    # $t0: [#t24]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [$t0, memory:-116($fp)]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t26 = &v_var_main_s2
    # DEBUG: #t26 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t26 (pointer) in $t7 (dirty)
    addiu $t7, $fp, -20

    # TAC 37: 38: #t27 = #t26 + 4
I38:
    # --- Register Descriptor ---
    # $t0: [#t24]
    # $t7: [#t26] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [$t0, memory:-116($fp)]
    # #t26: [$t7]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t27 = #t26 add 4
    # DEBUG: #t26 in $t7
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t27 = result in $t2 (dirty)
    li $t1, 4
    add $t2, $t7, $t1

    # TAC 38: 39: #t28 = * #t27
I39:
    # --- Register Descriptor ---
    # $t0: [#t24]
    # $t2: [#t27] (dirty)
    # $t7: [#t26] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [$t0, memory:-116($fp)]
    # #t26: [$t7]
    # #t27: [$t2]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t28 = *#t27
    # DEBUG: Pointer #t27 already in $t2
    # DEBUG: Dereferenced *#t27 into $t8
    # DEBUG: #t28 = *#t27 in $t8 (dirty)
    lw $t8, 0($t2)

    # TAC 39: 40: param "%f\n"
I40:
    # --- Register Descriptor ---
    # $t0: [#t24]
    # $t2: [#t27] (dirty)
    # $t7: [#t26] (dirty)
    # $t8: [#t28] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [$t0, memory:-116($fp)]
    # #t26: [$t7]
    # #t27: [$t2]
    # #t28: [$t8]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%f\n"
    # DEBUG: Collected parameter #1: "%f\n"

    # TAC 40: 41: param #t28
I41:
    # --- Register Descriptor ---
    # $t0: [#t24]
    # $t2: [#t27] (dirty)
    # $t7: [#t26] (dirty)
    # $t8: [#t28] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [$t0, memory:-116($fp)]
    # #t26: [$t7]
    # #t27: [$t2]
    # #t28: [$t8]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t28
    # DEBUG: Collected parameter #2: #t28

    # TAC 41: 42: #t29 = call printf_cp1_variadic, 2
I42:
    # --- Register Descriptor ---
    # $t0: [#t24]
    # $t2: [#t27] (dirty)
    # $t7: [#t26] (dirty)
    # $t8: [#t28] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [$t0, memory:-116($fp)]
    # #t26: [$t7]
    # #t27: [$t2]
    # #t28: [$t8]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t24 from $t0 to -116($fp)
    # DEBUG: Spilled #t27 from $t2 to -124($fp)
    # DEBUG: Spilled #t26 from $t7 to -120($fp)
    # DEBUG: Spilled #t28 from $t8 to -128($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%f\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t28
    # DEBUG: Loaded float #t28 from -128($fp) into $f1
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -116($fp)
    sw $t2, -124($fp)
    sw $t7, -120($fp)
    sw $t8, -128($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    l.s $f1, -128($fp)
    swc1 $f1, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 42: 43: #t30 = & v_var_main_s2
I43:
    # --- Register Descriptor ---
    # $f1: [#t28]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [$f1]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t30 = &v_var_main_s2
    # DEBUG: #t30 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t30 (pointer) in $t9 (dirty)
    addiu $t9, $fp, -20

    # TAC 43: 44: #t31 = #t30 + 16
I44:
    # --- Register Descriptor ---
    # $f1: [#t28]
    # $t9: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [$f1]
    # #t3: [memory:-32($fp)]
    # #t30: [$t9]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t31 = #t30 add 16
    # DEBUG: #t30 in $t9
    # DEBUG: Loaded constant 16 into $t0
    # DEBUG: 16 in $t0
    # DEBUG: #t31 = result in $t1 (dirty)
    li $t0, 16
    add $t1, $t9, $t0

    # TAC 44: 45: #t32 = * #t31
I45:
    # --- Register Descriptor ---
    # $f1: [#t28]
    # $t1: [#t31] (dirty)
    # $t9: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [$f1]
    # #t3: [memory:-32($fp)]
    # #t30: [$t9]
    # #t31: [$t1]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t32 = *#t31
    # DEBUG: Pointer #t31 already in $t1
    # DEBUG: Dereferenced *#t31 (char*) into $t0 using lb
    # DEBUG: #t32 = *#t31 in $t0 (dirty)
    lb $t0, 0($t1)

    # TAC 45: 46: param "%c\n"
I46:
    # --- Register Descriptor ---
    # $f1: [#t28]
    # $t0: [#t32] (dirty)
    # $t1: [#t31] (dirty)
    # $t9: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [$f1]
    # #t3: [memory:-32($fp)]
    # #t30: [$t9]
    # #t31: [$t1]
    # #t32: [$t0]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%c\n"
    # DEBUG: Collected parameter #1: "%c\n"

    # TAC 46: 47: param #t32
I47:
    # --- Register Descriptor ---
    # $f1: [#t28]
    # $t0: [#t32] (dirty)
    # $t1: [#t31] (dirty)
    # $t9: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [$f1]
    # #t3: [memory:-32($fp)]
    # #t30: [$t9]
    # #t31: [$t1]
    # #t32: [$t0]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t32
    # DEBUG: Collected parameter #2: #t32

    # TAC 47: 48: #t33 = call printf_cp1_variadic, 2
I48:
    # --- Register Descriptor ---
    # $f1: [#t28]
    # $t0: [#t32] (dirty)
    # $t1: [#t31] (dirty)
    # $t9: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [$f1]
    # #t3: [memory:-32($fp)]
    # #t30: [$t9]
    # #t31: [$t1]
    # #t32: [$t0]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t32 from $t0 to -140($fp)
    # DEBUG: Spilled #t31 from $t1 to -136($fp)
    # DEBUG: Spilled #t30 from $t9 to -132($fp)
    # DEBUG: Spilled float #t28 from $f1 to -128($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%c\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t32
    # DEBUG: Loaded #t32 from memory at -140($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -140($fp)
    sw $t1, -136($fp)
    sw $t9, -132($fp)
    swc1 $f1, -128($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -140($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 48: 49: #t34 = & v_var_main_s2
I49:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t34 = &v_var_main_s2
    # DEBUG: #t34 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t34 (pointer) in $t1 (dirty)
    addiu $t1, $fp, -20

    # TAC 49: 50: #t35 = #t34 + 8
I50:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t35 = #t34 add 8
    # DEBUG: #t34 in $t1
    # DEBUG: Loaded constant 8 into $t2
    # DEBUG: 8 in $t2
    # DEBUG: #t35 = result in $t3 (dirty)
    li $t2, 8
    add $t3, $t1, $t2

    # TAC 50: 51: #t36 = #t35
I51:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # $t3: [#t35] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t35: [$t3]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t36 = #t35
    # DEBUG: #t35 already in $t3
    # DEBUG: #t36 now also in $t3 (dirty)
    # DEBUG: Saved #t36 to memory at -152($fp)
    sw $t3, -152($fp)

    # TAC 51: 52: #t37 = #t36
I52:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # $t3: [#t35, #t36] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t35: [$t3]
    # #t36: [$t3, memory:-152($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t37 = #t36
    # DEBUG: #t36 already in $t3
    # DEBUG: #t37 now also in $t3 (dirty)
    # DEBUG: Saved #t37 to memory at -156($fp)
    sw $t3, -156($fp)

    # TAC 52: 53: #t38 = #t37 + 0
I53:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # $t3: [#t35, #t36, #t37] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t35: [$t3]
    # #t36: [$t3, memory:-152($fp)]
    # #t37: [$t3, memory:-156($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t38 = #t37 add 0
    # DEBUG: #t37 in $t3
    # DEBUG: Loaded constant 0 into $t2
    # DEBUG: 0 in $t2
    # DEBUG: #t38 = result in $t4 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t2, 0
    move $t4, $t3

    # TAC 53: 54: #t39 = * #t38
I54:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # $t3: [#t35, #t36, #t37] (dirty)
    # $t4: [#t38] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t35: [$t3]
    # #t36: [$t3, memory:-152($fp)]
    # #t37: [$t3, memory:-156($fp)]
    # #t38: [$t4]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t39 = *#t38
    # DEBUG: Pointer #t38 already in $t4
    # DEBUG: Dereferenced *#t38 into $t2
    # DEBUG: #t39 = *#t38 in $t2 (dirty)
    lw $t2, 0($t4)

    # TAC 54: 55: param "%d\n"
I55:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # $t2: [#t39] (dirty)
    # $t3: [#t35, #t36, #t37] (dirty)
    # $t4: [#t38] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t35: [$t3]
    # #t36: [$t3, memory:-152($fp)]
    # #t37: [$t3, memory:-156($fp)]
    # #t38: [$t4]
    # #t39: [$t2]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 55: 56: param #t39
I56:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # $t2: [#t39] (dirty)
    # $t3: [#t35, #t36, #t37] (dirty)
    # $t4: [#t38] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t35: [$t3]
    # #t36: [$t3, memory:-152($fp)]
    # #t37: [$t3, memory:-156($fp)]
    # #t38: [$t4]
    # #t39: [$t2]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t39
    # DEBUG: Collected parameter #2: #t39

    # TAC 56: 57: #t40 = call printf_cp1_variadic, 2
I57:
    # --- Register Descriptor ---
    # $t0: [#t32]
    # $t1: [#t34] (dirty)
    # $t2: [#t39] (dirty)
    # $t3: [#t35, #t36, #t37] (dirty)
    # $t4: [#t38] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [$t0, memory:-140($fp)]
    # #t34: [$t1]
    # #t35: [$t3]
    # #t36: [$t3, memory:-152($fp)]
    # #t37: [$t3, memory:-156($fp)]
    # #t38: [$t4]
    # #t39: [$t2]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t32 from $t0 to -140($fp)
    # DEBUG: Spilled #t34 from $t1 to -144($fp)
    # DEBUG: Spilled #t39 from $t2 to -164($fp)
    # DEBUG: Spilled #t35 from $t3 to -148($fp)
    # DEBUG: Spilled #t36 from $t3 to -152($fp)
    # DEBUG: Spilled #t37 from $t3 to -156($fp)
    # DEBUG: Spilled #t38 from $t4 to -160($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t39
    # DEBUG: Loaded #t39 from memory at -164($fp)
    sw $t0, -140($fp)
    sw $t1, -144($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t2, -164($fp)
    sw $t3, -148($fp)
    sw $t3, -152($fp)
    sw $t3, -156($fp)
    sw $t4, -160($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -164($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 57: 58: #t41 = & v_var_main_s2
I58:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t41 = &v_var_main_s2
    # DEBUG: #t41 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t41 (pointer) in $t3 (dirty)
    addiu $t3, $fp, -20

    # TAC 58: 59: #t42 = #t41 + 8
I59:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t3: [#t41] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t42 = #t41 add 8
    # DEBUG: #t41 in $t3
    # DEBUG: Loaded constant 8 into $t1
    # DEBUG: 8 in $t1
    # DEBUG: #t42 = result in $t2 (dirty)
    li $t1, 8
    add $t2, $t3, $t1

    # TAC 59: 60: #t43 = #t42
I60:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t2: [#t42] (dirty)
    # $t3: [#t41] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t42: [$t2]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t43 = #t42
    # DEBUG: #t42 already in $t2
    # DEBUG: #t43 now also in $t2 (dirty)
    # DEBUG: Saved #t43 to memory at -176($fp)
    sw $t2, -176($fp)

    # TAC 60: 61: #t44 = #t43
I61:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t2: [#t42, #t43] (dirty)
    # $t3: [#t41] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t42: [$t2]
    # #t43: [$t2, memory:-176($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t44 = #t43
    # DEBUG: #t43 already in $t2
    # DEBUG: #t44 now also in $t2 (dirty)
    # DEBUG: Saved #t44 to memory at -180($fp)
    sw $t2, -180($fp)

    # TAC 61: 62: #t45 = #t44 + 4
I62:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t2: [#t42, #t43, #t44] (dirty)
    # $t3: [#t41] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t42: [$t2]
    # #t43: [$t2, memory:-176($fp)]
    # #t44: [$t2, memory:-180($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t45 = #t44 add 4
    # DEBUG: #t44 in $t2
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t45 = result in $t4 (dirty)
    li $t1, 4
    add $t4, $t2, $t1

    # TAC 62: 63: #t46 = * #t45
I63:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t2: [#t42, #t43, #t44] (dirty)
    # $t3: [#t41] (dirty)
    # $t4: [#t45] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t42: [$t2]
    # #t43: [$t2, memory:-176($fp)]
    # #t44: [$t2, memory:-180($fp)]
    # #t45: [$t4]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t46 = *#t45
    # DEBUG: Pointer #t45 already in $t4
    # DEBUG: Spilled #t45 from $t4 to memory
    # DEBUG: Dereferenced *#t45 into $t4
    # DEBUG: #t46 = *#t45 in $t4 (dirty)
    sw $t4, -184($fp)
    lw $t4, 0($t4)

    # TAC 63: 64: param "%d\n"
I64:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t2: [#t42, #t43, #t44] (dirty)
    # $t3: [#t41] (dirty)
    # $t4: [#t46] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t42: [$t2]
    # #t43: [$t2, memory:-176($fp)]
    # #t44: [$t2, memory:-180($fp)]
    # #t45: [memory:#t45]
    # #t46: [$t4]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 64: 65: param #t46
I65:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t2: [#t42, #t43, #t44] (dirty)
    # $t3: [#t41] (dirty)
    # $t4: [#t46] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t42: [$t2]
    # #t43: [$t2, memory:-176($fp)]
    # #t44: [$t2, memory:-180($fp)]
    # #t45: [memory:#t45]
    # #t46: [$t4]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t46
    # DEBUG: Collected parameter #2: #t46

    # TAC 65: 66: #t47 = call printf_cp1_variadic, 2
I66:
    # --- Register Descriptor ---
    # $t0: [#t39]
    # $t2: [#t42, #t43, #t44] (dirty)
    # $t3: [#t41] (dirty)
    # $t4: [#t46] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [$t0, memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [$t3]
    # #t42: [$t2]
    # #t43: [$t2, memory:-176($fp)]
    # #t44: [$t2, memory:-180($fp)]
    # #t45: [memory:#t45]
    # #t46: [$t4]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t39 from $t0 to -164($fp)
    # DEBUG: Spilled #t42 from $t2 to -172($fp)
    # DEBUG: Spilled #t43 from $t2 to -176($fp)
    # DEBUG: Spilled #t44 from $t2 to -180($fp)
    # DEBUG: Spilled #t41 from $t3 to -168($fp)
    # DEBUG: Spilled #t46 from $t4 to -188($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t46
    # DEBUG: Loaded #t46 from memory at -188($fp)
    sw $t0, -164($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t2, -172($fp)
    sw $t2, -176($fp)
    sw $t2, -180($fp)
    sw $t3, -168($fp)
    sw $t4, -188($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -188($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 66: 67: return 0
I67:
    # --- Register Descriptor ---
    # $t0: [#t46]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [memory:-168($fp)]
    # #t42: [memory:-172($fp)]
    # #t43: [memory:-176($fp)]
    # #t44: [memory:-180($fp)]
    # #t45: [memory:#t45]
    # #t46: [$t0, memory:-188($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B4_i67_i67 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i67 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 67: 68: end function main
I68:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-24($fp)]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t26: [memory:-120($fp)]
    # #t27: [memory:-124($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-32($fp)]
    # #t30: [memory:-132($fp)]
    # #t31: [memory:-136($fp)]
    # #t32: [memory:-140($fp)]
    # #t34: [memory:-144($fp)]
    # #t35: [memory:-148($fp)]
    # #t36: [memory:-152($fp)]
    # #t37: [memory:-156($fp)]
    # #t38: [memory:-160($fp)]
    # #t39: [memory:-164($fp)]
    # #t4: [memory:-36($fp)]
    # #t41: [memory:-168($fp)]
    # #t42: [memory:-172($fp)]
    # #t43: [memory:-176($fp)]
    # #t44: [memory:-180($fp)]
    # #t45: [memory:#t45]
    # #t46: [memory:-188($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:#t6]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:#t8]
    # #t9: [memory:-56($fp)]
    # <CONST_15_122>: [$t3]
    # <CONST_29_15>: [$t9]
    # <CONST_7_10>: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
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
    addiu $sp, $sp, -32
    sw $ra, 28($sp)
    sw $s0, 24($sp)
    sw $s1, 20($sp)
    sw $s2, 16($sp)
    sw $s3, 12($sp)
    sw $s4, 8($sp)
    sw $s5, 4($sp)
    sw $s6, 0($sp)
    
    # $s0 = format string address
    move $s0, $a0
    
    # $s1 = current position in format string
    move $s1, $s0
    
    # $s2 = argument pointer (points to variadic args on caller's stack)
    # Caller pushed args on stack before calling
    # They're at our $sp + 32 (after our frame)
    addiu $s2, $sp, 32
    
__lib_printf_loop:
    # Load current character
    lb $s3, 0($s1)
    
    # Check for null terminator
    beq $s3, $zero, __lib_printf_end
    
    # Check for '%'
    li $s4, 37              # ASCII '%'
    beq $s3, $s4, __lib_printf_handle_percent
    
    # Regular character - print it
    move $a0, $s3
    li $v0, 11              # Syscall 11: print character
    syscall
    j __lib_printf_next_char

__lib_printf_handle_percent:
    # Move to next character (format type)
    addiu $s1, $s1, 1
    lb $s3, 0($s1)
    
    # Check for %%
    li $s4, 37
    beq $s3, $s4, __lib_printf_print_percent
    
    # Check for %d
    li $s4, 100             # ASCII 'd'
    beq $s3, $s4, __lib_printf_handle_d
    
    # Check for %f
    li $s4, 102             # ASCII 'f'
    beq $s3, $s4, __lib_printf_handle_f
    
    # Check for %c
    li $s4, 99              # ASCII 'c'
    beq $s3, $s4, __lib_printf_handle_c
    
    # Check for %s
    li $s4, 115             # ASCII 's'
    beq $s3, $s4, __lib_printf_handle_s
    
    # Unknown format - print as-is
    move $a0, $s3
    li $v0, 11
    syscall
    j __lib_printf_next_char

__lib_printf_print_percent:
    li $a0, 37
    li $v0, 11
    syscall
    j __lib_printf_next_char

__lib_printf_handle_d:
    # Print integer
    lw $a0, 0($s2)          # Load argument
    li $v0, 1               # Syscall 1: print integer
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_f:
    # Print float
    lwc1 $f12, 0($s2)       # Load float argument
    li $v0, 2               # Syscall 2: print float
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_c:
    # Print character
    lw $a0, 0($s2)          # Load character (stored as int)
    li $v0, 11              # Syscall 11: print character
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_s:
    # Print string
    lw $a0, 0($s2)          # Load string address
    li $v0, 4               # Syscall 4: print string
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_next_char:
    addiu $s1, $s1, 1       # Move to next character in format string
    j __lib_printf_loop

__lib_printf_end:
    # Restore registers
    lw $s6, 0($sp)
    lw $s5, 4($sp)
    lw $s4, 8($sp)
    lw $s3, 12($sp)
    lw $s2, 16($sp)
    lw $s1, 20($sp)
    lw $s0, 24($sp)
    lw $ra, 28($sp)
    addiu $sp, $sp, 32
    
    jr $ra


#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

