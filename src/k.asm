    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 65

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Before foo call:\n""
    # Added string literal: str_1 = ""x: %d, y: %f, z: %c\n""
    # Added string literal: str_2 = ""After foo call:\n""
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
    # Block B5: i6-i20
    # Block B6: i21-i21
    # Block B7: i22-i36
    # Block B8: i37-i37
    # Block B9: i38-i63
    # Block B10: i64-i64

.data
    # String Literals
str_2: .asciiz "After foo call:\n"
str_0: .asciiz "Before foo call:\n"
str_1: .asciiz "x: %d, y: %f, z: %c\n"

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
    # === B5_i6_i20 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i20 Next-Use:
    # Instr i19 Next-Use:
    #   #t10 -> N/A
    #   #t7 -> N/A
    # Instr i18 Next-Use:
    #   #t10 -> N/A
    #   #t9 -> N/A
    # Instr i17 Next-Use:
    #   #t8 -> N/A
    #   #t9 -> N/A
    # Instr i16 Next-Use:
    #   #t8 -> N/A
    #   v_c_foo_i_f_c_s2 -> N/A
    # Instr i15 Next-Use:
    #   #t7 -> N/A
    #   v_c_foo_i_f_c_s2 -> i16
    # Instr i14 Next-Use:
    #   #t4 -> N/A
    #   #t6 -> N/A
    # Instr i13 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    # Instr i12 Next-Use:
    #   #t5 -> N/A
    #   v_b_foo_i_f_c_s2 -> N/A
    # Instr i11 Next-Use:
    #   #t4 -> N/A
    #   v_b_foo_i_f_c_s2 -> i12
    # Instr i10 Next-Use:
    #   #t1 -> N/A
    #   #t3 -> N/A
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i8 Next-Use:
    #   #t2 -> N/A
    #   v_a_foo_i_f_c_s2 -> N/A
    # Instr i7 Next-Use:
    #   #t1 -> N/A
    #   v_a_foo_i_f_c_s2 -> i8
    # Instr i6 Next-Use:
    #   foo_i_f_c -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : foo_i_f_c
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
foo_i_f_c:
    # Function: foo_i_f_c
    # === Function Prologue for foo_i_f_c ===
    # Frame size: 100 bytes
    addiu $sp, $sp, -100
    # Allocate 100 bytes (8 for $ra+$fp, 100 for locals/temps)
    sw $ra, 96($sp)
    # Save return address at 104($sp)
    sw $fp, 92($sp)
    # Save old frame pointer at 100($sp)
    addiu $fp, $sp, 92
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_a_foo_i_f_c_s2) at 8($fp)
    # DEBUG: Pointer/Reference parameter 0 (v_a_foo_i_f_c_s2, ptr_level=0) in $a0
    # DEBUG: Parameter 1 (v_b_foo_i_f_c_s2) at 12($fp)
    # DEBUG: Pointer/Reference parameter 1 (v_b_foo_i_f_c_s2, ptr_level=0) in $a1
    # DEBUG: Parameter 2 (v_c_foo_i_f_c_s2) at 16($fp)
    # DEBUG: Pointer/Reference parameter 2 (v_c_foo_i_f_c_s2, ptr_level=0) in $a2
    # === End Parameter Initialization ===


    # TAC 7: 8: #t1 = v_a_foo_i_f_c_s2
I8:
    # --- Register Descriptor ---
    # $a0: [v_a_foo_i_f_c_s2]
    # $a1: [v_b_foo_i_f_c_s2]
    # $a2: [v_c_foo_i_f_c_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = v_a_foo_i_f_c_s2
    # DEBUG: v_a_foo_i_f_c_s2 already in $a0
    # DEBUG: #t1 now also in $a0 (dirty)
    # DEBUG: Saved #t1 to memory at -4($fp)
    sw $a0, -4($fp)

    # TAC 8: 9: #t2 = * v_a_foo_i_f_c_s2
I9:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [v_b_foo_i_f_c_s2]
    # $a2: [v_c_foo_i_f_c_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = *v_a_foo_i_f_c_s2
    # DEBUG: Pointer v_a_foo_i_f_c_s2 already in $a0
    # DEBUG: Dereferenced *v_a_foo_i_f_c_s2 (int*) into $t0 using lw
    # DEBUG: #t2 = *v_a_foo_i_f_c_s2 in $t0 (dirty)
    lw $t0, 0($a0)

    # TAC 9: 10: #t3 = #t2 + 10
I10:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [v_b_foo_i_f_c_s2]
    # $a2: [v_c_foo_i_f_c_s2]
    # $t0: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add 10
    # DEBUG: #t2 in $t0
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: 10 in $t1
    # DEBUG: #t3 = result in $t2 (dirty)
    li $t1, 10
    add $t2, $t0, $t1

    # TAC 10: 11: *(#t1) = #t3
I11:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [v_b_foo_i_f_c_s2]
    # $a2: [v_c_foo_i_f_c_s2]
    # $t0: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # #t3: [$t2]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t1 = #t3
    # DEBUG: Pointer #t1 in $a0
    # DEBUG: Integer value #t3 in $t2
    # DEBUG: Stored integer #t3 through pointer #t1
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t2, 0($a0)

    # TAC 11: 12: #t4 = v_b_foo_i_f_c_s2
I12:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [v_b_foo_i_f_c_s2]
    # $a2: [v_c_foo_i_f_c_s2]
    # $t0: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # #t3: [$t2]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = v_b_foo_i_f_c_s2
    # DEBUG: Float assignment
    # DEBUG: v_b_foo_i_f_c_s2 in $a1
    # DEBUG: #t4 = v_b_foo_i_f_c_s2 in $a1 (dirty, float)

    # TAC 12: 13: #t5 = * v_b_foo_i_f_c_s2
I13:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [v_c_foo_i_f_c_s2]
    # $t0: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # #t3: [$t2]
    # #t4: [$a1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = *v_b_foo_i_f_c_s2
    # DEBUG: Pointer v_b_foo_i_f_c_s2 already in $a1
    # DEBUG: Dereferenced *v_b_foo_i_f_c_s2 (float*) into $f0 using l.s
    # DEBUG: #t5 = *v_b_foo_i_f_c_s2 in $f0 (dirty)
    l.s $f0, 0($a1)

    # TAC 13: 14: #t6 = #t5 + 1.500000
I14:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [v_c_foo_i_f_c_s2]
    # $f0: [#t5] (dirty)
    # $t0: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = #t5 add.s 1.500000 (float)
    # DEBUG: #t5 in $f0
    # DEBUG: Loaded float constant 1.500000 into $f1
    # DEBUG: 1.500000 in $f1
    # DEBUG: #t6 = result in $f2 (dirty, float)
    # Loading float constant: 1.500000
    li.s $f1, 1.500000
    add.s $f2, $f0, $f1

    # TAC 14: 15: *(#t4) = #t6
I15:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [v_c_foo_i_f_c_s2]
    # $f0: [#t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6] (dirty)
    # $t0: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # #t6: [$f2]
    # <CONST_13_1.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t4 = #t6
    # DEBUG: Pointer #t4 in $a1
    # DEBUG: Float value #t6 in $f2
    # DEBUG: Stored float #t6 through pointer #t4
    # DEBUG: Invalidating all cached values due to pointer store
    s.s $f2, 0($a1)

    # TAC 15: 16: #t7 = v_c_foo_i_f_c_s2
I16:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [v_c_foo_i_f_c_s2]
    # $f0: [#t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6] (dirty)
    # $t0: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # #t6: [$f2]
    # <CONST_13_1.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = v_c_foo_i_f_c_s2
    # DEBUG: v_c_foo_i_f_c_s2 already in $a2
    # DEBUG: #t7 now also in $a2 (dirty)
    # DEBUG: Saved #t7 to memory at -28($fp)
    sw $a2, -28($fp)

    # TAC 16: 17: #t8 = * v_c_foo_i_f_c_s2
I17:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [#t7, v_c_foo_i_f_c_s2] (dirty)
    # $f0: [#t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6] (dirty)
    # $t0: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [$t0]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # #t6: [$f2]
    # #t7: [$a2, memory:-28($fp)]
    # <CONST_13_1.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t8 = *v_c_foo_i_f_c_s2
    # DEBUG: Pointer v_c_foo_i_f_c_s2 already in $a2
    # DEBUG: Spilled #t2 from $t0 to memory
    # DEBUG: Dereferenced *v_c_foo_i_f_c_s2 (char*) into $t0 using lb
    # DEBUG: #t8 = *v_c_foo_i_f_c_s2 in $t0 (dirty)
    sw $t0, -8($fp)
    lb $t0, 0($a2)

    # TAC 17: 18: #t9 = (#t8)int
I18:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [#t7, v_c_foo_i_f_c_s2] (dirty)
    # $f0: [#t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6] (dirty)
    # $t0: [#t8] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [memory:#t2]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # #t6: [$f2]
    # #t7: [$a2, memory:-28($fp)]
    # #t8: [$t0]
    # <CONST_13_1.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Cast: #t9 = (int)#t8
    # DEBUG: char to int cast
    # DEBUG: #t9 = (int)#t8 in $t0

    # TAC 18: 19: #t10 = #t9 + 1
I19:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [#t7, v_c_foo_i_f_c_s2] (dirty)
    # $f0: [#t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6] (dirty)
    # $t0: [#t8, #t9] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t2: [memory:#t2]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # #t6: [$f2]
    # #t7: [$a2, memory:-28($fp)]
    # #t8: [$t0]
    # #t9: [$t0]
    # <CONST_13_1.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t10 = #t9 add 1
    # DEBUG: #t9 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t10 = result in $t3 (dirty)
    li $t1, 1
    add $t3, $t0, $t1

    # TAC 19: 20: *(#t7) = #t10
I20:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [#t7, v_c_foo_i_f_c_s2] (dirty)
    # $f0: [#t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6] (dirty)
    # $t0: [#t8, #t9] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t10: [$t3]
    # #t2: [memory:#t2]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # #t6: [$f2]
    # #t7: [$a2, memory:-28($fp)]
    # #t8: [$t0]
    # #t9: [$t0]
    # <CONST_13_1.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t7 = #t10
    # DEBUG: Pointer #t7 in $a2
    # DEBUG: Integer value #t10 in $t3
    # DEBUG: Stored integer #t10 through pointer #t7
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t3, 0($a2)

    # TAC 20: 21: return 0
I21:
    # --- Register Descriptor ---
    # $a0: [#t1, v_a_foo_i_f_c_s2] (dirty)
    # $a1: [#t4, v_b_foo_i_f_c_s2] (dirty)
    # $a2: [#t7, v_c_foo_i_f_c_s2] (dirty)
    # $f0: [#t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6] (dirty)
    # $t0: [#t8, #t9] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$a0, memory:-4($fp)]
    # #t10: [$t3]
    # #t2: [memory:#t2]
    # #t3: [$t2]
    # #t4: [$a1]
    # #t5: [$f0]
    # #t6: [$f2]
    # #t7: [$a2, memory:-28($fp)]
    # #t8: [$t0]
    # #t9: [$t0]
    # <CONST_13_1.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 8 dirty registers
    # DEBUG: Spilled #t1 from $a0 to memory at -4($fp)
    # DEBUG: Spilled v_a_foo_i_f_c_s2 from $a0 to memory at 8($fp)
    # DEBUG: Spilled #t4 from $a1 to memory at -16($fp)
    # DEBUG: Spilled v_b_foo_i_f_c_s2 from $a1 to memory at 12($fp)
    # DEBUG: Spilled #t7 from $a2 to memory at -28($fp)
    # DEBUG: Spilled v_c_foo_i_f_c_s2 from $a2 to memory at 16($fp)
    # DEBUG: Spilled float #t5 from $f0 to memory at -20($fp)
    # DEBUG: Spilled float #t6 from $f2 to memory at -24($fp)
    # DEBUG: Spilled #t8 from $t0 to memory at -32($fp)
    # DEBUG: Spilled #t9 from $t0 to memory at -36($fp)
    # DEBUG: Spilled #t3 from $t2 to memory at -12($fp)
    sw $a0, -4($fp)
    # DEBUG: Spilled #t10 from $t3 to memory at -40($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    sw $a0, 8($fp)
    # DEBUG: Return constant 0 in $v0
    sw $a1, -16($fp)
    sw $a1, 12($fp)
    sw $a2, -28($fp)
    sw $a2, 16($fp)
    s.s $f0, -20($fp)
    s.s $f2, -24($fp)
    sw $t0, -32($fp)
    sw $t0, -36($fp)
    sw $t2, -12($fp)
    sw $t3, -40($fp)
    li $v0, 0


    # ======================================
    # === B6_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i21 Next-Use:
    #   foo_i_f_c -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 21: 22: end function foo_i_f_c
I22:
    # --- Register Descriptor ---
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for foo_i_f_c ===
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
    # End of function: foo_i_f_c


    # ======================================
    # === B7_i22_i36 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i36 Next-Use:
    # Instr i35 Next-Use:
    #   #t17 -> N/A
    #   #t20 -> N/A
    # Instr i34 Next-Use:
    #   #t19 -> N/A
    #   #t20 -> N/A
    # Instr i33 Next-Use:
    #   #t18 -> N/A
    #   #t19 -> N/A
    # Instr i32 Next-Use:
    #   #t18 -> N/A
    #   v_c_goo_ip1_fp1_cp1_s2 -> N/A
    # Instr i31 Next-Use:
    #   #t17 -> N/A
    #   v_c_goo_ip1_fp1_cp1_s2 -> i32
    # Instr i30 Next-Use:
    #   #t14 -> N/A
    #   #t16 -> N/A
    # Instr i29 Next-Use:
    #   #t15 -> N/A
    #   #t16 -> N/A
    # Instr i28 Next-Use:
    #   #t15 -> N/A
    #   v_b_goo_ip1_fp1_cp1_s2 -> N/A
    # Instr i27 Next-Use:
    #   #t14 -> N/A
    #   v_b_goo_ip1_fp1_cp1_s2 -> i28
    # Instr i26 Next-Use:
    #   #t11 -> N/A
    #   #t13 -> N/A
    # Instr i25 Next-Use:
    #   #t12 -> N/A
    #   #t13 -> N/A
    # Instr i24 Next-Use:
    #   #t12 -> N/A
    #   v_a_goo_ip1_fp1_cp1_s2 -> N/A
    # Instr i23 Next-Use:
    #   #t11 -> N/A
    #   v_a_goo_ip1_fp1_cp1_s2 -> i24
    # Instr i22 Next-Use:
    #   goo_ip1_fp1_cp1 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 22: 23: function begin : goo_ip1_fp1_cp1
I23:
    # --- Register Descriptor ---
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
goo_ip1_fp1_cp1:
    # Function: goo_ip1_fp1_cp1
    # === Function Prologue for goo_ip1_fp1_cp1 ===
    # Frame size: 100 bytes
    addiu $sp, $sp, -100
    # Allocate 100 bytes (8 for $ra+$fp, 100 for locals/temps)
    sw $ra, 96($sp)
    # Save return address at 104($sp)
    sw $fp, 92($sp)
    # Save old frame pointer at 100($sp)
    addiu $fp, $sp, 92
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_a_goo_ip1_fp1_cp1_s2) at 8($fp)
    # DEBUG: Pointer/Reference parameter 0 (v_a_goo_ip1_fp1_cp1_s2, ptr_level=1) in $a0
    # DEBUG: Parameter 1 (v_b_goo_ip1_fp1_cp1_s2) at 12($fp)
    # DEBUG: Pointer/Reference parameter 1 (v_b_goo_ip1_fp1_cp1_s2, ptr_level=1) in $a1
    # DEBUG: Parameter 2 (v_c_goo_ip1_fp1_cp1_s2) at 16($fp)
    # DEBUG: Pointer/Reference parameter 2 (v_c_goo_ip1_fp1_cp1_s2, ptr_level=1) in $a2
    # === End Parameter Initialization ===


    # TAC 23: 24: #t11 = v_a_goo_ip1_fp1_cp1_s2
I24:
    # --- Register Descriptor ---
    # $a0: [v_a_goo_ip1_fp1_cp1_s2]
    # $a1: [v_b_goo_ip1_fp1_cp1_s2]
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t11 = v_a_goo_ip1_fp1_cp1_s2
    # DEBUG: v_a_goo_ip1_fp1_cp1_s2 already in $a0
    # DEBUG: #t11 now also in $a0 (dirty)
    # DEBUG: Saved #t11 to memory at -4($fp)
    sw $a0, -4($fp)

    # TAC 24: 25: #t12 = * v_a_goo_ip1_fp1_cp1_s2
I25:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [v_b_goo_ip1_fp1_cp1_s2]
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t12 = *v_a_goo_ip1_fp1_cp1_s2
    # DEBUG: Pointer v_a_goo_ip1_fp1_cp1_s2 already in $a0
    # DEBUG: Dereferenced *v_a_goo_ip1_fp1_cp1_s2 (int*) into $t0 using lw
    # DEBUG: #t12 = *v_a_goo_ip1_fp1_cp1_s2 in $t0 (dirty)
    lw $t0, 0($a0)

    # TAC 25: 26: #t13 = #t12 + 20
I26:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [v_b_goo_ip1_fp1_cp1_s2]
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # $t0: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t13 = #t12 add 20
    # DEBUG: #t12 in $t0
    # DEBUG: Loaded constant 20 into $t1
    # DEBUG: 20 in $t1
    # DEBUG: #t13 = result in $t2 (dirty)
    li $t1, 20
    add $t2, $t0, $t1

    # TAC 26: 27: *(#t11) = #t13
I27:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [v_b_goo_ip1_fp1_cp1_s2]
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # $t0: [#t12] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t13: [$t2]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t11 = #t13
    # DEBUG: Pointer #t11 in $a0
    # DEBUG: Integer value #t13 in $t2
    # DEBUG: Stored integer #t13 through pointer #t11
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t2, 0($a0)

    # TAC 27: 28: #t14 = v_b_goo_ip1_fp1_cp1_s2
I28:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [v_b_goo_ip1_fp1_cp1_s2]
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # $t0: [#t12] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t13: [$t2]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t14 = v_b_goo_ip1_fp1_cp1_s2
    # DEBUG: Float assignment
    # DEBUG: v_b_goo_ip1_fp1_cp1_s2 in $a1
    # DEBUG: #t14 = v_b_goo_ip1_fp1_cp1_s2 in $a1 (dirty, float)

    # TAC 28: 29: #t15 = * v_b_goo_ip1_fp1_cp1_s2
I29:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t5]
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # $t0: [#t12] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t15 = *v_b_goo_ip1_fp1_cp1_s2
    # DEBUG: Pointer v_b_goo_ip1_fp1_cp1_s2 already in $a1
    # DEBUG: Dereferenced *v_b_goo_ip1_fp1_cp1_s2 (float*) into $f0 using l.s
    # DEBUG: #t15 = *v_b_goo_ip1_fp1_cp1_s2 in $f0 (dirty)
    l.s $f0, 0($a1)

    # TAC 29: 30: #t16 = #t15 + 2.500000
I30:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_13_1.500000>]
    # $f2: [#t6]
    # $t0: [#t12] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t16 = #t15 add.s 2.500000 (float)
    # DEBUG: #t15 in $f0
    # DEBUG: Loaded float constant 2.500000 into $f1
    # DEBUG: 2.500000 in $f1
    # DEBUG: #t16 = result in $f2 (dirty, float)
    # Loading float constant: 2.500000
    li.s $f1, 2.500000
    add.s $f2, $f0, $f1

    # TAC 30: 31: *(#t14) = #t16
I31:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6] (dirty)
    # $t0: [#t12] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t16: [$f2]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_29_2.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t14 = #t16
    # DEBUG: Pointer #t14 in $a1
    # DEBUG: Float value #t16 in $f2
    # DEBUG: Stored float #t16 through pointer #t14
    # DEBUG: Invalidating all cached values due to pointer store
    s.s $f2, 0($a1)

    # TAC 31: 32: #t17 = v_c_goo_ip1_fp1_cp1_s2
I32:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [v_c_goo_ip1_fp1_cp1_s2]
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6] (dirty)
    # $t0: [#t12] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t16: [$f2]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_29_2.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t17 = v_c_goo_ip1_fp1_cp1_s2
    # DEBUG: v_c_goo_ip1_fp1_cp1_s2 already in $a2
    # DEBUG: #t17 now also in $a2 (dirty)
    # DEBUG: Saved #t17 to memory at -28($fp)
    sw $a2, -28($fp)

    # TAC 32: 33: #t18 = * v_c_goo_ip1_fp1_cp1_s2
I33:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [#t17, v_c_goo_ip1_fp1_cp1_s2] (dirty)
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6] (dirty)
    # $t0: [#t12] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [$t0]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t16: [$f2]
    # #t17: [$a2, memory:-28($fp)]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_29_2.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t18 = *v_c_goo_ip1_fp1_cp1_s2
    # DEBUG: Pointer v_c_goo_ip1_fp1_cp1_s2 already in $a2
    # DEBUG: Spilled #t12 from $t0 to memory
    # DEBUG: Dereferenced *v_c_goo_ip1_fp1_cp1_s2 (char*) into $t0 using lb
    # DEBUG: #t18 = *v_c_goo_ip1_fp1_cp1_s2 in $t0 (dirty)
    sw $t0, -8($fp)
    lb $t0, 0($a2)

    # TAC 33: 34: #t19 = (#t18)int
I34:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [#t17, v_c_goo_ip1_fp1_cp1_s2] (dirty)
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6] (dirty)
    # $t0: [#t18] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t16: [$f2]
    # #t17: [$a2, memory:-28($fp)]
    # #t18: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_29_2.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Cast: #t19 = (int)#t18
    # DEBUG: char to int cast
    # DEBUG: #t19 = (int)#t18 in $t0

    # TAC 34: 35: #t20 = #t19 + 2
I35:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [#t17, v_c_goo_ip1_fp1_cp1_s2] (dirty)
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6] (dirty)
    # $t0: [#t18, #t19] (dirty)
    # $t2: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t16: [$f2]
    # #t17: [$a2, memory:-28($fp)]
    # #t18: [$t0]
    # #t19: [$t0]
    # #t2: [memory:#t2]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_29_2.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t20 = #t19 add 2
    # DEBUG: #t19 in $t0
    # DEBUG: Loaded constant 2 into $t1
    # DEBUG: 2 in $t1
    # DEBUG: #t20 = result in $t3 (dirty)
    li $t1, 2
    add $t3, $t0, $t1

    # TAC 35: 36: *(#t17) = #t20
I36:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [#t17, v_c_goo_ip1_fp1_cp1_s2] (dirty)
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6] (dirty)
    # $t0: [#t18, #t19] (dirty)
    # $t2: [#t13] (dirty)
    # $t3: [#t20] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t16: [$f2]
    # #t17: [$a2, memory:-28($fp)]
    # #t18: [$t0]
    # #t19: [$t0]
    # #t2: [memory:#t2]
    # #t20: [$t3]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_29_2.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t17 = #t20
    # DEBUG: Pointer #t17 in $a2
    # DEBUG: Integer value #t20 in $t3
    # DEBUG: Stored integer #t20 through pointer #t17
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t3, 0($a2)

    # TAC 36: 37: return 0
I37:
    # --- Register Descriptor ---
    # $a0: [#t11, v_a_goo_ip1_fp1_cp1_s2] (dirty)
    # $a1: [#t14, v_b_goo_ip1_fp1_cp1_s2] (dirty)
    # $a2: [#t17, v_c_goo_ip1_fp1_cp1_s2] (dirty)
    # $f0: [#t15, #t5] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6] (dirty)
    # $t0: [#t18, #t19] (dirty)
    # $t2: [#t13] (dirty)
    # $t3: [#t20] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [$a0, memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [$t2]
    # #t14: [$a1]
    # #t15: [$f0]
    # #t16: [$f2]
    # #t17: [$a2, memory:-28($fp)]
    # #t18: [$t0]
    # #t19: [$t0]
    # #t2: [memory:#t2]
    # #t20: [$t3]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_29_2.500000>: [$f1]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [$a0, memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [$a1, memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [$a2, memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 8 dirty registers
    # DEBUG: Spilled #t11 from $a0 to memory at -4($fp)
    # DEBUG: Spilled v_a_goo_ip1_fp1_cp1_s2 from $a0 to memory at 8($fp)
    # DEBUG: Spilled #t14 from $a1 to memory at -16($fp)
    # DEBUG: Spilled v_b_goo_ip1_fp1_cp1_s2 from $a1 to memory at 12($fp)
    # DEBUG: Spilled #t17 from $a2 to memory at -28($fp)
    # DEBUG: Spilled v_c_goo_ip1_fp1_cp1_s2 from $a2 to memory at 16($fp)
    # DEBUG: Spilled float #t15 from $f0 to memory at -20($fp)
    # DEBUG: Spilled float #t5 from $f0 to memory at -20($fp)
    # DEBUG: Spilled float #t16 from $f2 to memory at -24($fp)
    # DEBUG: Spilled float #t6 from $f2 to memory at -24($fp)
    # DEBUG: Spilled #t18 from $t0 to memory at -32($fp)
    sw $a0, -4($fp)
    # DEBUG: Spilled #t19 from $t0 to memory at -36($fp)
    sw $a0, 8($fp)
    # DEBUG: Spilled #t13 from $t2 to memory at -12($fp)
    sw $a1, -16($fp)
    # DEBUG: Spilled #t20 from $t3 to memory at -40($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    sw $a1, 12($fp)
    # DEBUG: Return constant 0 in $v0
    sw $a2, -28($fp)
    sw $a2, 16($fp)
    s.s $f0, -20($fp)
    s.s $f0, -20($fp)
    s.s $f2, -24($fp)
    s.s $f2, -24($fp)
    sw $t0, -32($fp)
    sw $t0, -36($fp)
    sw $t2, -12($fp)
    sw $t3, -40($fp)
    li $v0, 0


    # ======================================
    # === B8_i37_i37 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i37 Next-Use:
    #   goo_ip1_fp1_cp1 -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 37: 38: end function goo_ip1_fp1_cp1
I38:
    # --- Register Descriptor ---
    # $f0: [#t15, #t5]
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for goo_ip1_fp1_cp1 ===
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
    # End of function: goo_ip1_fp1_cp1


    # ======================================
    # === B9_i38_i63 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i63 Next-Use:
    # Instr i62 Next-Use:
    #   #t28 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i61 Next-Use:
    #   v_z_main_s2 -> N/A
    # Instr i60 Next-Use:
    #   v_y_main_s2 -> N/A
    # Instr i59 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i58 Next-Use:
    # Instr i57 Next-Use:
    #   #t27 -> N/A
    #   printf_cp1_variadic -> i62
    # Instr i56 Next-Use:
    # Instr i55 Next-Use:
    #   #t26 -> N/A
    #   goo_ip1_fp1_cp1 -> N/A
    # Instr i54 Next-Use:
    #   #t25 -> N/A
    # Instr i53 Next-Use:
    #   #t24 -> N/A
    # Instr i52 Next-Use:
    #   #t23 -> N/A
    # Instr i51 Next-Use:
    #   #t25 -> N/A
    #   v_z_main_s2 -> N/A
    # Instr i50 Next-Use:
    #   #t24 -> N/A
    #   v_y_main_s2 -> N/A
    # Instr i49 Next-Use:
    #   #t23 -> N/A
    #   v_x_main_s2 -> N/A
    # Instr i48 Next-Use:
    #   #t22 -> N/A
    #   printf_cp1_variadic -> i57
    # Instr i47 Next-Use:
    #   v_z_main_s2 -> N/A
    # Instr i46 Next-Use:
    #   v_y_main_s2 -> N/A
    # Instr i45 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i44 Next-Use:
    # Instr i43 Next-Use:
    #   #t21 -> N/A
    #   printf_cp1_variadic -> i48
    # Instr i42 Next-Use:
    # Instr i41 Next-Use:
    #   v_z_main_s2 -> N/A
    # Instr i40 Next-Use:
    #   v_y_main_s2 -> N/A
    # Instr i39 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i38 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 38: 39: function begin : main
I39:
    # --- Register Descriptor ---
    # $f0: [#t15, #t5]
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 76 bytes
    addiu $sp, $sp, -76
    # Allocate 76 bytes (8 for $ra+$fp, 76 for locals/temps)
    sw $ra, 72($sp)
    # Save return address at 80($sp)
    sw $fp, 68($sp)
    # Save old frame pointer at 76($sp)
    addiu $fp, $sp, 68
    # Set new frame pointer (points to saved old $fp)

    # TAC 39: 40: v_x_main_s2 = 5
I40:
    # --- Register Descriptor ---
    # $f0: [#t15, #t5]
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 5
    # DEBUG: v_x_main_s2 = constant 5 loaded in $t0 (dirty)
    li $t0, 5

    # TAC 40: 41: v_y_main_s2 = 2.500000
I41:
    # --- Register Descriptor ---
    # $f0: [#t15, #t5]
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6]
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = 2.500000
    # DEBUG: Float assignment
    # DEBUG: Loaded float constant 2.500000 into $f0
    # DEBUG: 2.500000 in $f0
    # DEBUG: v_y_main_s2 = 2.500000 in $f0 (dirty, float)
    # Loading float constant: 2.500000
    li.s $f0, 2.500000

    # TAC 41: 42: v_z_main_s2 = 97
I42:
    # --- Register Descriptor ---
    # $f0: [<CONST_40_2.500000>, v_y_main_s2] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6]
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$f0]
    # --- End Storage Descriptor ---
    # Assignment: v_z_main_s2 = 97
    # DEBUG: v_z_main_s2 = constant 97 loaded in $t1 (dirty)
    li $t1, 97

    # TAC 42: 43: param "Before foo call:\n"
I43:
    # --- Register Descriptor ---
    # $f0: [<CONST_40_2.500000>, v_y_main_s2] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6]
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$f0]
    # v_z_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # param "Before foo call:\n"
    # DEBUG: Collected parameter #1: "Before foo call:\n"

    # TAC 43: 44: #t21 = call printf_cp1_variadic, 1
I44:
    # --- Register Descriptor ---
    # $f0: [<CONST_40_2.500000>, v_y_main_s2] (dirty)
    # $f1: [<CONST_29_2.500000>]
    # $f2: [#t16, #t6]
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # v_y_main_s2: [$f0]
    # v_z_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_x_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled v_z_main_s2 from $t1 to -12($fp)
    # DEBUG: Spilled float v_y_main_s2 from $f0 to -8($fp)
    # DEBUG: Spilled float #t16 from $f2 to -24($fp)
    # DEBUG: Spilled float #t6 from $f2 to -24($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 0 arguments
    # DEBUG: format_param = '"Before foo call:\n"', first char = 34
    # Load format string literal address
    # === End printf ===
    sw $t0, -4($fp)
    sw $t1, -12($fp)
    swc1 $f0, -8($fp)
    swc1 $f2, -24($fp)
    swc1 $f2, -24($fp)
    la $a0, str_0
    jal __lib_printf

    # TAC 44: 45: param "x: %d, y: %f, z: %c\n"
I45:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param "x: %d, y: %f, z: %c\n"
    # DEBUG: Collected parameter #1: "x: %d, y: %f, z: %c\n"

    # TAC 45: 46: param v_x_main_s2
I46:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #2: v_x_main_s2

    # TAC 46: 47: param v_y_main_s2
I47:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param v_y_main_s2
    # DEBUG: Collected parameter #3: v_y_main_s2

    # TAC 47: 48: param v_z_main_s2
I48:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param v_z_main_s2
    # DEBUG: Collected parameter #4: v_z_main_s2

    # TAC 48: 49: #t22 = call printf_cp1_variadic, 4
I49:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 4 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 3 arguments
    # DEBUG: format_param = '"x: %d, y: %f, z: %c\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_x_main_s2
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # Arg 1: v_y_main_s2
    # DEBUG: Loaded float v_y_main_s2 from -8($fp) into $f1
    # Arg 2: v_z_main_s2
    # DEBUG: Loaded v_z_main_s2 from memory at -12($fp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_1
    addiu $sp, $sp, -12
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    l.s $f1, -8($fp)
    swc1 $f1, 4($sp)
    lw $t1, -12($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

    # TAC 49: 50: #t23 = & v_x_main_s2
I50:
    # --- Register Descriptor ---
    # $f1: [v_y_main_s2]
    # $t0: [v_x_main_s2]
    # $t1: [v_z_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t1, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # #t23 = &v_x_main_s2
    # DEBUG: #t23 = address of v_x_main_s2 at -4($fp)
    # DEBUG: #t23 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t23 to memory at -16($fp)
    addiu $t0, $fp, -4
    sw $t0, -16($fp)

    # TAC 50: 51: #t24 = & v_y_main_s2
I51:
    # --- Register Descriptor ---
    # $f1: [v_y_main_s2]
    # $t0: [#t23] (dirty)
    # $t1: [v_z_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [$t0, memory:-16($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t1, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # #t24 = &v_y_main_s2
    # DEBUG: #t24 = address of v_y_main_s2 at -8($fp)
    # DEBUG: #t24 (pointer) in $t1 (dirty)
    # DEBUG: Also stored #t24 to memory at -20($fp)
    addiu $t1, $fp, -8
    sw $t1, -20($fp)

    # TAC 51: 52: #t25 = & v_z_main_s2
I52:
    # --- Register Descriptor ---
    # $f1: [v_y_main_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t24] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [$t0, memory:-16($fp)]
    # #t24: [$t1, memory:-20($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # #t25 = &v_z_main_s2
    # DEBUG: #t25 = address of v_z_main_s2 at -12($fp)
    # DEBUG: #t25 (pointer) in $t2 (dirty)
    # DEBUG: Also stored #t25 to memory at -24($fp)
    addiu $t2, $fp, -12
    sw $t2, -24($fp)

    # TAC 52: 53: param #t23
I53:
    # --- Register Descriptor ---
    # $f1: [v_y_main_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t24] (dirty)
    # $t2: [#t25] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [$t0, memory:-16($fp)]
    # #t24: [$t1, memory:-20($fp)]
    # #t25: [$t2, memory:-24($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param #t23
    # DEBUG: Collected parameter #1: #t23

    # TAC 53: 54: param #t24
I54:
    # --- Register Descriptor ---
    # $f1: [v_y_main_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t24] (dirty)
    # $t2: [#t25] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [$t0, memory:-16($fp)]
    # #t24: [$t1, memory:-20($fp)]
    # #t25: [$t2, memory:-24($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param #t24
    # DEBUG: Collected parameter #2: #t24

    # TAC 54: 55: param #t25
I55:
    # --- Register Descriptor ---
    # $f1: [v_y_main_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t24] (dirty)
    # $t2: [#t25] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [$t0, memory:-16($fp)]
    # #t24: [$t1, memory:-20($fp)]
    # #t25: [$t2, memory:-24($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param #t25
    # DEBUG: Collected parameter #3: #t25

    # TAC 55: 56: #t26 = call goo_ip1_fp1_cp1, 3
I56:
    # --- Register Descriptor ---
    # $f1: [v_y_main_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t24] (dirty)
    # $t2: [#t25] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [$t0, memory:-16($fp)]
    # #t24: [$t1, memory:-20($fp)]
    # #t25: [$t2, memory:-24($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Call goo_ip1_fp1_cp1 with 3 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t23 from $t0 to -16($fp)
    # DEBUG: Spilled #t24 from $t1 to -20($fp)
    # DEBUG: Spilled #t25 from $t2 to -24($fp)
    # DEBUG: Spilled float v_y_main_s2 from $f1 to -8($fp)
    # === End Caller-Save ===
    # DEBUG: Allocate 12 bytes for 3 parameters + $ra/$fp
    # DEBUG: Loaded #t23 from memory at -16($fp)
    # DEBUG: Param 0 (#t23) in $t0
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Loaded #t24 from memory at -20($fp)
    # DEBUG: Param 1 (#t24) in $t1
    # DEBUG: Stored param 1 on stack at 4($sp)
    # DEBUG: Copied param 1 to $a1
    sw $t0, -16($fp)
    # DEBUG: Loaded #t25 from memory at -24($fp)
    # DEBUG: Param 2 (#t25) in $t2
    sw $t1, -20($fp)
    # DEBUG: Stored param 2 on stack at 8($sp)
    sw $t2, -24($fp)
    # DEBUG: Copied param 2 to $a2
    swc1 $f1, -8($fp)
    # DEBUG: Called goo_ip1_fp1_cp1
    addiu $sp, $sp, -12
    # DEBUG: Deallocate 12 bytes of parameter space
    lw $t0, -16($fp)
    # DEBUG: Return value from $v0 to $t3
    # DEBUG: #t26 = return value in $t3 (dirty)
    sw $t0, 0($sp)
    move $a0, $t0
    lw $t1, -20($fp)
    sw $t1, 4($sp)
    move $a1, $t1
    lw $t2, -24($fp)
    sw $t2, 8($sp)
    move $a2, $t2
    jal goo_ip1_fp1_cp1
    addiu $sp, $sp, 12
    move $t3, $v0

    # TAC 56: 57: param "After foo call:\n"
I57:
    # --- Register Descriptor ---
    # $t3: [#t26] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [$t3]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param "After foo call:\n"
    # DEBUG: Collected parameter #1: "After foo call:\n"

    # TAC 57: 58: #t27 = call printf_cp1_variadic, 1
I58:
    # --- Register Descriptor ---
    # $t3: [#t26] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [$t3]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t26 from $t3 to -28($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 0 arguments
    # DEBUG: format_param = '"After foo call:\n"', first char = 34
    # Load format string literal address
    # === End printf ===
    sw $t3, -28($fp)
    la $a0, str_2
    jal __lib_printf

    # TAC 58: 59: param "x: %d, y: %f, z: %c\n"
I59:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [memory:-28($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param "x: %d, y: %f, z: %c\n"
    # DEBUG: Collected parameter #1: "x: %d, y: %f, z: %c\n"

    # TAC 59: 60: param v_x_main_s2
I60:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [memory:-28($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #2: v_x_main_s2

    # TAC 60: 61: param v_y_main_s2
I61:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [memory:-28($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param v_y_main_s2
    # DEBUG: Collected parameter #3: v_y_main_s2

    # TAC 61: 62: param v_z_main_s2
I62:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [memory:-28($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # param v_z_main_s2
    # DEBUG: Collected parameter #4: v_z_main_s2

    # TAC 62: 63: #t28 = call printf_cp1_variadic, 4
I63:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [memory:-28($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 4 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 3 arguments
    # DEBUG: format_param = '"x: %d, y: %f, z: %c\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_x_main_s2
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # Arg 1: v_y_main_s2
    # DEBUG: Loaded float v_y_main_s2 from -8($fp) into $f2
    # Arg 2: v_z_main_s2
    # DEBUG: Loaded v_z_main_s2 from memory at -12($fp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_1
    addiu $sp, $sp, -12
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    l.s $f2, -8($fp)
    swc1 $f2, 4($sp)
    lw $t1, -12($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

    # TAC 63: 64: return 0
I64:
    # --- Register Descriptor ---
    # $f2: [v_y_main_s2]
    # $t0: [v_x_main_s2]
    # $t1: [v_z_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [memory:-28($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # <CONST_40_2.500000>: [$f0]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # v_y_main_s2: [$f2]
    # v_z_main_s2: [$t1, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B10_i64_i64 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i64 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 64: 65: end function main
I65:
    # --- Register Descriptor ---
    # $f2: [v_y_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-40($fp)]
    # #t11: [memory:-4($fp)]
    # #t12: [memory:#t12]
    # #t13: [memory:-12($fp)]
    # #t14: [memory:-16($fp)]
    # #t15: [memory:-20($fp)]
    # #t16: [memory:-24($fp)]
    # #t17: [memory:-28($fp)]
    # #t18: [memory:-32($fp)]
    # #t19: [memory:-36($fp)]
    # #t2: [memory:#t2]
    # #t20: [memory:-40($fp)]
    # #t23: [memory:-16($fp)]
    # #t24: [memory:-20($fp)]
    # #t25: [memory:-24($fp)]
    # #t26: [memory:-28($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t6: [memory:-24($fp)]
    # #t7: [memory:-28($fp)]
    # #t8: [memory:-32($fp)]
    # #t9: [memory:-36($fp)]
    # v_a_foo_i_f_c_s2: [memory:8($fp)]
    # v_a_goo_ip1_fp1_cp1_s2: [memory:8($fp)]
    # v_b_foo_i_f_c_s2: [memory:12($fp)]
    # v_b_goo_ip1_fp1_cp1_s2: [memory:12($fp)]
    # v_c_foo_i_f_c_s2: [memory:16($fp)]
    # v_c_goo_ip1_fp1_cp1_s2: [memory:16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_z_main_s2: [memory:-12($fp)]
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

