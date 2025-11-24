    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 40

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""f: %f, c: %c, i: %d\n""
    # Added string literal: str_1 = ""pf: %f, pc: %c, pi: %d\n""
    # Found 2 string literals

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
    # Block B5: i6-i39

.data
    # String Literals
str_0: .asciiz "f: %f, c: %c, i: %d\n"
str_1: .asciiz "pf: %f, pc: %c, pi: %d\n"

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


    # TAC 1: 2: return 
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


    # TAC 4: 5: return 
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
    # === B5_i6_i39 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i39 Next-Use:
    #   main -> N/A
    # Instr i38 Next-Use:
    #   #t15 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i37 Next-Use:
    #   #t14 -> N/A
    # Instr i36 Next-Use:
    #   #t13 -> N/A
    # Instr i35 Next-Use:
    #   #t12 -> N/A
    # Instr i34 Next-Use:
    # Instr i33 Next-Use:
    #   #t14 -> N/A
    #   v_pi_main_s2 -> N/A
    # Instr i32 Next-Use:
    #   #t13 -> N/A
    #   v_pc_main_s2 -> N/A
    # Instr i31 Next-Use:
    #   #t12 -> N/A
    #   v_pf_main_s2 -> N/A
    # Instr i30 Next-Use:
    #   #t11 -> N/A
    #   printf_cp1_variadic -> i38
    # Instr i29 Next-Use:
    #   v_I_main_s2 -> N/A
    # Instr i28 Next-Use:
    #   v_c_main_s2 -> N/A
    # Instr i27 Next-Use:
    #   v_f_main_s2 -> N/A
    # Instr i26 Next-Use:
    # Instr i25 Next-Use:
    #   #t10 -> N/A
    #   #t7 -> N/A
    # Instr i24 Next-Use:
    #   #t10 -> N/A
    #   #t9 -> N/A
    # Instr i23 Next-Use:
    #   #t8 -> N/A
    #   #t9 -> N/A
    # Instr i22 Next-Use:
    #   #t8 -> N/A
    #   v_pc_main_s2 -> i32
    # Instr i21 Next-Use:
    #   #t7 -> N/A
    #   v_pc_main_s2 -> i22
    # Instr i20 Next-Use:
    #   #t4 -> N/A
    #   #t6 -> N/A
    # Instr i19 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    # Instr i18 Next-Use:
    #   #t5 -> N/A
    #   v_pi_main_s2 -> i33
    # Instr i17 Next-Use:
    #   #t4 -> N/A
    #   v_pi_main_s2 -> i18
    # Instr i16 Next-Use:
    #   #t1 -> N/A
    #   #t3 -> N/A
    # Instr i15 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i14 Next-Use:
    #   #t2 -> N/A
    #   v_pf_main_s2 -> i31
    # Instr i13 Next-Use:
    #   #t1 -> N/A
    #   v_pf_main_s2 -> i14
    # Instr i12 Next-Use:
    #   v_I_main_s2 -> N/A
    #   v_pi_main_s2 -> N/A
    # Instr i11 Next-Use:
    #   v_I_main_s2 -> N/A
    # Instr i10 Next-Use:
    #   v_c_main_s2 -> N/A
    #   v_pc_main_s2 -> N/A
    # Instr i9 Next-Use:
    #   v_c_main_s2 -> N/A
    # Instr i8 Next-Use:
    #   v_f_main_s2 -> N/A
    #   v_pf_main_s2 -> N/A
    # Instr i7 Next-Use:
    #   v_f_main_s2 -> N/A
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
    # Frame size: 124 bytes
    addiu $sp, $sp, -124
    # Allocate 124 bytes (8 for $ra+$fp, 124 for locals/temps)
    sw $ra, 120($sp)
    # Save return address at 128($sp)
    sw $fp, 116($sp)
    # Save old frame pointer at 124($sp)
    addiu $fp, $sp, 116
    # Set new frame pointer (points to saved old $fp)

    # TAC 7: 8: v_f_main_s2 = 5.500000
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_f_main_s2 = 5.500000
    # DEBUG: Float assignment
    # DEBUG: Loaded float constant 5.500000 into $f0
    # DEBUG: 5.500000 in $f0
    # DEBUG: v_f_main_s2 = 5.500000 in $f0 (dirty, float)
    # Loading float constant: 5.500000
    li.s $f0, 5.500000

    # TAC 8: 9: v_pf_main_s2 = & v_f_main_s2
I9:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_f_main_s2: [$f0]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # v_pf_main_s2 = &v_f_main_s2
    # DEBUG: Spilling v_f_main_s2 from $f0 to memory before taking address
    # DEBUG: v_pf_main_s2 = address of v_f_main_s2 at -4($fp)
    # DEBUG: v_pf_main_s2 (pointer) in $t0 (dirty)
    # DEBUG: Also stored v_pf_main_s2 to memory at -8($fp)
    swc1 $f0, -4($fp)
    addiu $t0, $fp, -4
    sw $t0, -8($fp)

    # TAC 9: 10: v_c_main_s2 = 65
I10:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_c_main_s2 = 65
    # DEBUG: v_c_main_s2 = constant 65 loaded in $t1 (dirty)
    li $t1, 65

    # TAC 10: 11: v_pc_main_s2 = & v_c_main_s2
I11:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_c_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_c_main_s2: [$t1]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # v_pc_main_s2 = &v_c_main_s2
    # DEBUG: Spilling v_c_main_s2 from $t1 to memory before taking address
    # DEBUG: v_pc_main_s2 = address of v_c_main_s2 at -12($fp)
    # DEBUG: v_pc_main_s2 (pointer) in $t1 (dirty)
    # DEBUG: Also stored v_pc_main_s2 to memory at -16($fp)
    sw $t1, -12($fp)
    addiu $t1, $fp, -12
    sw $t1, -16($fp)

    # TAC 11: 12: v_I_main_s2 = 10
I12:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_I_main_s2 = 10
    # DEBUG: v_I_main_s2 = constant 10 loaded in $t2 (dirty)
    li $t2, 10

    # TAC 12: 13: v_pi_main_s2 = & v_I_main_s2
I13:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [v_I_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [$t2]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # v_pi_main_s2 = &v_I_main_s2
    # DEBUG: Spilling v_I_main_s2 from $t2 to memory before taking address
    # DEBUG: v_pi_main_s2 = address of v_I_main_s2 at -20($fp)
    # DEBUG: v_pi_main_s2 (pointer) in $t2 (dirty)
    # DEBUG: Also stored v_pi_main_s2 to memory at -24($fp)
    sw $t2, -20($fp)
    addiu $t2, $fp, -20
    sw $t2, -24($fp)

    # TAC 13: 14: #t1 = v_pf_main_s2
I14:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [v_pi_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t2, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = v_pf_main_s2
    # DEBUG: Float assignment
    # DEBUG: v_pf_main_s2 in $t0
    # DEBUG: #t1 = v_pf_main_s2 in $t0 (dirty, float)

    # TAC 14: 15: #t2 = * v_pf_main_s2
I15:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [#t1, v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [v_pi_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t2, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t2 = *v_pf_main_s2
    # DEBUG: Pointer v_pf_main_s2 already in $t0
    # DEBUG: Dereferenced *v_pf_main_s2 (float*) into $f1 using l.s
    # DEBUG: #t2 = *v_pf_main_s2 in $f1 (dirty)
    l.s $f1, 0($t0)

    # TAC 15: 16: #t3 = #t2 + 2.500000
I16:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $f1: [#t2] (dirty)
    # $t0: [#t1, v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [v_pi_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t2, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add.s 2.500000 (float)
    # DEBUG: #t2 in $f1
    # DEBUG: Loaded float constant 2.500000 into $f2
    # DEBUG: 2.500000 in $f2
    # DEBUG: #t3 = result in $f3 (dirty, float)
    # Loading float constant: 2.500000
    li.s $f2, 2.500000
    add.s $f3, $f1, $f2

    # TAC 16: 17: *(#t1) = #t3
I17:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1, v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [v_pi_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t2, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t1 = #t3
    # DEBUG: Pointer #t1 in $t0
    # DEBUG: Float value #t3 in $f3
    # DEBUG: Stored float #t3 through pointer #t1
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_pf_main_s2 in $t0
    # DEBUG: Invalidating cached value of v_pc_main_s2 in $t1
    # DEBUG: Invalidating cached value of v_pi_main_s2 in $t2
    # DEBUG: Invalidating cached float value of v_f_main_s2 in $f0
    s.s $f3, 0($t0)

    # TAC 17: 18: #t4 = v_pi_main_s2
I18:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = v_pi_main_s2
    # DEBUG: Loaded v_pi_main_s2 from memory at -24($fp)
    # DEBUG: #t4 loaded in $t1 (dirty)
    lw $t1, -24($fp)

    # TAC 18: 19: #t5 = * v_pi_main_s2
I19:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4, v_pi_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t5 = *v_pi_main_s2
    # DEBUG: Pointer v_pi_main_s2 already in $t1
    # DEBUG: Dereferenced *v_pi_main_s2 (int*) into $t3 using lw
    # DEBUG: #t5 = *v_pi_main_s2 in $t3 (dirty)
    lw $t3, 0($t1)

    # TAC 19: 20: #t6 = #t5 + 20
I20:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4, v_pi_main_s2] (dirty)
    # $t3: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t6 = #t5 add 20
    # DEBUG: #t5 in $t3
    # DEBUG: Loaded constant 20 into $t2
    # DEBUG: 20 in $t2
    # DEBUG: #t6 = result in $t4 (dirty)
    li $t2, 20
    add $t4, $t3, $t2

    # TAC 20: 21: *(#t4) = #t6
I21:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4, v_pi_main_s2] (dirty)
    # $t3: [#t5] (dirty)
    # $t4: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [$t3]
    # #t6: [$t4]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t4 = #t6
    # DEBUG: Pointer #t4 in $t1
    # DEBUG: Integer value #t6 in $t4
    # DEBUG: Stored integer #t6 through pointer #t4
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_pi_main_s2 in $t1
    sw $t4, 0($t1)

    # TAC 21: 22: #t7 = v_pc_main_s2
I22:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t3: [#t5] (dirty)
    # $t4: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [$t3]
    # #t6: [$t4]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = v_pc_main_s2
    # DEBUG: Loaded v_pc_main_s2 from memory at -16($fp)
    # DEBUG: #t7 loaded in $t2 (dirty)
    lw $t2, -16($fp)

    # TAC 22: 23: #t8 = * v_pc_main_s2
I23:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7, v_pc_main_s2] (dirty)
    # $t3: [#t5] (dirty)
    # $t4: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [$t3]
    # #t6: [$t4]
    # #t7: [$t2]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t2, memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t8 = *v_pc_main_s2
    # DEBUG: Pointer v_pc_main_s2 already in $t2
    # DEBUG: Spilled #t5 from $t3 to memory
    # DEBUG: Dereferenced *v_pc_main_s2 (char*) into $t3 using lb
    # DEBUG: #t8 = *v_pc_main_s2 in $t3 (dirty)
    sw $t3, -44($fp)
    lb $t3, 0($t2)

    # TAC 23: 24: #t9 = (#t8)int
I24:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7, v_pc_main_s2] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t2, memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Cast: #t9 = (int)#t8
    # DEBUG: char to int cast
    # DEBUG: #t9 = (int)#t8 in $t3

    # TAC 24: 25: #t10 = #t9 + 2
I25:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7, v_pc_main_s2] (dirty)
    # $t3: [#t8, #t9] (dirty)
    # $t4: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # #t9: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t2, memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t10 = #t9 add 2
    # DEBUG: #t9 in $t3
    # DEBUG: Loaded constant 2 into $t5
    # DEBUG: 2 in $t5
    # DEBUG: #t10 = result in $t6 (dirty)
    li $t5, 2
    add $t6, $t3, $t5

    # TAC 25: 26: *(#t7) = #t10
I26:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7, v_pc_main_s2] (dirty)
    # $t3: [#t8, #t9] (dirty)
    # $t4: [#t6] (dirty)
    # $t6: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # #t9: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t2, memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t7 = #t10
    # DEBUG: Pointer #t7 in $t2
    # DEBUG: Integer value #t10 in $t6
    # DEBUG: Stored integer #t10 through pointer #t7
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_pc_main_s2 in $t2
    sw $t6, 0($t2)

    # TAC 26: 27: param "f: %f, c: %c, i: %d\n"
I27:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t8, #t9] (dirty)
    # $t4: [#t6] (dirty)
    # $t6: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # #t9: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "f: %f, c: %c, i: %d\n"
    # DEBUG: Collected parameter #1: "f: %f, c: %c, i: %d\n"

    # TAC 27: 28: param v_f_main_s2
I28:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t8, #t9] (dirty)
    # $t4: [#t6] (dirty)
    # $t6: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # #t9: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param v_f_main_s2
    # DEBUG: Collected parameter #2: v_f_main_s2

    # TAC 28: 29: param v_c_main_s2
I29:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t8, #t9] (dirty)
    # $t4: [#t6] (dirty)
    # $t6: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # #t9: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param v_c_main_s2
    # DEBUG: Collected parameter #3: v_c_main_s2

    # TAC 29: 30: param v_I_main_s2
I30:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t8, #t9] (dirty)
    # $t4: [#t6] (dirty)
    # $t6: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # #t9: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param v_I_main_s2
    # DEBUG: Collected parameter #4: v_I_main_s2

    # TAC 30: 31: #t11 = call printf_cp1_variadic, 4
I31:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>]
    # $f1: [#t2] (dirty)
    # $f2: [<CONST_15_2.500000>]
    # $f3: [#t3] (dirty)
    # $t0: [#t1] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t8, #t9] (dirty)
    # $t4: [#t6] (dirty)
    # $t6: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t10: [$t6]
    # #t2: [$f1]
    # #t3: [$f3]
    # #t4: [$t1]
    # #t5: [memory:#t5]
    # #t6: [$t4]
    # #t7: [$t2]
    # #t8: [$t3]
    # #t9: [$t3]
    # <CONST_15_2.500000>: [$f2]
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 4 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t1 from $t0 to -28($fp)
    # DEBUG: Spilled #t4 from $t1 to -40($fp)
    # DEBUG: Spilled #t7 from $t2 to -52($fp)
    # DEBUG: Spilled #t8 from $t3 to -56($fp)
    # DEBUG: Spilled #t9 from $t3 to -60($fp)
    # DEBUG: Spilled #t6 from $t4 to -48($fp)
    # DEBUG: Spilled #t10 from $t6 to -64($fp)
    # DEBUG: Spilled float #t2 from $f1 to -32($fp)
    # DEBUG: Spilled float #t3 from $f3 to -36($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 3 arguments
    # DEBUG: format_param = '"f: %f, c: %c, i: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_f_main_s2
    sw $t0, -28($fp)
    # DEBUG: Loaded float v_f_main_s2 from -4($fp) into $f4
    sw $t1, -40($fp)
    # Arg 1: v_c_main_s2
    sw $t2, -52($fp)
    # DEBUG: Loaded v_c_main_s2 from memory at -12($fp)
    sw $t3, -56($fp)
    # Arg 2: v_I_main_s2
    sw $t3, -60($fp)
    # DEBUG: Loaded v_I_main_s2 from memory at -20($fp)
    sw $t4, -48($fp)
    sw $t6, -64($fp)
    swc1 $f1, -32($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    swc1 $f3, -36($fp)
    la $a0, str_0
    addiu $sp, $sp, -12
    l.s $f4, -4($fp)
    swc1 $f4, 0($sp)
    lw $t0, -12($fp)
    sw $t0, 4($sp)
    lw $t1, -20($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

    # TAC 31: 32: #t12 = * v_pf_main_s2
I32:
    # --- Register Descriptor ---
    # $f4: [v_f_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t12 = *v_pf_main_s2
    # DEBUG: Loaded pointer v_pf_main_s2 from memory at -8($fp)
    # DEBUG: Dereferenced *v_pf_main_s2 (float*) into $f0 using l.s
    # DEBUG: #t12 = *v_pf_main_s2 in $f0 (dirty)
    lw $t0, -8($fp)
    l.s $f0, 0($t0)

    # TAC 32: 33: #t13 = * v_pc_main_s2
I33:
    # --- Register Descriptor ---
    # $f0: [#t12] (dirty)
    # $f4: [v_f_main_s2]
    # $t0: [v_pf_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t12: [$f0]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t13 = *v_pc_main_s2
    # DEBUG: Loaded pointer v_pc_main_s2 from memory at -16($fp)
    # DEBUG: Dereferenced *v_pc_main_s2 (char*) into $t2 using lb
    # DEBUG: #t13 = *v_pc_main_s2 in $t2 (dirty)
    lw $t1, -16($fp)
    lb $t2, 0($t1)

    # TAC 33: 34: #t14 = * v_pi_main_s2
I34:
    # --- Register Descriptor ---
    # $f0: [#t12] (dirty)
    # $f4: [v_f_main_s2]
    # $t0: [v_pf_main_s2]
    # $t1: [v_pc_main_s2]
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t12: [$f0]
    # #t13: [$t2]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t14 = *v_pi_main_s2
    # DEBUG: Loaded pointer v_pi_main_s2 from memory at -24($fp)
    # DEBUG: Dereferenced *v_pi_main_s2 (int*) into $t4 using lw
    # DEBUG: #t14 = *v_pi_main_s2 in $t4 (dirty)
    lw $t3, -24($fp)
    lw $t4, 0($t3)

    # TAC 34: 35: param "pf: %f, pc: %c, pi: %d\n"
I35:
    # --- Register Descriptor ---
    # $f0: [#t12] (dirty)
    # $f4: [v_f_main_s2]
    # $t0: [v_pf_main_s2]
    # $t1: [v_pc_main_s2]
    # $t2: [#t13] (dirty)
    # $t3: [v_pi_main_s2]
    # $t4: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t12: [$f0]
    # #t13: [$t2]
    # #t14: [$t4]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param "pf: %f, pc: %c, pi: %d\n"
    # DEBUG: Collected parameter #1: "pf: %f, pc: %c, pi: %d\n"

    # TAC 35: 36: param #t12
I36:
    # --- Register Descriptor ---
    # $f0: [#t12] (dirty)
    # $f4: [v_f_main_s2]
    # $t0: [v_pf_main_s2]
    # $t1: [v_pc_main_s2]
    # $t2: [#t13] (dirty)
    # $t3: [v_pi_main_s2]
    # $t4: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t12: [$f0]
    # #t13: [$t2]
    # #t14: [$t4]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t12
    # DEBUG: Collected parameter #2: #t12

    # TAC 36: 37: param #t13
I37:
    # --- Register Descriptor ---
    # $f0: [#t12] (dirty)
    # $f4: [v_f_main_s2]
    # $t0: [v_pf_main_s2]
    # $t1: [v_pc_main_s2]
    # $t2: [#t13] (dirty)
    # $t3: [v_pi_main_s2]
    # $t4: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t12: [$f0]
    # #t13: [$t2]
    # #t14: [$t4]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t13
    # DEBUG: Collected parameter #3: #t13

    # TAC 37: 38: param #t14
I38:
    # --- Register Descriptor ---
    # $f0: [#t12] (dirty)
    # $f4: [v_f_main_s2]
    # $t0: [v_pf_main_s2]
    # $t1: [v_pc_main_s2]
    # $t2: [#t13] (dirty)
    # $t3: [v_pi_main_s2]
    # $t4: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t12: [$f0]
    # #t13: [$t2]
    # #t14: [$t4]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t14
    # DEBUG: Collected parameter #4: #t14

    # TAC 38: 39: #t15 = call printf_cp1_variadic, 4
I39:
    # --- Register Descriptor ---
    # $f0: [#t12] (dirty)
    # $f4: [v_f_main_s2]
    # $t0: [v_pf_main_s2]
    # $t1: [v_pc_main_s2]
    # $t2: [#t13] (dirty)
    # $t3: [v_pi_main_s2]
    # $t4: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t12: [$f0]
    # #t13: [$t2]
    # #t14: [$t4]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 4 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_pf_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled v_pc_main_s2 from $t1 to -16($fp)
    # DEBUG: Spilled #t13 from $t2 to -72($fp)
    # DEBUG: Spilled v_pi_main_s2 from $t3 to -24($fp)
    # DEBUG: Spilled #t14 from $t4 to -76($fp)
    # DEBUG: Spilled float #t12 from $f0 to -68($fp)
    # DEBUG: Spilled float v_f_main_s2 from $f4 to -4($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 3 arguments
    # DEBUG: format_param = '"pf: %f, pc: %c, pi: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t12
    # DEBUG: Loaded float #t12 from -68($fp) into $f1
    # Arg 1: #t13
    sw $t0, -8($fp)
    # DEBUG: Loaded #t13 from memory at -72($fp)
    sw $t1, -16($fp)
    # Arg 2: #t14
    sw $t2, -72($fp)
    # DEBUG: Loaded #t14 from memory at -76($fp)
    sw $t3, -24($fp)
    sw $t4, -76($fp)
    swc1 $f0, -68($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    swc1 $f4, -4($fp)
    la $a0, str_1
    addiu $sp, $sp, -12
    l.s $f1, -68($fp)
    swc1 $f1, 0($sp)
    lw $t0, -72($fp)
    sw $t0, 4($sp)
    lw $t1, -76($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

    # TAC 39: 40: end function main
I40:
    # --- Register Descriptor ---
    # $f1: [#t12]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-28($fp)]
    # #t10: [memory:-64($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t2: [memory:-32($fp)]
    # #t3: [memory:-36($fp)]
    # #t4: [memory:-40($fp)]
    # #t5: [memory:#t5]
    # #t6: [memory:-48($fp)]
    # #t7: [memory:-52($fp)]
    # #t8: [memory:-56($fp)]
    # #t9: [memory:-60($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
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

