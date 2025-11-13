    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 124

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""%d\n""
    # Added string literal: str_1 = ""%f\n""
    # Added string literal: str_2 = ""%c\n""
    # Added string literal: str_3 = ""-----------------------\n""
    # Found 4 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i122
    # Block B4: i123-i123

.data
    # String Literals
str_2: .asciiz "%c\n"
str_0: .asciiz "%d\n"
str_1: .asciiz "%f\n"
str_3: .asciiz "-----------------------\n"

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
    # === B3_i3_i122 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i122 Next-Use:
    # Instr i121 Next-Use:
    #   #t86 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i120 Next-Use:
    #   #t85 -> N/A
    # Instr i119 Next-Use:
    # Instr i118 Next-Use:
    #   #t84 -> N/A
    #   #t85 -> N/A
    # Instr i117 Next-Use:
    #   #t83 -> N/A
    #   #t84 -> N/A
    # Instr i116 Next-Use:
    #   #t82 -> N/A
    #   #t83 -> N/A
    # Instr i115 Next-Use:
    #   #t81 -> N/A
    #   #t82 -> N/A
    # Instr i114 Next-Use:
    #   #t81 -> N/A
    #   v_ptr_main_s2 -> N/A
    # Instr i113 Next-Use:
    #   #t80 -> N/A
    #   printf_cp1_variadic -> i121
    # Instr i112 Next-Use:
    #   #t79 -> N/A
    # Instr i111 Next-Use:
    # Instr i110 Next-Use:
    #   #t78 -> N/A
    #   #t79 -> N/A
    # Instr i109 Next-Use:
    #   #t77 -> N/A
    #   #t78 -> N/A
    # Instr i108 Next-Use:
    #   #t76 -> N/A
    #   #t77 -> N/A
    # Instr i107 Next-Use:
    #   #t75 -> N/A
    #   #t76 -> N/A
    # Instr i106 Next-Use:
    #   #t75 -> N/A
    #   v_ptr_main_s2 -> i114
    # Instr i105 Next-Use:
    #   #t74 -> N/A
    #   printf_cp1_variadic -> i113
    # Instr i104 Next-Use:
    #   #t73 -> N/A
    # Instr i103 Next-Use:
    # Instr i102 Next-Use:
    #   #t72 -> N/A
    #   #t73 -> N/A
    # Instr i101 Next-Use:
    #   #t72 -> N/A
    #   v_ptr_main_s2 -> i106
    # Instr i100 Next-Use:
    #   #t71 -> N/A
    #   printf_cp1_variadic -> i105
    # Instr i99 Next-Use:
    #   #t70 -> N/A
    # Instr i98 Next-Use:
    # Instr i97 Next-Use:
    #   #t69 -> N/A
    #   #t70 -> N/A
    # Instr i96 Next-Use:
    #   #t69 -> N/A
    #   v_ptr_main_s2 -> i101
    # Instr i95 Next-Use:
    #   #t68 -> N/A
    #   printf_cp1_variadic -> i100
    # Instr i94 Next-Use:
    #   #t67 -> N/A
    # Instr i93 Next-Use:
    # Instr i92 Next-Use:
    #   #t66 -> N/A
    #   #t67 -> N/A
    # Instr i91 Next-Use:
    #   #t66 -> N/A
    #   v_ptr_main_s2 -> i96
    # Instr i90 Next-Use:
    #   #t65 -> N/A
    # Instr i89 Next-Use:
    #   #t64 -> N/A
    #   #t65 -> N/A
    # Instr i88 Next-Use:
    #   #t63 -> N/A
    #   #t64 -> N/A
    # Instr i87 Next-Use:
    #   #t62 -> N/A
    #   #t63 -> N/A
    # Instr i86 Next-Use:
    #   #t61 -> N/A
    #   #t62 -> N/A
    # Instr i85 Next-Use:
    #   #t61 -> N/A
    #   v_ptr_main_s2 -> i91
    # Instr i84 Next-Use:
    #   #t60 -> N/A
    # Instr i83 Next-Use:
    #   #t59 -> N/A
    #   #t60 -> N/A
    # Instr i82 Next-Use:
    #   #t58 -> N/A
    #   #t59 -> N/A
    # Instr i81 Next-Use:
    #   #t57 -> N/A
    #   #t58 -> N/A
    # Instr i80 Next-Use:
    #   #t56 -> N/A
    #   #t57 -> N/A
    # Instr i79 Next-Use:
    #   #t56 -> N/A
    #   v_ptr_main_s2 -> i85
    # Instr i78 Next-Use:
    #   #t55 -> N/A
    # Instr i77 Next-Use:
    #   #t54 -> N/A
    #   #t55 -> N/A
    # Instr i76 Next-Use:
    #   #t54 -> N/A
    #   v_ptr_main_s2 -> i79
    # Instr i75 Next-Use:
    #   #t53 -> N/A
    # Instr i74 Next-Use:
    #   #t52 -> N/A
    #   #t53 -> N/A
    # Instr i73 Next-Use:
    #   #t52 -> N/A
    #   v_ptr_main_s2 -> i76
    # Instr i72 Next-Use:
    #   #t51 -> N/A
    # Instr i71 Next-Use:
    #   #t50 -> N/A
    #   #t51 -> N/A
    # Instr i70 Next-Use:
    #   #t50 -> N/A
    #   v_ptr_main_s2 -> i73
    # Instr i69 Next-Use:
    #   #t49 -> N/A
    #   printf_cp1_variadic -> i95
    # Instr i68 Next-Use:
    # Instr i67 Next-Use:
    #   #t48 -> N/A
    #   printf_cp1_variadic -> i69
    # Instr i66 Next-Use:
    #   #t47 -> N/A
    # Instr i65 Next-Use:
    # Instr i64 Next-Use:
    #   #t46 -> N/A
    #   #t47 -> N/A
    # Instr i63 Next-Use:
    #   #t45 -> N/A
    #   #t46 -> N/A
    # Instr i62 Next-Use:
    #   #t44 -> N/A
    #   #t45 -> N/A
    # Instr i61 Next-Use:
    #   #t43 -> N/A
    #   #t44 -> N/A
    # Instr i60 Next-Use:
    #   #t42 -> N/A
    #   #t43 -> N/A
    # Instr i59 Next-Use:
    #   #t42 -> N/A
    #   v_var_main_s2 -> N/A
    # Instr i58 Next-Use:
    #   #t41 -> N/A
    #   printf_cp1_variadic -> i67
    # Instr i57 Next-Use:
    #   #t40 -> N/A
    # Instr i56 Next-Use:
    # Instr i55 Next-Use:
    #   #t39 -> N/A
    #   #t40 -> N/A
    # Instr i54 Next-Use:
    #   #t38 -> N/A
    #   #t39 -> N/A
    # Instr i53 Next-Use:
    #   #t37 -> N/A
    #   #t38 -> N/A
    # Instr i52 Next-Use:
    #   #t36 -> N/A
    #   #t37 -> N/A
    # Instr i51 Next-Use:
    #   #t35 -> N/A
    #   #t36 -> N/A
    # Instr i50 Next-Use:
    #   #t35 -> N/A
    #   v_var_main_s2 -> i59
    # Instr i49 Next-Use:
    #   #t34 -> N/A
    #   printf_cp1_variadic -> i58
    # Instr i48 Next-Use:
    #   #t33 -> N/A
    # Instr i47 Next-Use:
    # Instr i46 Next-Use:
    #   #t32 -> N/A
    #   #t33 -> N/A
    # Instr i45 Next-Use:
    #   #t31 -> N/A
    #   #t32 -> N/A
    # Instr i44 Next-Use:
    #   #t31 -> N/A
    #   v_var_main_s2 -> i50
    # Instr i43 Next-Use:
    #   #t30 -> N/A
    #   printf_cp1_variadic -> i49
    # Instr i42 Next-Use:
    #   #t29 -> N/A
    # Instr i41 Next-Use:
    # Instr i40 Next-Use:
    #   #t28 -> N/A
    #   #t29 -> N/A
    # Instr i39 Next-Use:
    #   #t27 -> N/A
    #   #t28 -> N/A
    # Instr i38 Next-Use:
    #   #t27 -> N/A
    #   v_var_main_s2 -> i44
    # Instr i37 Next-Use:
    #   #t26 -> N/A
    #   printf_cp1_variadic -> i43
    # Instr i36 Next-Use:
    #   #t25 -> N/A
    # Instr i35 Next-Use:
    # Instr i34 Next-Use:
    #   #t24 -> N/A
    #   #t25 -> N/A
    # Instr i33 Next-Use:
    #   #t23 -> N/A
    #   #t24 -> N/A
    # Instr i32 Next-Use:
    #   #t23 -> N/A
    #   v_var_main_s2 -> i38
    # Instr i31 Next-Use:
    #   #t22 -> N/A
    # Instr i30 Next-Use:
    #   #t21 -> N/A
    #   #t22 -> N/A
    # Instr i29 Next-Use:
    #   #t20 -> N/A
    #   #t21 -> N/A
    # Instr i28 Next-Use:
    #   #t19 -> N/A
    #   #t20 -> N/A
    # Instr i27 Next-Use:
    #   #t18 -> N/A
    #   #t19 -> N/A
    # Instr i26 Next-Use:
    #   #t17 -> N/A
    #   #t18 -> N/A
    # Instr i25 Next-Use:
    #   #t17 -> N/A
    #   v_var_main_s2 -> i32
    # Instr i24 Next-Use:
    #   #t16 -> N/A
    # Instr i23 Next-Use:
    #   #t15 -> N/A
    #   #t16 -> N/A
    # Instr i22 Next-Use:
    #   #t14 -> N/A
    #   #t15 -> N/A
    # Instr i21 Next-Use:
    #   #t13 -> N/A
    #   #t14 -> N/A
    # Instr i20 Next-Use:
    #   #t12 -> N/A
    #   #t13 -> N/A
    # Instr i19 Next-Use:
    #   #t11 -> N/A
    #   #t12 -> N/A
    # Instr i18 Next-Use:
    #   #t11 -> N/A
    #   v_var_main_s2 -> i25
    # Instr i17 Next-Use:
    #   #t10 -> N/A
    # Instr i16 Next-Use:
    #   #t10 -> N/A
    #   #t9 -> N/A
    # Instr i15 Next-Use:
    #   #t8 -> N/A
    #   #t9 -> N/A
    # Instr i14 Next-Use:
    #   #t8 -> N/A
    #   v_var_main_s2 -> i18
    # Instr i13 Next-Use:
    #   #t7 -> N/A
    # Instr i12 Next-Use:
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i11 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    # Instr i10 Next-Use:
    #   #t5 -> N/A
    #   v_var_main_s2 -> i14
    # Instr i9 Next-Use:
    #   #t4 -> N/A
    # Instr i8 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    # Instr i7 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i6 Next-Use:
    #   #t2 -> N/A
    #   v_var_main_s2 -> i10
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    #   v_ptr_main_s2 -> N/A
    # Instr i4 Next-Use:
    #   #t1 -> N/A
    #   v_var_main_s2 -> i6
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
    # Frame size: 372 bytes
    addiu $sp, $sp, -372
    # Allocate 372 bytes (8 for $ra+$fp, 372 for locals/temps)
    sw $ra, 368($sp)
    # Save return address at 376($sp)
    sw $fp, 364($sp)
    # Save old frame pointer at 372($sp)
    addiu $fp, $sp, 364
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

    # TAC 5: 6: v_ptr_main_s2 = #t1
I6:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_ptr_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_ptr_main_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_ptr_main_s2 to memory at -24($fp)
    sw $t0, -24($fp)

    # TAC 6: 7: #t2 = & v_var_main_s2
I7:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t2 = &v_var_main_s2
    # DEBUG: #t2 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t2 (pointer) in $t1 (dirty)
    addiu $t1, $fp, -20

    # TAC 7: 8: #t3 = #t2 + 0
I8:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add 0
    # DEBUG: #t2 in $t1
    # DEBUG: Loaded constant 0 into $t2
    # DEBUG: 0 in $t2
    # DEBUG: #t3 = result in $t3 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t2, 0
    move $t3, $t1

    # TAC 8: 9: #t4 = #t3
I9:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # $t3: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = #t3
    # DEBUG: #t3 already in $t3
    # DEBUG: #t4 now also in $t3 (dirty)
    # DEBUG: Saved #t4 to memory at -40($fp)
    sw $t3, -40($fp)

    # TAC 9: 10: *(#t4) = 10
I10:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # #t4: [$t3, memory:-40($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t4 = 10
    # DEBUG: Pointer #t4 in $t3
    # DEBUG: Loaded constant 10 into $t2
    # DEBUG: Integer value 10 in $t2
    # DEBUG: Stored integer 10 through pointer #t4
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_ptr_main_s2 in $t0
    li $t2, 10
    sw $t2, 0($t3)

    # TAC 10: 11: #t5 = & v_var_main_s2
I11:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [<CONST_9_10>]
    # $t3: [#t3, #t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # #t4: [$t3, memory:-40($fp)]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t5 = &v_var_main_s2
    # DEBUG: #t5 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t5 (pointer) in $t2 (dirty)
    addiu $t2, $fp, -20

    # TAC 11: 12: #t6 = #t5 + 4
I12:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # #t4: [$t3, memory:-40($fp)]
    # #t5: [$t2]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t6 = #t5 add 4
    # DEBUG: #t5 in $t2
    # DEBUG: Loaded constant 4 into $t4
    # DEBUG: 4 in $t4
    # DEBUG: #t6 = result in $t5 (dirty)
    li $t4, 4
    add $t5, $t2, $t4

    # TAC 12: 13: #t7 = #t6
I13:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t5: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # #t4: [$t3, memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = #t6
    # DEBUG: Float assignment
    # DEBUG: #t6 in $t5
    # DEBUG: #t7 = #t6 in $t5 (dirty, float)

    # TAC 13: 14: *(#t7) = 97.500000
I14:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # #t4: [$t3, memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t7 = 97.500000
    # DEBUG: Pointer #t7 in $t5
    # DEBUG: Loaded float constant 97.500000 into $f0
    # DEBUG: Float value 97.500000 in $f0
    # DEBUG: Stored float 97.500000 through pointer #t7
    # DEBUG: Invalidating all cached values due to pointer store
    # Loading float constant: 97.500000
    li.s $f0, 97.500000
    s.s $f0, 0($t5)

    # TAC 14: 15: #t8 = & v_var_main_s2
I15:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t3]
    # #t4: [$t3, memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t8 = &v_var_main_s2
    # DEBUG: Spilled #t3 from $t3 to memory
    # DEBUG: #t8 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t8 (pointer) in $t3 (dirty)
    sw $t3, -36($fp)
    addiu $t3, $fp, -20

    # TAC 15: 16: #t9 = #t8 + 16
I16:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t9 = #t8 add 16
    # DEBUG: #t8 in $t3
    # DEBUG: Loaded constant 16 into $t4
    # DEBUG: 16 in $t4
    # DEBUG: #t9 = result in $t6 (dirty)
    li $t4, 16
    add $t6, $t3, $t4

    # TAC 16: 17: #t10 = #t9
I17:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t10 = #t9
    # DEBUG: #t9 already in $t6
    # DEBUG: #t10 now also in $t6 (dirty)
    # DEBUG: Saved #t10 to memory at -64($fp)
    sw $t6, -64($fp)

    # TAC 17: 18: *(#t10) = 122
I18:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t10 = 122
    # DEBUG: Pointer #t10 in $t6
    # DEBUG: Loaded constant 122 into $t4
    # DEBUG: Integer value 122 in $t4
    # DEBUG: Stored integer 122 through pointer #t10
    # DEBUG: Invalidating all cached values due to pointer store
    li $t4, 122
    sw $t4, 0($t6)

    # TAC 18: 19: #t11 = & v_var_main_s2
I19:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [<CONST_17_122>]
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t11 = &v_var_main_s2
    # DEBUG: #t11 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t11 (pointer) in $t4 (dirty)
    addiu $t4, $fp, -20

    # TAC 19: 20: #t12 = #t11 + 8
I20:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t12 = #t11 add 8
    # DEBUG: #t11 in $t4
    # DEBUG: Loaded constant 8 into $t7
    # DEBUG: 8 in $t7
    # DEBUG: #t12 = result in $t8 (dirty)
    li $t7, 8
    add $t8, $t4, $t7

    # TAC 20: 21: #t13 = #t12
I21:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t13 = #t12
    # DEBUG: #t12 already in $t8
    # DEBUG: #t13 now also in $t8 (dirty)
    # DEBUG: Saved #t13 to memory at -76($fp)
    sw $t8, -76($fp)

    # TAC 21: 22: #t14 = #t13
I22:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t14 = #t13
    # DEBUG: #t13 already in $t8
    # DEBUG: #t14 now also in $t8 (dirty)
    # DEBUG: Saved #t14 to memory at -80($fp)
    sw $t8, -80($fp)

    # TAC 22: 23: #t15 = #t14 + 0
I23:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t15 = #t14 add 0
    # DEBUG: #t14 in $t8
    # DEBUG: Loaded constant 0 into $t7
    # DEBUG: 0 in $t7
    # DEBUG: #t15 = result in $t9 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t7, 0
    move $t9, $t8

    # TAC 23: 24: #t16 = #t15
I24:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t16 = #t15
    # DEBUG: #t15 already in $t9
    # DEBUG: #t16 now also in $t9 (dirty)
    # DEBUG: Saved #t16 to memory at -88($fp)
    sw $t9, -88($fp)

    # TAC 24: 25: *(#t16) = 5
I25:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t16 = 5
    # DEBUG: Pointer #t16 in $t9
    # DEBUG: Loaded constant 5 into $t7
    # DEBUG: Integer value 5 in $t7
    # DEBUG: Stored integer 5 through pointer #t16
    # DEBUG: Invalidating all cached values due to pointer store
    li $t7, 5
    sw $t7, 0($t9)

    # TAC 25: 26: #t17 = & v_var_main_s2
I26:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t6, #t7] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t7: [<CONST_24_5>]
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [$t5]
    # #t7: [$t5]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_24_5>: [$t7]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t17 = &v_var_main_s2
    # DEBUG: Spilled #t6 from $t5 to memory
    # DEBUG: Spilled #t7 from $t5 to memory
    # DEBUG: #t17 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t17 (pointer) in $t5 (dirty)
    sw $t5, -48($fp)
    sw $t5, -52($fp)
    addiu $t5, $fp, -20

    # TAC 26: 27: #t18 = #t17 + 8
I27:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t7: [<CONST_24_5>]
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_24_5>: [$t7]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t18 = #t17 add 8
    # DEBUG: #t17 in $t5
    # DEBUG: Loaded constant 8 into $t7
    # DEBUG: 8 in $t7
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t1 from $t0 to memory at -28($fp)
    # DEBUG: #t18 = result in $t0 (dirty)
    li $t7, 8
    sw $t0, -28($fp)
    add $t0, $t5, $t7

    # TAC 27: 28: #t19 = #t18
I28:
    # --- Register Descriptor ---
    # $t0: [#t18] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [$t0]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t19 = #t18
    # DEBUG: #t18 already in $t0
    # DEBUG: #t19 now also in $t0 (dirty)
    # DEBUG: Saved #t19 to memory at -100($fp)
    sw $t0, -100($fp)

    # TAC 28: 29: #t20 = #t19
I29:
    # --- Register Descriptor ---
    # $t0: [#t18, #t19] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [$t0]
    # #t19: [$t0, memory:-100($fp)]
    # #t2: [$t1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t20 = #t19
    # DEBUG: #t19 already in $t0
    # DEBUG: #t20 now also in $t0 (dirty)
    # DEBUG: Saved #t20 to memory at -104($fp)
    sw $t0, -104($fp)

    # TAC 29: 30: #t21 = #t20 + 4
I30:
    # --- Register Descriptor ---
    # $t0: [#t18, #t19, #t20] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [$t0]
    # #t19: [$t0, memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [$t0, memory:-104($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t21 = #t20 add 4
    # DEBUG: #t20 in $t0
    # DEBUG: Loaded constant 4 into $t7
    # DEBUG: 4 in $t7
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t18 from $t0 to memory at -96($fp)
    # DEBUG: Spilled #t19 from $t0 to memory at -100($fp)
    # DEBUG: Spilled #t20 from $t0 to memory at -104($fp)
    # DEBUG: #t21 = result in $t0 (dirty)
    li $t7, 4
    sw $t0, -96($fp)
    sw $t0, -100($fp)
    sw $t0, -104($fp)
    add $t0, $t0, $t7

    # TAC 30: 31: #t22 = #t21
I31:
    # --- Register Descriptor ---
    # $t0: [#t21] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [$t0]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t22 = #t21
    # DEBUG: #t21 already in $t0
    # DEBUG: #t22 now also in $t0 (dirty)
    # DEBUG: Saved #t22 to memory at -112($fp)
    sw $t0, -112($fp)

    # TAC 31: 32: *(#t22) = 15
I32:
    # --- Register Descriptor ---
    # $t0: [#t21, #t22] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [$t0]
    # #t22: [$t0, memory:-112($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t22 = 15
    # DEBUG: Pointer #t22 in $t0
    # DEBUG: Loaded constant 15 into $t7
    # DEBUG: Integer value 15 in $t7
    # DEBUG: Stored integer 15 through pointer #t22
    # DEBUG: Invalidating all cached values due to pointer store
    li $t7, 15
    sw $t7, 0($t0)

    # TAC 32: 33: #t23 = & v_var_main_s2
I33:
    # --- Register Descriptor ---
    # $t0: [#t21, #t22] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t7: [<CONST_31_15>]
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [$t6, memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [$t0]
    # #t22: [$t0, memory:-112($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [$t6]
    # <CONST_17_122>: [$t4]
    # <CONST_31_15>: [$t7]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t23 = &v_var_main_s2
    # DEBUG: Spilled #t9 from $t6 to memory
    # DEBUG: #t23 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t23 (pointer) in $t6 (dirty)
    sw $t6, -60($fp)
    addiu $t6, $fp, -20

    # TAC 33: 34: #t24 = #t23 + 0
I34:
    # --- Register Descriptor ---
    # $t0: [#t21, #t22] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t23] (dirty)
    # $t7: [<CONST_31_15>]
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [$t0]
    # #t22: [$t0, memory:-112($fp)]
    # #t23: [$t6]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_31_15>: [$t7]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t24 = #t23 add 0
    # DEBUG: #t23 in $t6
    # DEBUG: Loaded constant 0 into $t7
    # DEBUG: 0 in $t7
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t21 from $t0 to memory at -108($fp)
    # DEBUG: Spilled #t22 from $t0 to memory at -112($fp)
    # DEBUG: #t24 = result in $t0 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t7, 0
    sw $t0, -108($fp)
    sw $t0, -112($fp)
    move $t0, $t6

    # TAC 34: 35: #t25 = * #t24
I35:
    # --- Register Descriptor ---
    # $t0: [#t24] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t23] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [$t6]
    # #t24: [$t0]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t25 = *#t24
    # DEBUG: Pointer #t24 already in $t0
    # DEBUG: Dereferenced *#t24 into $t7
    # DEBUG: #t25 = *#t24 in $t7 (dirty)
    lw $t7, 0($t0)

    # TAC 35: 36: param "%d\n"
I36:
    # --- Register Descriptor ---
    # $t0: [#t24] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t23] (dirty)
    # $t7: [#t25] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [$t6]
    # #t24: [$t0]
    # #t25: [$t7]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 36: 37: param #t25
I37:
    # --- Register Descriptor ---
    # $t0: [#t24] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t23] (dirty)
    # $t7: [#t25] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [$t6]
    # #t24: [$t0]
    # #t25: [$t7]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t25
    # DEBUG: Collected parameter #2: #t25

    # TAC 37: 38: #t26 = call printf_cp1_variadic, 2
I38:
    # --- Register Descriptor ---
    # $t0: [#t24] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [#t23] (dirty)
    # $t7: [#t25] (dirty)
    # $t8: [#t12, #t13, #t14] (dirty)
    # $t9: [#t15, #t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [$t4]
    # #t12: [$t8]
    # #t13: [$t8, memory:-76($fp)]
    # #t14: [$t8, memory:-80($fp)]
    # #t15: [$t9]
    # #t16: [$t9, memory:-88($fp)]
    # #t17: [$t5]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [$t1]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [$t6]
    # #t24: [$t0]
    # #t25: [$t7]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [$t3]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t24 from $t0 to -120($fp)
    # DEBUG: Spilled #t2 from $t1 to -32($fp)
    # DEBUG: Spilled #t5 from $t2 to -44($fp)
    # DEBUG: Spilled #t8 from $t3 to -56($fp)
    # DEBUG: Spilled #t11 from $t4 to -68($fp)
    # DEBUG: Spilled #t17 from $t5 to -92($fp)
    # DEBUG: Spilled #t23 from $t6 to -116($fp)
    # DEBUG: Spilled #t25 from $t7 to -124($fp)
    # DEBUG: Spilled #t12 from $t8 to -72($fp)
    # DEBUG: Spilled #t13 from $t8 to -76($fp)
    # DEBUG: Spilled #t14 from $t8 to -80($fp)
    sw $t0, -120($fp)
    # DEBUG: Spilled #t15 from $t9 to -84($fp)
    sw $t1, -32($fp)
    # DEBUG: Spilled #t16 from $t9 to -88($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    sw $t2, -44($fp)
    # Load format string literal address
    # Store variadic arguments on stack
    sw $t3, -56($fp)
    # Arg 0: #t25
    sw $t4, -68($fp)
    # DEBUG: Loaded #t25 from memory at -124($fp)
    sw $t5, -92($fp)
    sw $t6, -116($fp)
    sw $t7, -124($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t8, -72($fp)
    sw $t8, -76($fp)
    sw $t8, -80($fp)
    sw $t9, -84($fp)
    sw $t9, -88($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -124($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 38: 39: #t27 = & v_var_main_s2
I39:
    # --- Register Descriptor ---
    # $t0: [#t25]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [$t0, memory:-124($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t27 = &v_var_main_s2
    # DEBUG: #t27 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t27 (pointer) in $t8 (dirty)
    addiu $t8, $fp, -20

    # TAC 39: 40: #t28 = #t27 + 4
I40:
    # --- Register Descriptor ---
    # $t0: [#t25]
    # $t8: [#t27] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [$t0, memory:-124($fp)]
    # #t27: [$t8]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t28 = #t27 add 4
    # DEBUG: #t27 in $t8
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t28 = result in $t2 (dirty)
    li $t1, 4
    add $t2, $t8, $t1

    # TAC 40: 41: #t29 = * #t28
I41:
    # --- Register Descriptor ---
    # $t0: [#t25]
    # $t2: [#t28] (dirty)
    # $t8: [#t27] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [$t0, memory:-124($fp)]
    # #t27: [$t8]
    # #t28: [$t2]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t29 = *#t28
    # DEBUG: Pointer #t28 already in $t2
    # DEBUG: Dereferenced *#t28 into $t9
    # DEBUG: #t29 = *#t28 in $t9 (dirty)
    lw $t9, 0($t2)

    # TAC 41: 42: param "%f\n"
I42:
    # --- Register Descriptor ---
    # $t0: [#t25]
    # $t2: [#t28] (dirty)
    # $t8: [#t27] (dirty)
    # $t9: [#t29] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [$t0, memory:-124($fp)]
    # #t27: [$t8]
    # #t28: [$t2]
    # #t29: [$t9]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%f\n"
    # DEBUG: Collected parameter #1: "%f\n"

    # TAC 42: 43: param #t29
I43:
    # --- Register Descriptor ---
    # $t0: [#t25]
    # $t2: [#t28] (dirty)
    # $t8: [#t27] (dirty)
    # $t9: [#t29] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [$t0, memory:-124($fp)]
    # #t27: [$t8]
    # #t28: [$t2]
    # #t29: [$t9]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t29
    # DEBUG: Collected parameter #2: #t29

    # TAC 43: 44: #t30 = call printf_cp1_variadic, 2
I44:
    # --- Register Descriptor ---
    # $t0: [#t25]
    # $t2: [#t28] (dirty)
    # $t8: [#t27] (dirty)
    # $t9: [#t29] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [$t0, memory:-124($fp)]
    # #t27: [$t8]
    # #t28: [$t2]
    # #t29: [$t9]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t25 from $t0 to -124($fp)
    # DEBUG: Spilled #t28 from $t2 to -132($fp)
    # DEBUG: Spilled #t27 from $t8 to -128($fp)
    # DEBUG: Spilled #t29 from $t9 to -136($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%f\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t29
    # DEBUG: Loaded float #t29 from -136($fp) into $f1
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -124($fp)
    sw $t2, -132($fp)
    sw $t8, -128($fp)
    sw $t9, -136($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    l.s $f1, -136($fp)
    swc1 $f1, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 44: 45: #t31 = & v_var_main_s2
I45:
    # --- Register Descriptor ---
    # $f1: [#t29]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [$f1]
    # #t3: [memory:#t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t31 = &v_var_main_s2
    # DEBUG: #t31 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t31 (pointer) in $t0 (dirty)
    addiu $t0, $fp, -20

    # TAC 45: 46: #t32 = #t31 + 16
I46:
    # --- Register Descriptor ---
    # $f1: [#t29]
    # $t0: [#t31] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [$f1]
    # #t3: [memory:#t3]
    # #t31: [$t0]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t32 = #t31 add 16
    # DEBUG: #t31 in $t0
    # DEBUG: Loaded constant 16 into $t1
    # DEBUG: 16 in $t1
    # DEBUG: #t32 = result in $t2 (dirty)
    li $t1, 16
    add $t2, $t0, $t1

    # TAC 46: 47: #t33 = * #t32
I47:
    # --- Register Descriptor ---
    # $f1: [#t29]
    # $t0: [#t31] (dirty)
    # $t2: [#t32] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [$f1]
    # #t3: [memory:#t3]
    # #t31: [$t0]
    # #t32: [$t2]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t33 = *#t32
    # DEBUG: Pointer #t32 already in $t2
    # DEBUG: Dereferenced *#t32 (char*) into $t1 using lb
    # DEBUG: #t33 = *#t32 in $t1 (dirty)
    lb $t1, 0($t2)

    # TAC 47: 48: param "%c\n"
I48:
    # --- Register Descriptor ---
    # $f1: [#t29]
    # $t0: [#t31] (dirty)
    # $t1: [#t33] (dirty)
    # $t2: [#t32] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [$f1]
    # #t3: [memory:#t3]
    # #t31: [$t0]
    # #t32: [$t2]
    # #t33: [$t1]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%c\n"
    # DEBUG: Collected parameter #1: "%c\n"

    # TAC 48: 49: param #t33
I49:
    # --- Register Descriptor ---
    # $f1: [#t29]
    # $t0: [#t31] (dirty)
    # $t1: [#t33] (dirty)
    # $t2: [#t32] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [$f1]
    # #t3: [memory:#t3]
    # #t31: [$t0]
    # #t32: [$t2]
    # #t33: [$t1]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t33
    # DEBUG: Collected parameter #2: #t33

    # TAC 49: 50: #t34 = call printf_cp1_variadic, 2
I50:
    # --- Register Descriptor ---
    # $f1: [#t29]
    # $t0: [#t31] (dirty)
    # $t1: [#t33] (dirty)
    # $t2: [#t32] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [$f1]
    # #t3: [memory:#t3]
    # #t31: [$t0]
    # #t32: [$t2]
    # #t33: [$t1]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t31 from $t0 to -140($fp)
    # DEBUG: Spilled #t33 from $t1 to -148($fp)
    # DEBUG: Spilled #t32 from $t2 to -144($fp)
    # DEBUG: Spilled float #t29 from $f1 to -136($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%c\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t33
    # DEBUG: Loaded #t33 from memory at -148($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -140($fp)
    sw $t1, -148($fp)
    sw $t2, -144($fp)
    swc1 $f1, -136($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -148($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 50: 51: #t35 = & v_var_main_s2
I51:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t35 = &v_var_main_s2
    # DEBUG: #t35 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t35 (pointer) in $t2 (dirty)
    addiu $t2, $fp, -20

    # TAC 51: 52: #t36 = #t35 + 8
I52:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t36 = #t35 add 8
    # DEBUG: #t35 in $t2
    # DEBUG: Loaded constant 8 into $t1
    # DEBUG: 8 in $t1
    # DEBUG: #t36 = result in $t3 (dirty)
    li $t1, 8
    add $t3, $t2, $t1

    # TAC 52: 53: #t37 = #t36
I53:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # $t3: [#t36] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t36: [$t3]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t37 = #t36
    # DEBUG: #t36 already in $t3
    # DEBUG: #t37 now also in $t3 (dirty)
    # DEBUG: Saved #t37 to memory at -160($fp)
    sw $t3, -160($fp)

    # TAC 53: 54: #t38 = #t37
I54:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # $t3: [#t36, #t37] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t36: [$t3]
    # #t37: [$t3, memory:-160($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t38 = #t37
    # DEBUG: #t37 already in $t3
    # DEBUG: #t38 now also in $t3 (dirty)
    # DEBUG: Saved #t38 to memory at -164($fp)
    sw $t3, -164($fp)

    # TAC 54: 55: #t39 = #t38 + 0
I55:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # $t3: [#t36, #t37, #t38] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t36: [$t3]
    # #t37: [$t3, memory:-160($fp)]
    # #t38: [$t3, memory:-164($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t39 = #t38 add 0
    # DEBUG: #t38 in $t3
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    # DEBUG: #t39 = result in $t4 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t1, 0
    move $t4, $t3

    # TAC 55: 56: #t40 = * #t39
I56:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # $t3: [#t36, #t37, #t38] (dirty)
    # $t4: [#t39] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t36: [$t3]
    # #t37: [$t3, memory:-160($fp)]
    # #t38: [$t3, memory:-164($fp)]
    # #t39: [$t4]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t40 = *#t39
    # DEBUG: Pointer #t39 already in $t4
    # DEBUG: Spilled #t36 from $t3 to memory
    # DEBUG: Dereferenced *#t39 into $t3
    # DEBUG: #t40 = *#t39 in $t3 (dirty)
    sw $t3, -156($fp)
    lw $t3, 0($t4)

    # TAC 56: 57: param "%d\n"
I57:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # $t3: [#t40] (dirty)
    # $t4: [#t39] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [$t4]
    # #t4: [memory:-40($fp)]
    # #t40: [$t3]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 57: 58: param #t40
I58:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # $t3: [#t40] (dirty)
    # $t4: [#t39] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [$t4]
    # #t4: [memory:-40($fp)]
    # #t40: [$t3]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t40
    # DEBUG: Collected parameter #2: #t40

    # TAC 58: 59: #t41 = call printf_cp1_variadic, 2
I59:
    # --- Register Descriptor ---
    # $t0: [#t33]
    # $t2: [#t35] (dirty)
    # $t3: [#t40] (dirty)
    # $t4: [#t39] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [$t0, memory:-148($fp)]
    # #t35: [$t2]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [$t4]
    # #t4: [memory:-40($fp)]
    # #t40: [$t3]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t33 from $t0 to -148($fp)
    # DEBUG: Spilled #t35 from $t2 to -152($fp)
    # DEBUG: Spilled #t40 from $t3 to -172($fp)
    # DEBUG: Spilled #t39 from $t4 to -168($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t40
    # DEBUG: Loaded #t40 from memory at -172($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -148($fp)
    sw $t2, -152($fp)
    sw $t3, -172($fp)
    sw $t4, -168($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -172($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 59: 60: #t42 = & v_var_main_s2
I60:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t42 = &v_var_main_s2
    # DEBUG: #t42 = address of v_var_main_s2 at -20($fp)
    # DEBUG: #t42 (pointer) in $t4 (dirty)
    addiu $t4, $fp, -20

    # TAC 60: 61: #t43 = #t42 + 8
I61:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t4: [#t42] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t43 = #t42 add 8
    # DEBUG: #t42 in $t4
    # DEBUG: Loaded constant 8 into $t1
    # DEBUG: 8 in $t1
    # DEBUG: #t43 = result in $t2 (dirty)
    li $t1, 8
    add $t2, $t4, $t1

    # TAC 61: 62: #t44 = #t43
I62:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t2: [#t43] (dirty)
    # $t4: [#t42] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t43: [$t2]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t44 = #t43
    # DEBUG: #t43 already in $t2
    # DEBUG: #t44 now also in $t2 (dirty)
    # DEBUG: Saved #t44 to memory at -184($fp)
    sw $t2, -184($fp)

    # TAC 62: 63: #t45 = #t44
I63:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t2: [#t43, #t44] (dirty)
    # $t4: [#t42] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t43: [$t2]
    # #t44: [$t2, memory:-184($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t45 = #t44
    # DEBUG: #t44 already in $t2
    # DEBUG: #t45 now also in $t2 (dirty)
    # DEBUG: Saved #t45 to memory at -188($fp)
    sw $t2, -188($fp)

    # TAC 63: 64: #t46 = #t45 + 4
I64:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t2: [#t43, #t44, #t45] (dirty)
    # $t4: [#t42] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t43: [$t2]
    # #t44: [$t2, memory:-184($fp)]
    # #t45: [$t2, memory:-188($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t46 = #t45 add 4
    # DEBUG: #t45 in $t2
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t46 = result in $t3 (dirty)
    li $t1, 4
    add $t3, $t2, $t1

    # TAC 64: 65: #t47 = * #t46
I65:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t2: [#t43, #t44, #t45] (dirty)
    # $t3: [#t46] (dirty)
    # $t4: [#t42] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t43: [$t2]
    # #t44: [$t2, memory:-184($fp)]
    # #t45: [$t2, memory:-188($fp)]
    # #t46: [$t3]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t47 = *#t46
    # DEBUG: Pointer #t46 already in $t3
    # DEBUG: Dereferenced *#t46 into $t5
    # DEBUG: #t47 = *#t46 in $t5 (dirty)
    lw $t5, 0($t3)

    # TAC 65: 66: param "%d\n"
I66:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t2: [#t43, #t44, #t45] (dirty)
    # $t3: [#t46] (dirty)
    # $t4: [#t42] (dirty)
    # $t5: [#t47] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t43: [$t2]
    # #t44: [$t2, memory:-184($fp)]
    # #t45: [$t2, memory:-188($fp)]
    # #t46: [$t3]
    # #t47: [$t5]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 66: 67: param #t47
I67:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t2: [#t43, #t44, #t45] (dirty)
    # $t3: [#t46] (dirty)
    # $t4: [#t42] (dirty)
    # $t5: [#t47] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t43: [$t2]
    # #t44: [$t2, memory:-184($fp)]
    # #t45: [$t2, memory:-188($fp)]
    # #t46: [$t3]
    # #t47: [$t5]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t47
    # DEBUG: Collected parameter #2: #t47

    # TAC 67: 68: #t48 = call printf_cp1_variadic, 2
I68:
    # --- Register Descriptor ---
    # $t0: [#t40]
    # $t2: [#t43, #t44, #t45] (dirty)
    # $t3: [#t46] (dirty)
    # $t4: [#t42] (dirty)
    # $t5: [#t47] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [$t0, memory:-172($fp)]
    # #t42: [$t4]
    # #t43: [$t2]
    # #t44: [$t2, memory:-184($fp)]
    # #t45: [$t2, memory:-188($fp)]
    # #t46: [$t3]
    # #t47: [$t5]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t40 from $t0 to -172($fp)
    # DEBUG: Spilled #t43 from $t2 to -180($fp)
    # DEBUG: Spilled #t44 from $t2 to -184($fp)
    # DEBUG: Spilled #t45 from $t2 to -188($fp)
    # DEBUG: Spilled #t46 from $t3 to -192($fp)
    # DEBUG: Spilled #t42 from $t4 to -176($fp)
    # DEBUG: Spilled #t47 from $t5 to -196($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t47
    # DEBUG: Loaded #t47 from memory at -196($fp)
    sw $t0, -172($fp)
    sw $t2, -180($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t2, -184($fp)
    sw $t2, -188($fp)
    sw $t3, -192($fp)
    sw $t4, -176($fp)
    sw $t5, -196($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -196($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 68: 69: param "-----------------------\n"
I69:
    # --- Register Descriptor ---
    # $t0: [#t47]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [$t0, memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "-----------------------\n"
    # DEBUG: Collected parameter #1: "-----------------------\n"

    # TAC 69: 70: #t49 = call printf_cp1_variadic, 1
I70:
    # --- Register Descriptor ---
    # $t0: [#t47]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [$t0, memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t47 from $t0 to -196($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 0 arguments
    # DEBUG: format_param = '"-----------------------\n"', first char = 34
    # Load format string literal address
    # === End printf ===
    sw $t0, -196($fp)
    la $a0, str_3
    jal __lib_printf

    # TAC 70: 71: #t50 = v_ptr_main_s2 + 0
I71:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t50 = v_ptr_main_s2 add 0
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    # DEBUG: #t50 = result in $t2 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    lw $t0, -24($fp)
    li $t1, 0
    move $t2, $t0

    # TAC 71: 72: #t51 = #t50
I72:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t2: [#t50] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t51 = #t50
    # DEBUG: #t50 already in $t2
    # DEBUG: #t51 now also in $t2 (dirty)
    # DEBUG: Saved #t51 to memory at -204($fp)
    sw $t2, -204($fp)

    # TAC 72: 73: *(#t51) = 20
I73:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t2: [#t50, #t51] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t51 = 20
    # DEBUG: Pointer #t51 in $t2
    # DEBUG: Loaded constant 20 into $t1
    # DEBUG: Integer value 20 in $t1
    # DEBUG: Stored integer 20 through pointer #t51
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_ptr_main_s2 in $t0
    li $t1, 20
    sw $t1, 0($t2)

    # TAC 73: 74: #t52 = v_ptr_main_s2 + 4
I74:
    # --- Register Descriptor ---
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t52 = v_ptr_main_s2 add 4
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: Loaded constant 4 into $t3
    # DEBUG: 4 in $t3
    # DEBUG: #t52 = result in $t4 (dirty)
    lw $t0, -24($fp)
    li $t3, 4
    add $t4, $t0, $t3

    # TAC 74: 75: #t53 = #t52
I75:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t53 = #t52
    # DEBUG: Float assignment
    # DEBUG: #t52 in $t4
    # DEBUG: #t53 = #t52 in $t4 (dirty, float)

    # TAC 75: 76: *(#t53) = 88.500000
I76:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t53 = 88.500000
    # DEBUG: Pointer #t53 in $t4
    # DEBUG: Loaded float constant 88.500000 into $f2
    # DEBUG: Float value 88.500000 in $f2
    # DEBUG: Stored float 88.500000 through pointer #t53
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_ptr_main_s2 in $t0
    # Loading float constant: 88.500000
    li.s $f2, 88.500000
    s.s $f2, 0($t4)

    # TAC 76: 77: #t54 = v_ptr_main_s2 + 16
I77:
    # --- Register Descriptor ---
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t54 = v_ptr_main_s2 add 16
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: Loaded constant 16 into $t3
    # DEBUG: 16 in $t3
    # DEBUG: #t54 = result in $t5 (dirty)
    lw $t0, -24($fp)
    li $t3, 16
    add $t5, $t0, $t3

    # TAC 77: 78: #t55 = #t54
I78:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t55 = #t54
    # DEBUG: #t54 already in $t5
    # DEBUG: #t55 now also in $t5 (dirty)
    # DEBUG: Saved #t55 to memory at -220($fp)
    sw $t5, -220($fp)

    # TAC 78: 79: *(#t55) = 121
I79:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t55 = 121
    # DEBUG: Pointer #t55 in $t5
    # DEBUG: Loaded constant 121 into $t3
    # DEBUG: Integer value 121 in $t3
    # DEBUG: Stored integer 121 through pointer #t55
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_ptr_main_s2 in $t0
    li $t3, 121
    sw $t3, 0($t5)

    # TAC 79: 80: #t56 = v_ptr_main_s2 + 8
I80:
    # --- Register Descriptor ---
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t56 = v_ptr_main_s2 add 8
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: Loaded constant 8 into $t6
    # DEBUG: 8 in $t6
    # DEBUG: #t56 = result in $t7 (dirty)
    lw $t0, -24($fp)
    li $t6, 8
    add $t7, $t0, $t6

    # TAC 80: 81: #t57 = #t56
I81:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t7: [#t56] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t57 = #t56
    # DEBUG: #t56 already in $t7
    # DEBUG: #t57 now also in $t7 (dirty)
    # DEBUG: Saved #t57 to memory at -228($fp)
    sw $t7, -228($fp)

    # TAC 81: 82: #t58 = #t57
I82:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t7: [#t56, #t57] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t58 = #t57
    # DEBUG: #t57 already in $t7
    # DEBUG: #t58 now also in $t7 (dirty)
    # DEBUG: Saved #t58 to memory at -232($fp)
    sw $t7, -232($fp)

    # TAC 82: 83: #t59 = #t58 + 0
I83:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t7: [#t56, #t57, #t58] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t59 = #t58 add 0
    # DEBUG: #t58 in $t7
    # DEBUG: Loaded constant 0 into $t6
    # DEBUG: 0 in $t6
    # DEBUG: #t59 = result in $t8 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t6, 0
    move $t8, $t7

    # TAC 83: 84: #t60 = #t59
I84:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t60 = #t59
    # DEBUG: #t59 already in $t8
    # DEBUG: #t60 now also in $t8 (dirty)
    # DEBUG: Saved #t60 to memory at -240($fp)
    sw $t8, -240($fp)

    # TAC 84: 85: *(#t60) = 50
I85:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t60 = 50
    # DEBUG: Pointer #t60 in $t8
    # DEBUG: Loaded constant 50 into $t6
    # DEBUG: Integer value 50 in $t6
    # DEBUG: Stored integer 50 through pointer #t60
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_ptr_main_s2 in $t0
    li $t6, 50
    sw $t6, 0($t8)

    # TAC 85: 86: #t61 = v_ptr_main_s2 + 8
I86:
    # --- Register Descriptor ---
    # $t1: [<CONST_72_20>]
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_84_50>: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t61 = v_ptr_main_s2 add 8
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: Loaded constant 8 into $t9
    # DEBUG: 8 in $t9
    # DEBUG: Spilling register $t1 due to register pressure
    # DEBUG: Skipping spill of constant in $t1
    # DEBUG: #t61 = result in $t1 (dirty)
    lw $t0, -24($fp)
    li $t9, 8
    add $t1, $t0, $t9

    # TAC 86: 87: #t62 = #t61
I87:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [#t61] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [$t1]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_84_50>: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t62 = #t61
    # DEBUG: #t61 already in $t1
    # DEBUG: #t62 now also in $t1 (dirty)
    # DEBUG: Saved #t62 to memory at -248($fp)
    sw $t1, -248($fp)

    # TAC 87: 88: #t63 = #t62
I88:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [#t61, #t62] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [$t1]
    # #t62: [$t1, memory:-248($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_84_50>: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t63 = #t62
    # DEBUG: #t62 already in $t1
    # DEBUG: #t63 now also in $t1 (dirty)
    # DEBUG: Saved #t63 to memory at -252($fp)
    sw $t1, -252($fp)

    # TAC 88: 89: #t64 = #t63 + 4
I89:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2]
    # $t1: [#t61, #t62, #t63] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [$t1]
    # #t62: [$t1, memory:-248($fp)]
    # #t63: [$t1, memory:-252($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_84_50>: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t64 = #t63 add 4
    # DEBUG: #t63 in $t1
    # DEBUG: Loaded constant 4 into $t9
    # DEBUG: 4 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: #t64 = result in $t0 (dirty)
    li $t9, 4
    add $t0, $t1, $t9

    # TAC 89: 90: #t65 = #t64
I90:
    # --- Register Descriptor ---
    # $t0: [#t64] (dirty)
    # $t1: [#t61, #t62, #t63] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [$t1]
    # #t62: [$t1, memory:-248($fp)]
    # #t63: [$t1, memory:-252($fp)]
    # #t64: [$t0]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_84_50>: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t65 = #t64
    # DEBUG: #t64 already in $t0
    # DEBUG: #t65 now also in $t0 (dirty)
    # DEBUG: Saved #t65 to memory at -260($fp)
    sw $t0, -260($fp)

    # TAC 90: 91: *(#t65) = 150
I91:
    # --- Register Descriptor ---
    # $t0: [#t64, #t65] (dirty)
    # $t1: [#t61, #t62, #t63] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [$t1]
    # #t62: [$t1, memory:-248($fp)]
    # #t63: [$t1, memory:-252($fp)]
    # #t64: [$t0]
    # #t65: [$t0, memory:-260($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_84_50>: [$t6]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t65 = 150
    # DEBUG: Pointer #t65 in $t0
    # DEBUG: Loaded constant 150 into $t9
    # DEBUG: Integer value 150 in $t9
    # DEBUG: Stored integer 150 through pointer #t65
    # DEBUG: Invalidating all cached values due to pointer store
    li $t9, 150
    sw $t9, 0($t0)

    # TAC 91: 92: #t66 = v_ptr_main_s2 + 0
I92:
    # --- Register Descriptor ---
    # $t0: [#t64, #t65] (dirty)
    # $t1: [#t61, #t62, #t63] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t3: [<CONST_78_121>]
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # $t9: [<CONST_90_150>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [$t1]
    # #t62: [$t1, memory:-248($fp)]
    # #t63: [$t1, memory:-252($fp)]
    # #t64: [$t0]
    # #t65: [$t0, memory:-260($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_78_121>: [$t3]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t66 = v_ptr_main_s2 add 0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t64 from $t0 to memory at -256($fp)
    # DEBUG: Spilled #t65 from $t0 to memory at -260($fp)
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: Loaded constant 0 into $t3
    # DEBUG: 0 in $t3
    # DEBUG: Spilling register $t1 due to register pressure
    # DEBUG: Spilled #t61 from $t1 to memory at -244($fp)
    # DEBUG: Spilled #t62 from $t1 to memory at -248($fp)
    # DEBUG: Spilled #t63 from $t1 to memory at -252($fp)
    # DEBUG: #t66 = result in $t1 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    sw $t0, -256($fp)
    sw $t0, -260($fp)
    lw $t0, -24($fp)
    li $t3, 0
    sw $t1, -244($fp)
    sw $t1, -248($fp)
    sw $t1, -252($fp)
    move $t1, $t0

    # TAC 92: 93: #t67 = * #t66
I93:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2] (dirty)
    # $t1: [#t66] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [<CONST_84_50>]
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # $t9: [<CONST_90_150>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [$t1]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t67 = *#t66
    # DEBUG: Pointer #t66 already in $t1
    # DEBUG: Dereferenced *#t66 into $t6
    # DEBUG: #t67 = *#t66 in $t6 (dirty)
    lw $t6, 0($t1)

    # TAC 93: 94: param "%d\n"
I94:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2] (dirty)
    # $t1: [#t66] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [#t67] (dirty)
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # $t9: [<CONST_90_150>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [$t1]
    # #t67: [$t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 94: 95: param #t67
I95:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2] (dirty)
    # $t1: [#t66] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [#t67] (dirty)
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # $t9: [<CONST_90_150>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [$t1]
    # #t67: [$t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t67
    # DEBUG: Collected parameter #2: #t67

    # TAC 95: 96: #t68 = call printf_cp1_variadic, 2
I96:
    # --- Register Descriptor ---
    # $t0: [v_ptr_main_s2] (dirty)
    # $t1: [#t66] (dirty)
    # $t2: [#t50, #t51] (dirty)
    # $t4: [#t52, #t53] (dirty)
    # $t5: [#t54, #t55] (dirty)
    # $t6: [#t67] (dirty)
    # $t7: [#t56, #t57, #t58] (dirty)
    # $t8: [#t59, #t60] (dirty)
    # $t9: [<CONST_90_150>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [$t2]
    # #t51: [$t2, memory:-204($fp)]
    # #t52: [$t4]
    # #t53: [$t4]
    # #t54: [$t5]
    # #t55: [$t5, memory:-220($fp)]
    # #t56: [$t7]
    # #t57: [$t7, memory:-228($fp)]
    # #t58: [$t7, memory:-232($fp)]
    # #t59: [$t8]
    # #t6: [memory:#t6]
    # #t60: [$t8, memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [$t1]
    # #t67: [$t6]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_ptr_main_s2 from $t0 to -24($fp)
    # DEBUG: Spilled #t66 from $t1 to -264($fp)
    # DEBUG: Spilled #t50 from $t2 to -200($fp)
    # DEBUG: Spilled #t51 from $t2 to -204($fp)
    # DEBUG: Spilled #t52 from $t4 to -208($fp)
    # DEBUG: Spilled #t53 from $t4 to -212($fp)
    # DEBUG: Spilled #t54 from $t5 to -216($fp)
    # DEBUG: Spilled #t55 from $t5 to -220($fp)
    # DEBUG: Spilled #t67 from $t6 to -268($fp)
    # DEBUG: Spilled #t56 from $t7 to -224($fp)
    # DEBUG: Spilled #t57 from $t7 to -228($fp)
    sw $t0, -24($fp)
    # DEBUG: Spilled #t58 from $t7 to -232($fp)
    sw $t1, -264($fp)
    # DEBUG: Spilled #t59 from $t8 to -236($fp)
    sw $t2, -200($fp)
    # DEBUG: Spilled #t60 from $t8 to -240($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    sw $t2, -204($fp)
    # Load format string literal address
    # Store variadic arguments on stack
    sw $t4, -208($fp)
    # Arg 0: #t67
    sw $t4, -212($fp)
    # DEBUG: Loaded #t67 from memory at -268($fp)
    sw $t5, -216($fp)
    sw $t5, -220($fp)
    sw $t6, -268($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t7, -224($fp)
    sw $t7, -228($fp)
    sw $t7, -232($fp)
    sw $t8, -236($fp)
    sw $t8, -240($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -268($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 96: 97: #t69 = v_ptr_main_s2 + 4
I97:
    # --- Register Descriptor ---
    # $t0: [#t67]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [$t0, memory:-268($fp)]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t69 = v_ptr_main_s2 add 4
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t1
    # DEBUG: Loaded constant 4 into $t2
    # DEBUG: 4 in $t2
    # DEBUG: #t69 = result in $t3 (dirty)
    lw $t1, -24($fp)
    li $t2, 4
    add $t3, $t1, $t2

    # TAC 97: 98: #t70 = * #t69
I98:
    # --- Register Descriptor ---
    # $t0: [#t67]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t69] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [$t0, memory:-268($fp)]
    # #t69: [$t3]
    # #t7: [memory:#t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t70 = *#t69
    # DEBUG: Pointer #t69 already in $t3
    # DEBUG: Dereferenced *#t69 into $t7
    # DEBUG: #t70 = *#t69 in $t7 (dirty)
    lw $t7, 0($t3)

    # TAC 98: 99: param "%f\n"
I99:
    # --- Register Descriptor ---
    # $t0: [#t67]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t69] (dirty)
    # $t7: [#t70] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [$t0, memory:-268($fp)]
    # #t69: [$t3]
    # #t7: [memory:#t7]
    # #t70: [$t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%f\n"
    # DEBUG: Collected parameter #1: "%f\n"

    # TAC 99: 100: param #t70
I100:
    # --- Register Descriptor ---
    # $t0: [#t67]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t69] (dirty)
    # $t7: [#t70] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [$t0, memory:-268($fp)]
    # #t69: [$t3]
    # #t7: [memory:#t7]
    # #t70: [$t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t70
    # DEBUG: Collected parameter #2: #t70

    # TAC 100: 101: #t71 = call printf_cp1_variadic, 2
I101:
    # --- Register Descriptor ---
    # $t0: [#t67]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t69] (dirty)
    # $t7: [#t70] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [$t0, memory:-268($fp)]
    # #t69: [$t3]
    # #t7: [memory:#t7]
    # #t70: [$t7]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t67 from $t0 to -268($fp)
    # DEBUG: Spilled v_ptr_main_s2 from $t1 to -24($fp)
    # DEBUG: Spilled #t69 from $t3 to -272($fp)
    # DEBUG: Spilled #t70 from $t7 to -276($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%f\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t70
    # DEBUG: Loaded float #t70 from -276($fp) into $f3
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -268($fp)
    sw $t1, -24($fp)
    sw $t3, -272($fp)
    sw $t7, -276($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    l.s $f3, -276($fp)
    swc1 $f3, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 101: 102: #t72 = v_ptr_main_s2 + 16
I102:
    # --- Register Descriptor ---
    # $f3: [#t70]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [$f3]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t72 = v_ptr_main_s2 add 16
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: Loaded constant 16 into $t1
    # DEBUG: 16 in $t1
    # DEBUG: #t72 = result in $t2 (dirty)
    lw $t0, -24($fp)
    li $t1, 16
    add $t2, $t0, $t1

    # TAC 102: 103: #t73 = * #t72
I103:
    # --- Register Descriptor ---
    # $f3: [#t70]
    # $t0: [v_ptr_main_s2]
    # $t2: [#t72] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [$f3]
    # #t72: [$t2]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t73 = *#t72
    # DEBUG: Pointer #t72 already in $t2
    # DEBUG: Dereferenced *#t72 (char*) into $t8 using lb
    # DEBUG: #t73 = *#t72 in $t8 (dirty)
    lb $t8, 0($t2)

    # TAC 103: 104: param "%c\n"
I104:
    # --- Register Descriptor ---
    # $f3: [#t70]
    # $t0: [v_ptr_main_s2]
    # $t2: [#t72] (dirty)
    # $t8: [#t73] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [$f3]
    # #t72: [$t2]
    # #t73: [$t8]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%c\n"
    # DEBUG: Collected parameter #1: "%c\n"

    # TAC 104: 105: param #t73
I105:
    # --- Register Descriptor ---
    # $f3: [#t70]
    # $t0: [v_ptr_main_s2]
    # $t2: [#t72] (dirty)
    # $t8: [#t73] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [$f3]
    # #t72: [$t2]
    # #t73: [$t8]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t73
    # DEBUG: Collected parameter #2: #t73

    # TAC 105: 106: #t74 = call printf_cp1_variadic, 2
I106:
    # --- Register Descriptor ---
    # $f3: [#t70]
    # $t0: [v_ptr_main_s2]
    # $t2: [#t72] (dirty)
    # $t8: [#t73] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [$f3]
    # #t72: [$t2]
    # #t73: [$t8]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t0, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_ptr_main_s2 from $t0 to -24($fp)
    # DEBUG: Spilled #t72 from $t2 to -280($fp)
    # DEBUG: Spilled #t73 from $t8 to -284($fp)
    # DEBUG: Spilled float #t70 from $f3 to -276($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%c\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t73
    # DEBUG: Loaded #t73 from memory at -284($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -24($fp)
    sw $t2, -280($fp)
    sw $t8, -284($fp)
    swc1 $f3, -276($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -284($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 106: 107: #t75 = v_ptr_main_s2 + 8
I107:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t75 = v_ptr_main_s2 add 8
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t1
    # DEBUG: Loaded constant 8 into $t2
    # DEBUG: 8 in $t2
    # DEBUG: #t75 = result in $t3 (dirty)
    lw $t1, -24($fp)
    li $t2, 8
    add $t3, $t1, $t2

    # TAC 107: 108: #t76 = #t75
I108:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t75] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t75: [$t3]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t76 = #t75
    # DEBUG: #t75 already in $t3
    # DEBUG: #t76 now also in $t3 (dirty)
    # DEBUG: Saved #t76 to memory at -292($fp)
    sw $t3, -292($fp)

    # TAC 108: 109: #t77 = #t76
I109:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t75, #t76] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t75: [$t3]
    # #t76: [$t3, memory:-292($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t77 = #t76
    # DEBUG: #t76 already in $t3
    # DEBUG: #t77 now also in $t3 (dirty)
    # DEBUG: Saved #t77 to memory at -296($fp)
    sw $t3, -296($fp)

    # TAC 109: 110: #t78 = #t77 + 0
I110:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t75, #t76, #t77] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t75: [$t3]
    # #t76: [$t3, memory:-292($fp)]
    # #t77: [$t3, memory:-296($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t78 = #t77 add 0
    # DEBUG: #t77 in $t3
    # DEBUG: Loaded constant 0 into $t2
    # DEBUG: 0 in $t2
    # DEBUG: #t78 = result in $t4 (dirty)
    # PEEPHOLE: Simplified add with 0 to move
    li $t2, 0
    move $t4, $t3

    # TAC 110: 111: #t79 = * #t78
I111:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t75, #t76, #t77] (dirty)
    # $t4: [#t78] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t75: [$t3]
    # #t76: [$t3, memory:-292($fp)]
    # #t77: [$t3, memory:-296($fp)]
    # #t78: [$t4]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t79 = *#t78
    # DEBUG: Pointer #t78 already in $t4
    # DEBUG: Dereferenced *#t78 into $t9
    # DEBUG: #t79 = *#t78 in $t9 (dirty)
    lw $t9, 0($t4)

    # TAC 111: 112: param "%d\n"
I112:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t75, #t76, #t77] (dirty)
    # $t4: [#t78] (dirty)
    # $t9: [#t79] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t75: [$t3]
    # #t76: [$t3, memory:-292($fp)]
    # #t77: [$t3, memory:-296($fp)]
    # #t78: [$t4]
    # #t79: [$t9]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 112: 113: param #t79
I113:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t75, #t76, #t77] (dirty)
    # $t4: [#t78] (dirty)
    # $t9: [#t79] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t75: [$t3]
    # #t76: [$t3, memory:-292($fp)]
    # #t77: [$t3, memory:-296($fp)]
    # #t78: [$t4]
    # #t79: [$t9]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t79
    # DEBUG: Collected parameter #2: #t79

    # TAC 113: 114: #t80 = call printf_cp1_variadic, 2
I114:
    # --- Register Descriptor ---
    # $t0: [#t73]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t75, #t76, #t77] (dirty)
    # $t4: [#t78] (dirty)
    # $t9: [#t79] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [$t0, memory:-284($fp)]
    # #t75: [$t3]
    # #t76: [$t3, memory:-292($fp)]
    # #t77: [$t3, memory:-296($fp)]
    # #t78: [$t4]
    # #t79: [$t9]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t73 from $t0 to -284($fp)
    # DEBUG: Spilled v_ptr_main_s2 from $t1 to -24($fp)
    # DEBUG: Spilled #t75 from $t3 to -288($fp)
    # DEBUG: Spilled #t76 from $t3 to -292($fp)
    # DEBUG: Spilled #t77 from $t3 to -296($fp)
    # DEBUG: Spilled #t78 from $t4 to -300($fp)
    # DEBUG: Spilled #t79 from $t9 to -304($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t79
    # DEBUG: Loaded #t79 from memory at -304($fp)
    sw $t0, -284($fp)
    sw $t1, -24($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t3, -288($fp)
    sw $t3, -292($fp)
    sw $t3, -296($fp)
    sw $t4, -300($fp)
    sw $t9, -304($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -304($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 114: 115: #t81 = v_ptr_main_s2 + 8
I115:
    # --- Register Descriptor ---
    # $t0: [#t79]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [$t0, memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t81 = v_ptr_main_s2 add 8
    # DEBUG: Loaded v_ptr_main_s2 from memory at -24($fp)
    # DEBUG: v_ptr_main_s2 in $t1
    # DEBUG: Loaded constant 8 into $t2
    # DEBUG: 8 in $t2
    # DEBUG: #t81 = result in $t3 (dirty)
    lw $t1, -24($fp)
    li $t2, 8
    add $t3, $t1, $t2

    # TAC 115: 116: #t82 = #t81
I116:
    # --- Register Descriptor ---
    # $t0: [#t79]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t81] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [$t0, memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [$t3]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t82 = #t81
    # DEBUG: #t81 already in $t3
    # DEBUG: #t82 now also in $t3 (dirty)
    # DEBUG: Saved #t82 to memory at -312($fp)
    sw $t3, -312($fp)

    # TAC 116: 117: #t83 = #t82
I117:
    # --- Register Descriptor ---
    # $t0: [#t79]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t81, #t82] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [$t0, memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [$t3]
    # #t82: [$t3, memory:-312($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t83 = #t82
    # DEBUG: #t82 already in $t3
    # DEBUG: #t83 now also in $t3 (dirty)
    # DEBUG: Saved #t83 to memory at -316($fp)
    sw $t3, -316($fp)

    # TAC 117: 118: #t84 = #t83 + 4
I118:
    # --- Register Descriptor ---
    # $t0: [#t79]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t81, #t82, #t83] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [$t0, memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [$t3]
    # #t82: [$t3, memory:-312($fp)]
    # #t83: [$t3, memory:-316($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t84 = #t83 add 4
    # DEBUG: #t83 in $t3
    # DEBUG: Loaded constant 4 into $t2
    # DEBUG: 4 in $t2
    # DEBUG: #t84 = result in $t4 (dirty)
    li $t2, 4
    add $t4, $t3, $t2

    # TAC 118: 119: #t85 = * #t84
I119:
    # --- Register Descriptor ---
    # $t0: [#t79]
    # $t1: [v_ptr_main_s2]
    # $t3: [#t81, #t82, #t83] (dirty)
    # $t4: [#t84] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [$t0, memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [$t3]
    # #t82: [$t3, memory:-312($fp)]
    # #t83: [$t3, memory:-316($fp)]
    # #t84: [$t4]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t85 = *#t84
    # DEBUG: Pointer #t84 already in $t4
    # DEBUG: Dereferenced *#t84 into $t0
    # DEBUG: #t85 = *#t84 in $t0 (dirty)
    lw $t0, 0($t4)

    # TAC 119: 120: param "%d\n"
I120:
    # --- Register Descriptor ---
    # $t0: [#t85] (dirty)
    # $t1: [v_ptr_main_s2]
    # $t3: [#t81, #t82, #t83] (dirty)
    # $t4: [#t84] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [$t3]
    # #t82: [$t3, memory:-312($fp)]
    # #t83: [$t3, memory:-316($fp)]
    # #t84: [$t4]
    # #t85: [$t0]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 120: 121: param #t85
I121:
    # --- Register Descriptor ---
    # $t0: [#t85] (dirty)
    # $t1: [v_ptr_main_s2]
    # $t3: [#t81, #t82, #t83] (dirty)
    # $t4: [#t84] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [$t3]
    # #t82: [$t3, memory:-312($fp)]
    # #t83: [$t3, memory:-316($fp)]
    # #t84: [$t4]
    # #t85: [$t0]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t85
    # DEBUG: Collected parameter #2: #t85

    # TAC 121: 122: #t86 = call printf_cp1_variadic, 2
I122:
    # --- Register Descriptor ---
    # $t0: [#t85] (dirty)
    # $t1: [v_ptr_main_s2]
    # $t3: [#t81, #t82, #t83] (dirty)
    # $t4: [#t84] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [$t3]
    # #t82: [$t3, memory:-312($fp)]
    # #t83: [$t3, memory:-316($fp)]
    # #t84: [$t4]
    # #t85: [$t0]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t85 from $t0 to -324($fp)
    # DEBUG: Spilled v_ptr_main_s2 from $t1 to -24($fp)
    # DEBUG: Spilled #t81 from $t3 to -308($fp)
    # DEBUG: Spilled #t82 from $t3 to -312($fp)
    # DEBUG: Spilled #t83 from $t3 to -316($fp)
    # DEBUG: Spilled #t84 from $t4 to -320($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t85
    # DEBUG: Loaded #t85 from memory at -324($fp)
    sw $t0, -324($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t1, -24($fp)
    sw $t3, -308($fp)
    sw $t3, -312($fp)
    sw $t3, -316($fp)
    sw $t4, -320($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -324($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 122: 123: return 0
I123:
    # --- Register Descriptor ---
    # $t0: [#t85]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [memory:-308($fp)]
    # #t82: [memory:-312($fp)]
    # #t83: [memory:-316($fp)]
    # #t84: [memory:-320($fp)]
    # #t85: [$t0, memory:-324($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B4_i123_i123 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i123 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 123: 124: end function main
I124:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t11: [memory:-68($fp)]
    # #t12: [memory:-72($fp)]
    # #t13: [memory:-76($fp)]
    # #t14: [memory:-80($fp)]
    # #t15: [memory:-84($fp)]
    # #t16: [memory:-88($fp)]
    # #t17: [memory:-92($fp)]
    # #t18: [memory:-96($fp)]
    # #t19: [memory:-100($fp)]
    # #t2: [memory:-32($fp)]
    # #t20: [memory:-104($fp)]
    # #t21: [memory:-108($fp)]
    # #t22: [memory:-112($fp)]
    # #t23: [memory:-116($fp)]
    # #t24: [memory:-120($fp)]
    # #t25: [memory:-124($fp)]
    # #t27: [memory:-128($fp)]
    # #t28: [memory:-132($fp)]
    # #t29: [memory:-136($fp)]
    # #t3: [memory:#t3]
    # #t31: [memory:-140($fp)]
    # #t32: [memory:-144($fp)]
    # #t33: [memory:-148($fp)]
    # #t35: [memory:-152($fp)]
    # #t36: [memory:#t36]
    # #t37: [memory:-160($fp)]
    # #t38: [memory:-164($fp)]
    # #t39: [memory:-168($fp)]
    # #t4: [memory:-40($fp)]
    # #t40: [memory:-172($fp)]
    # #t42: [memory:-176($fp)]
    # #t43: [memory:-180($fp)]
    # #t44: [memory:-184($fp)]
    # #t45: [memory:-188($fp)]
    # #t46: [memory:-192($fp)]
    # #t47: [memory:-196($fp)]
    # #t5: [memory:-44($fp)]
    # #t50: [memory:-200($fp)]
    # #t51: [memory:-204($fp)]
    # #t52: [memory:-208($fp)]
    # #t53: [memory:-212($fp)]
    # #t54: [memory:-216($fp)]
    # #t55: [memory:-220($fp)]
    # #t56: [memory:-224($fp)]
    # #t57: [memory:-228($fp)]
    # #t58: [memory:-232($fp)]
    # #t59: [memory:-236($fp)]
    # #t6: [memory:#t6]
    # #t60: [memory:-240($fp)]
    # #t61: [memory:-244($fp)]
    # #t62: [memory:-248($fp)]
    # #t63: [memory:-252($fp)]
    # #t64: [memory:-256($fp)]
    # #t65: [memory:-260($fp)]
    # #t66: [memory:-264($fp)]
    # #t67: [memory:-268($fp)]
    # #t69: [memory:-272($fp)]
    # #t7: [memory:#t7]
    # #t70: [memory:-276($fp)]
    # #t72: [memory:-280($fp)]
    # #t73: [memory:-284($fp)]
    # #t75: [memory:-288($fp)]
    # #t76: [memory:-292($fp)]
    # #t77: [memory:-296($fp)]
    # #t78: [memory:-300($fp)]
    # #t79: [memory:-304($fp)]
    # #t8: [memory:-56($fp)]
    # #t81: [memory:-308($fp)]
    # #t82: [memory:-312($fp)]
    # #t83: [memory:-316($fp)]
    # #t84: [memory:-320($fp)]
    # #t85: [memory:-324($fp)]
    # #t9: [memory:#t9]
    # <CONST_17_122>: [$t4]
    # <CONST_72_20>: [$t1]
    # <CONST_84_50>: [$t6]
    # <CONST_90_150>: [$t9]
    # <CONST_9_10>: [$t2]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_ptr_main_s2: [memory:-24($fp)]
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

