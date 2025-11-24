    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 46

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""a before for loop: %d\n""
    # Added string literal: str_1 = ""b before for loop: %d\n""
    # Added string literal: str_2 = ""c before for loop: %d\n""
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
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i45

.data
    # String Literals
str_0: .asciiz "a before for loop: %d\n"
str_1: .asciiz "b before for loop: %d\n"
str_2: .asciiz "c before for loop: %d\n"

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
    # DEBUG: Parameter 0 (v_fmt_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fmt_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 0
I2:
    # --- Register Descriptor ---
    # $a0: [v_fmt_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


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
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
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
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
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
    # DEBUG: Parameter 0 (v_fmt_scanf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fmt_scanf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 0
I5:
    # --- Register Descriptor ---
    # $a0: [v_fmt_scanf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


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
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
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
    # === B5_i6_i45 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i45 Next-Use:
    #   main -> N/A
    # Instr i44 Next-Use:
    #   #t23 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i43 Next-Use:
    #   v_c_main_s2 -> N/A
    # Instr i42 Next-Use:
    # Instr i41 Next-Use:
    #   #t22 -> N/A
    #   printf_cp1_variadic -> i44
    # Instr i40 Next-Use:
    #   v_b_main_s2 -> N/A
    # Instr i39 Next-Use:
    # Instr i38 Next-Use:
    #   #t21 -> N/A
    #   printf_cp1_variadic -> i41
    # Instr i37 Next-Use:
    #   v_a_main_s2 -> N/A
    # Instr i36 Next-Use:
    # Instr i35 Next-Use:
    #   #t20 -> N/A
    # Instr i34 Next-Use:
    #   #t19 -> N/A
    #   #t20 -> N/A
    # Instr i33 Next-Use:
    #   #t17 -> N/A
    #   #t18 -> N/A
    #   #t19 -> N/A
    # Instr i32 Next-Use:
    #   #t18 -> N/A
    #   v_arr_main_s2 -> N/A
    # Instr i31 Next-Use:
    #   #t17 -> N/A
    # Instr i30 Next-Use:
    #   #t16 -> N/A
    # Instr i29 Next-Use:
    #   #t15 -> N/A
    #   #t16 -> N/A
    # Instr i28 Next-Use:
    #   #t13 -> N/A
    #   #t14 -> N/A
    #   #t15 -> N/A
    # Instr i27 Next-Use:
    #   #t14 -> N/A
    #   v_arr_main_s2 -> i32
    # Instr i26 Next-Use:
    #   #t13 -> N/A
    # Instr i25 Next-Use:
    #   #t12 -> N/A
    # Instr i24 Next-Use:
    #   #t11 -> N/A
    #   #t12 -> N/A
    # Instr i23 Next-Use:
    #   #t10 -> N/A
    #   #t11 -> N/A
    #   #t9 -> N/A
    # Instr i22 Next-Use:
    #   #t10 -> N/A
    #   v_arr_main_s2 -> i27
    # Instr i21 Next-Use:
    #   #t9 -> N/A
    # Instr i20 Next-Use:
    #   #t8 -> N/A
    # Instr i19 Next-Use:
    #   #t7 -> N/A
    #   #t8 -> N/A
    # Instr i18 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i17 Next-Use:
    #   #t6 -> N/A
    #   v_arr_main_s2 -> i22
    # Instr i16 Next-Use:
    #   #t5 -> N/A
    # Instr i15 Next-Use:
    #   #t4 -> N/A
    # Instr i14 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    # Instr i13 Next-Use:
    #   #t1 -> N/A
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i12 Next-Use:
    #   #t2 -> N/A
    #   v_arr_main_s2 -> i17
    # Instr i11 Next-Use:
    #   #t1 -> N/A
    # Instr i10 Next-Use:
    #   v_f_main_s2 -> N/A
    # Instr i9 Next-Use:
    #   v_c_main_s2 -> N/A
    # Instr i8 Next-Use:
    #   v_b_main_s2 -> N/A
    # Instr i7 Next-Use:
    #   v_a_main_s2 -> N/A
    # Instr i6 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 180 bytes
    addiu $sp, $sp, -180
    # Allocate 180 bytes (8 for $ra+$fp, 180 for locals/temps)
    sw $ra, 176($sp)
    # Save return address at 184($sp)
    sw $fp, 172($sp)
    # Save old frame pointer at 180($sp)
    addiu $fp, $sp, 172
    # Set new frame pointer (points to saved old $fp)

    # TAC 7: 8: v_a_main_s2 = 0
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = 0
    # DEBUG: v_a_main_s2 = constant 0 loaded in $t0 (dirty)
    # DEBUG: Saved variable v_a_main_s2 to home location -8($fp)
    li $t0, 0
    sw $t0, -8($fp)

    # TAC 8: 9: v_b_main_s2 = 5
I9:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0, memory:-8($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_b_main_s2 = 5
    # DEBUG: v_b_main_s2 = constant 5 loaded in $t1 (dirty)
    # DEBUG: Saved variable v_b_main_s2 to home location -12($fp)
    li $t1, 5
    sw $t1, -12($fp)

    # TAC 9: 10: v_c_main_s2 = 10
I10:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0, memory:-8($fp)]
    # v_b_main_s2: [$t1, memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_c_main_s2 = 10
    # DEBUG: v_c_main_s2 = constant 10 loaded in $t2 (dirty)
    # DEBUG: Saved variable v_c_main_s2 to home location -16($fp)
    li $t2, 10
    sw $t2, -16($fp)

    # TAC 10: 11: v_f_main_s2 = 2.500000
I11:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0, memory:-8($fp)]
    # v_b_main_s2: [$t1, memory:-12($fp)]
    # v_c_main_s2: [$t2, memory:-16($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_f_main_s2 = 2.500000
    # DEBUG: Float assignment
    # DEBUG: Loaded float constant 2.500000 into $f0
    # DEBUG: 2.500000 in $f0
    # DEBUG: v_f_main_s2 = 2.500000 in $f0 (dirty, float)
    # DEBUG: Saved float variable v_f_main_s2 to home location -20($fp)
    # Loading float constant: 2.500000
    li.s $f0, 2.500000
    swc1 $f0, -20($fp)

    # TAC 11: 12: #t1 = 0 * 4
I12:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>, v_f_main_s2]
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [$t0, memory:-8($fp)]
    # v_b_main_s2: [$t1, memory:-12($fp)]
    # v_c_main_s2: [$t2, memory:-16($fp)]
    # v_f_main_s2: [$f0, memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = 0 mul 4
    # DEBUG: Loaded constant 0 into $t3
    # DEBUG: 0 in $t3
    # DEBUG: Loaded constant 4 into $t4
    # DEBUG: 4 in $t4
    # DEBUG: #t1 = result in $t5 (dirty)
    li $t3, 0
    li $t4, 4
    mul $t5, $t3, $t4

    # TAC 12: 13: #t2 = & v_arr_main_s2
I13:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>, v_f_main_s2]
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t5: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [$t0, memory:-8($fp)]
    # v_b_main_s2: [$t1, memory:-12($fp)]
    # v_c_main_s2: [$t2, memory:-16($fp)]
    # v_f_main_s2: [$f0, memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = &v_arr_main_s2
    # DEBUG: #t2 = address of v_arr_main_s2 at -40($fp)
    # DEBUG: #t2 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t2 to memory at -48($fp)
    addiu $t0, $fp, -40
    sw $t0, -48($fp)

    # TAC 13: 14: #t3 = #t2 + #t1
I14:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>, v_f_main_s2]
    # $t0: [#t2] (dirty)
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t5: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t0, memory:-48($fp)]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [$t1, memory:-12($fp)]
    # v_c_main_s2: [$t2, memory:-16($fp)]
    # v_f_main_s2: [$f0, memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add #t1
    # DEBUG: #t2 in $t0
    # DEBUG: #t1 in $t5
    # DEBUG: #t3 = result in $t3 (dirty)
    add $t3, $t0, $t5

    # TAC 14: 15: #t4 = #t3
I15:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>, v_f_main_s2]
    # $t0: [#t2] (dirty)
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: [#t3] (dirty)
    # $t5: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t0, memory:-48($fp)]
    # #t3: [$t3]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [$t1, memory:-12($fp)]
    # v_c_main_s2: [$t2, memory:-16($fp)]
    # v_f_main_s2: [$f0, memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = #t3
    # DEBUG: #t3 already in $t3
    # DEBUG: #t4 now also in $t3 (dirty)
    # DEBUG: Saved #t4 to memory at -56($fp)
    sw $t3, -56($fp)

    # TAC 15: 16: *(#t4) = 1
I16:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>, v_f_main_s2]
    # $t0: [#t2] (dirty)
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: [#t3, #t4] (dirty)
    # $t5: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t0, memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [$t1, memory:-12($fp)]
    # v_c_main_s2: [$t2, memory:-16($fp)]
    # v_f_main_s2: [$f0, memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t4 = 1
    # DEBUG: Pointer #t4 in $t3
    # DEBUG: Loaded constant 1 into $t4
    # DEBUG: Integer value 1 in $t4
    # DEBUG: Stored integer 1 through pointer #t4
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_b_main_s2 in $t1
    # DEBUG: Invalidating cached value of v_c_main_s2 in $t2
    # DEBUG: Invalidating cached float value of v_f_main_s2 in $f0
    li $t4, 1
    sw $t4, 0($t3)

    # TAC 16: 17: #t5 = 1 * 4
I17:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t2] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t0, memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = 1 mul 4
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: Loaded constant 4 into $t2
    # DEBUG: 4 in $t2
    # DEBUG: #t5 = result in $t6 (dirty)
    li $t1, 1
    li $t2, 4
    mul $t6, $t1, $t2

    # TAC 17: 18: #t6 = & v_arr_main_s2
I18:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t2] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t0, memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = &v_arr_main_s2
    # DEBUG: Spilled #t2 from $t0 to home location -48($fp)
    # DEBUG: #t6 = address of v_arr_main_s2 at -40($fp)
    # DEBUG: #t6 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t6 to memory at -64($fp)
    sw $t0, -48($fp)
    addiu $t0, $fp, -40
    sw $t0, -64($fp)

    # TAC 18: 19: #t7 = #t6 + #t5
I19:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t6] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [$t0, memory:-64($fp)]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = #t6 add #t5
    # DEBUG: #t6 in $t0
    # DEBUG: #t5 in $t6
    # DEBUG: #t7 = result in $t1 (dirty)
    add $t1, $t0, $t6

    # TAC 19: 20: #t8 = #t7
I20:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t6] (dirty)
    # $t1: [#t7] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [$t0, memory:-64($fp)]
    # #t7: [$t1]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t8 = #t7
    # DEBUG: #t7 already in $t1
    # DEBUG: #t8 now also in $t1 (dirty)
    # DEBUG: Saved #t8 to memory at -72($fp)
    sw $t1, -72($fp)

    # TAC 20: 21: *(#t8) = 2
I21:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t6] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [$t0, memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t8 = 2
    # DEBUG: Pointer #t8 in $t1
    # DEBUG: Loaded constant 2 into $t2
    # DEBUG: Integer value 2 in $t2
    # DEBUG: Stored integer 2 through pointer #t8
    # DEBUG: Invalidating all cached values due to pointer store
    li $t2, 2
    sw $t2, 0($t1)

    # TAC 21: 22: #t9 = 2 * 4
I22:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t6] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [<CONST_20_2>]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [$t0, memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # <CONST_20_2>: [$t2]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t9 = 2 mul 4
    # DEBUG: Loaded constant 2 into $t7
    # DEBUG: 2 in $t7
    # DEBUG: Loaded constant 4 into $t8
    # DEBUG: 4 in $t8
    # DEBUG: #t9 = result in $t9 (dirty)
    li $t7, 2
    li $t8, 4
    mul $t9, $t7, $t8

    # TAC 22: 23: #t10 = & v_arr_main_s2
I23:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t6] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [<CONST_20_2>]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [$t0, memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # <CONST_20_2>: [$t2]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t10 = &v_arr_main_s2
    # DEBUG: Spilled #t6 from $t0 to home location -64($fp)
    # DEBUG: #t10 = address of v_arr_main_s2 at -40($fp)
    # DEBUG: #t10 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t10 to memory at -80($fp)
    sw $t0, -64($fp)
    addiu $t0, $fp, -40
    sw $t0, -80($fp)

    # TAC 23: 24: #t11 = #t10 + #t9
I24:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t10] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [<CONST_20_2>]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [$t0, memory:-80($fp)]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # <CONST_20_2>: [$t2]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t11 = #t10 add #t9
    # DEBUG: #t10 in $t0
    # DEBUG: #t9 in $t9
    # DEBUG: #t11 = result in $t7 (dirty)
    add $t7, $t0, $t9

    # TAC 24: 25: #t12 = #t11
I25:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t10] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [<CONST_20_2>]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [$t0, memory:-80($fp)]
    # #t11: [$t7]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # <CONST_20_2>: [$t2]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t12 = #t11
    # DEBUG: #t11 already in $t7
    # DEBUG: #t12 now also in $t7 (dirty)
    # DEBUG: Saved #t12 to memory at -88($fp)
    sw $t7, -88($fp)

    # TAC 25: 26: *(#t12) = 3
I26:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t10] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [<CONST_20_2>]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [$t0, memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # <CONST_20_2>: [$t2]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t12 = 3
    # DEBUG: Pointer #t12 in $t7
    # DEBUG: Loaded constant 3 into $t8
    # DEBUG: Integer value 3 in $t8
    # DEBUG: Stored integer 3 through pointer #t12
    # DEBUG: Invalidating all cached values due to pointer store
    li $t8, 3
    sw $t8, 0($t7)

    # TAC 26: 27: #t13 = 3 * 4
I27:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t10] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [<CONST_20_2>]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONST_15_1>]
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [<CONST_25_3>]
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [$t0, memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_15_1>: [$t4]
    # <CONST_20_2>: [$t2]
    # <CONST_25_3>: [$t8]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t13 = 3 mul 4
    # DEBUG: Loaded constant 3 into $t2
    # DEBUG: 3 in $t2
    # DEBUG: Loaded constant 4 into $t4
    # DEBUG: 4 in $t4
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t10 from $t0 to memory at -80($fp)
    # DEBUG: #t13 = result in $t0 (dirty)
    li $t2, 3
    li $t4, 4
    sw $t0, -80($fp)
    mul $t0, $t2, $t4

    # TAC 27: 28: #t14 = & v_arr_main_s2
I28:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t13] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [<CONST_25_3>]
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t0]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_25_3>: [$t8]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t14 = &v_arr_main_s2
    # DEBUG: Spilled #t13 from $t0 to home location -92($fp)
    # DEBUG: #t14 = address of v_arr_main_s2 at -40($fp)
    # DEBUG: #t14 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t14 to memory at -96($fp)
    sw $t0, -92($fp)
    addiu $t0, $fp, -40
    sw $t0, -96($fp)

    # TAC 28: 29: #t15 = #t14 + #t13
I29:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t14] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [<CONST_25_3>]
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [$t0, memory:-96($fp)]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_25_3>: [$t8]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t15 = #t14 add #t13
    # DEBUG: #t14 in $t0
    # DEBUG: Loaded #t13 from memory at -92($fp)
    # DEBUG: #t13 in $t2
    # DEBUG: #t15 = result in $t4 (dirty)
    lw $t2, -92($fp)
    add $t4, $t0, $t2

    # TAC 29: 30: #t16 = #t15
I30:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t14] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [<CONST_25_3>]
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [$t0, memory:-96($fp)]
    # #t15: [$t4]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_25_3>: [$t8]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t16 = #t15
    # DEBUG: #t15 already in $t4
    # DEBUG: #t16 now also in $t4 (dirty)
    # DEBUG: Saved #t16 to memory at -104($fp)
    sw $t4, -104($fp)

    # TAC 30: 31: *(#t16) = 4
I31:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t14] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [<CONST_25_3>]
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [$t0, memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_25_3>: [$t8]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t16 = 4
    # DEBUG: Pointer #t16 in $t4
    # DEBUG: Loaded constant 4 into $t8
    # DEBUG: Integer value 4 in $t8
    # DEBUG: Stored integer 4 through pointer #t16
    # DEBUG: Invalidating all cached values due to pointer store
    li $t8, 4
    sw $t8, 0($t4)

    # TAC 31: 32: #t17 = 4 * 4
I32:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t14] (dirty)
    # $t1: [#t7, #t8] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [<CONST_30_4>]
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [$t0, memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [$t1]
    # #t8: [$t1, memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_30_4>: [$t8]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t17 = 4 mul 4
    # DEBUG: Loaded constant 4 into $t8
    # DEBUG: 4 in $t8
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t14 from $t0 to memory at -96($fp)
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: Spilling register $t1 due to register pressure
    # DEBUG: Spilled #t7 from $t1 to memory at -68($fp)
    # DEBUG: Spilled #t8 from $t1 to memory at -72($fp)
    # DEBUG: #t17 = result in $t1 (dirty)
    li $t8, 4
    sw $t0, -96($fp)
    li $t0, 4
    sw $t1, -68($fp)
    sw $t1, -72($fp)
    mul $t1, $t8, $t0

    # TAC 32: 33: #t18 = & v_arr_main_s2
I33:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t1: [#t17] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t17: [$t1]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t18 = &v_arr_main_s2
    # DEBUG: #t18 = address of v_arr_main_s2 at -40($fp)
    # DEBUG: #t18 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t18 to memory at -112($fp)
    addiu $t0, $fp, -40
    sw $t0, -112($fp)

    # TAC 33: 34: #t19 = #t18 + #t17
I34:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t18] (dirty)
    # $t1: [#t17] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t17: [$t1]
    # #t18: [$t0, memory:-112($fp)]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t19 = #t18 add #t17
    # DEBUG: #t18 in $t0
    # DEBUG: #t17 in $t1
    # DEBUG: #t19 = result in $t8 (dirty)
    add $t8, $t0, $t1

    # TAC 34: 35: #t20 = #t19
I35:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t18] (dirty)
    # $t1: [#t17] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [#t19] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t17: [$t1]
    # #t18: [$t0, memory:-112($fp)]
    # #t19: [$t8]
    # #t2: [memory:-48($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t20 = #t19
    # DEBUG: #t19 already in $t8
    # DEBUG: #t20 now also in $t8 (dirty)
    # DEBUG: Saved #t20 to memory at -120($fp)
    sw $t8, -120($fp)

    # TAC 35: 36: *(#t20) = 5
I36:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [#t18] (dirty)
    # $t1: [#t17] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [#t19, #t20] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t17: [$t1]
    # #t18: [$t0, memory:-112($fp)]
    # #t19: [$t8]
    # #t2: [memory:-48($fp)]
    # #t20: [$t8, memory:-120($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t20 = 5
    # DEBUG: Pointer #t20 in $t8
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t18 from $t0 to memory at -112($fp)
    # DEBUG: Loaded constant 5 into $t0
    # DEBUG: Integer value 5 in $t0
    # DEBUG: Stored integer 5 through pointer #t20
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t0, -112($fp)
    li $t0, 5
    sw $t0, 0($t8)

    # TAC 36: 37: param "a before for loop: %d\n"
I37:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [<CONST_35_5>] (dirty)
    # $t1: [#t17] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [#t19, #t20] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t17: [$t1]
    # #t18: [memory:-112($fp)]
    # #t19: [$t8]
    # #t2: [memory:-48($fp)]
    # #t20: [$t8, memory:-120($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_35_5>: [$t0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "a before for loop: %d\n"
    # DEBUG: Collected parameter #1: "a before for loop: %d\n"

    # TAC 37: 38: param v_a_main_s2
I38:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [<CONST_35_5>] (dirty)
    # $t1: [#t17] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [#t19, #t20] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t17: [$t1]
    # #t18: [memory:-112($fp)]
    # #t19: [$t8]
    # #t2: [memory:-48($fp)]
    # #t20: [$t8, memory:-120($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_35_5>: [$t0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_a_main_s2
    # DEBUG: Collected parameter #2: v_a_main_s2

    # TAC 38: 39: #t21 = call printf_cp1_variadic, 2
I39:
    # --- Register Descriptor ---
    # $f0: [<CONST_10_2.500000>]
    # $t0: [<CONST_35_5>] (dirty)
    # $t1: [#t17] (dirty)
    # $t2: [#t13]
    # $t3: [#t3, #t4] (dirty)
    # $t4: [#t15, #t16] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t11, #t12] (dirty)
    # $t8: [#t19, #t20] (dirty)
    # $t9: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t10: [memory:-80($fp)]
    # #t11: [$t7]
    # #t12: [$t7, memory:-88($fp)]
    # #t13: [$t2, memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [$t4]
    # #t16: [$t4, memory:-104($fp)]
    # #t17: [$t1]
    # #t18: [memory:-112($fp)]
    # #t19: [$t8]
    # #t2: [memory:-48($fp)]
    # #t20: [$t8, memory:-120($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-56($fp)]
    # #t5: [$t6]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [$t9]
    # <CONST_10_2.500000>: [$f0]
    # <CONST_35_5>: [$t0]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t17 from $t1 to -108($fp)
    # DEBUG: Spilled #t13 from $t2 to -92($fp)
    # DEBUG: Spilled #t3 from $t3 to -52($fp)
    # DEBUG: Spilled #t4 from $t3 to -56($fp)
    # DEBUG: Spilled #t15 from $t4 to -100($fp)
    # DEBUG: Spilled #t16 from $t4 to -104($fp)
    # DEBUG: Spilled #t1 from $t5 to -44($fp)
    # DEBUG: Spilled #t5 from $t6 to -60($fp)
    # DEBUG: Spilled #t11 from $t7 to -84($fp)
    # DEBUG: Spilled #t12 from $t7 to -88($fp)
    # DEBUG: Spilled #t19 from $t8 to -116($fp)
    sw $t1, -108($fp)
    # DEBUG: Spilled #t20 from $t8 to -120($fp)
    sw $t2, -92($fp)
    # DEBUG: Spilled #t9 from $t9 to -76($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"a before for loop: %d\n"', first char = 34
    sw $t3, -52($fp)
    # Load format string literal address
    # Store variadic arguments on stack
    sw $t3, -56($fp)
    # Arg 0: v_a_main_s2
    sw $t4, -100($fp)
    # DEBUG: Loaded v_a_main_s2 from memory at -8($fp)
    sw $t4, -104($fp)
    sw $t5, -44($fp)
    sw $t6, -60($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t7, -84($fp)
    sw $t7, -88($fp)
    sw $t8, -116($fp)
    sw $t8, -120($fp)
    sw $t9, -76($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 39: 40: param "b before for loop: %d\n"
I40:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-44($fp)]
    # #t10: [memory:-80($fp)]
    # #t11: [memory:-84($fp)]
    # #t12: [memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [memory:-100($fp)]
    # #t16: [memory:-104($fp)]
    # #t17: [memory:-108($fp)]
    # #t18: [memory:-112($fp)]
    # #t19: [memory:-116($fp)]
    # #t2: [memory:-48($fp)]
    # #t20: [memory:-120($fp)]
    # #t3: [memory:-52($fp)]
    # #t4: [memory:-56($fp)]
    # #t5: [memory:-60($fp)]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [memory:-76($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "b before for loop: %d\n"
    # DEBUG: Collected parameter #1: "b before for loop: %d\n"

    # TAC 40: 41: param v_b_main_s2
I41:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-44($fp)]
    # #t10: [memory:-80($fp)]
    # #t11: [memory:-84($fp)]
    # #t12: [memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [memory:-100($fp)]
    # #t16: [memory:-104($fp)]
    # #t17: [memory:-108($fp)]
    # #t18: [memory:-112($fp)]
    # #t19: [memory:-116($fp)]
    # #t2: [memory:-48($fp)]
    # #t20: [memory:-120($fp)]
    # #t3: [memory:-52($fp)]
    # #t4: [memory:-56($fp)]
    # #t5: [memory:-60($fp)]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [memory:-76($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_b_main_s2
    # DEBUG: Collected parameter #2: v_b_main_s2

    # TAC 41: 42: #t22 = call printf_cp1_variadic, 2
I42:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-44($fp)]
    # #t10: [memory:-80($fp)]
    # #t11: [memory:-84($fp)]
    # #t12: [memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [memory:-100($fp)]
    # #t16: [memory:-104($fp)]
    # #t17: [memory:-108($fp)]
    # #t18: [memory:-112($fp)]
    # #t19: [memory:-116($fp)]
    # #t2: [memory:-48($fp)]
    # #t20: [memory:-120($fp)]
    # #t3: [memory:-52($fp)]
    # #t4: [memory:-56($fp)]
    # #t5: [memory:-60($fp)]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [memory:-76($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"b before for loop: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_b_main_s2
    # DEBUG: Loaded v_b_main_s2 from memory at -12($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -12($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 42: 43: param "c before for loop: %d\n"
I43:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-44($fp)]
    # #t10: [memory:-80($fp)]
    # #t11: [memory:-84($fp)]
    # #t12: [memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [memory:-100($fp)]
    # #t16: [memory:-104($fp)]
    # #t17: [memory:-108($fp)]
    # #t18: [memory:-112($fp)]
    # #t19: [memory:-116($fp)]
    # #t2: [memory:-48($fp)]
    # #t20: [memory:-120($fp)]
    # #t3: [memory:-52($fp)]
    # #t4: [memory:-56($fp)]
    # #t5: [memory:-60($fp)]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [memory:-76($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "c before for loop: %d\n"
    # DEBUG: Collected parameter #1: "c before for loop: %d\n"

    # TAC 43: 44: param v_c_main_s2
I44:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-44($fp)]
    # #t10: [memory:-80($fp)]
    # #t11: [memory:-84($fp)]
    # #t12: [memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [memory:-100($fp)]
    # #t16: [memory:-104($fp)]
    # #t17: [memory:-108($fp)]
    # #t18: [memory:-112($fp)]
    # #t19: [memory:-116($fp)]
    # #t2: [memory:-48($fp)]
    # #t20: [memory:-120($fp)]
    # #t3: [memory:-52($fp)]
    # #t4: [memory:-56($fp)]
    # #t5: [memory:-60($fp)]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [memory:-76($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_c_main_s2
    # DEBUG: Collected parameter #2: v_c_main_s2

    # TAC 44: 45: #t23 = call printf_cp1_variadic, 2
I45:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-44($fp)]
    # #t10: [memory:-80($fp)]
    # #t11: [memory:-84($fp)]
    # #t12: [memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [memory:-100($fp)]
    # #t16: [memory:-104($fp)]
    # #t17: [memory:-108($fp)]
    # #t18: [memory:-112($fp)]
    # #t19: [memory:-116($fp)]
    # #t2: [memory:-48($fp)]
    # #t20: [memory:-120($fp)]
    # #t3: [memory:-52($fp)]
    # #t4: [memory:-56($fp)]
    # #t5: [memory:-60($fp)]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [memory:-76($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"c before for loop: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_c_main_s2
    # DEBUG: Loaded v_c_main_s2 from memory at -16($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -16($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 45: 46: end function main
I46:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-44($fp)]
    # #t10: [memory:-80($fp)]
    # #t11: [memory:-84($fp)]
    # #t12: [memory:-88($fp)]
    # #t13: [memory:-92($fp)]
    # #t14: [memory:-96($fp)]
    # #t15: [memory:-100($fp)]
    # #t16: [memory:-104($fp)]
    # #t17: [memory:-108($fp)]
    # #t18: [memory:-112($fp)]
    # #t19: [memory:-116($fp)]
    # #t2: [memory:-48($fp)]
    # #t20: [memory:-120($fp)]
    # #t3: [memory:-52($fp)]
    # #t4: [memory:-56($fp)]
    # #t5: [memory:-60($fp)]
    # #t6: [memory:-64($fp)]
    # #t7: [memory:-68($fp)]
    # #t8: [memory:-72($fp)]
    # #t9: [memory:-76($fp)]
    # v_a_main_s2: [memory:-8($fp)]
    # v_b_main_s2: [memory:-12($fp)]
    # v_c_main_s2: [memory:-16($fp)]
    # v_f_main_s2: [memory:-20($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
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

