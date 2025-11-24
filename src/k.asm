    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

<<<<<<< HEAD
    # Total TAC instructions: 35
=======
    # Total TAC instructions: 38
>>>>>>> 6b761ed (Dynamic memory allocation done)

    # ======================================
    #   Collecting Data Section Items
    # ======================================
<<<<<<< HEAD
    # Added string literal: str_0 = ""f: %f, c: %c, i: %d\n""
    # Added string literal: str_1 = ""pf: %f, pc: %c, pi: %d\n""
    # Found 2 string literals
=======
    # Added string literal: str_0 = ""a[0] = %c, a[1] = %c\n""
    # Found 1 string literals
>>>>>>> 6b761ed (Dynamic memory allocation done)

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
<<<<<<< HEAD
    # Block B2: i2-i2
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i34

.data
    # String Literals
str_0: .asciiz "f: %f, c: %c, i: %d\n"
str_1: .asciiz "pf: %f, pc: %c, pi: %d\n"
=======
    # Block B2: i2-i3
    # Block B3: i4-i5
    # Block B4: i6-i7
    # Block B5: i8-i36
    # Block B6: i37-i37

.data
    # String Literals
str_0: .asciiz "a[0] = %c, a[1] = %c\n"
>>>>>>> 6b761ed (Dynamic memory allocation done)

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
    #   printf_cp1_variadic -> N/A
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


    # TAC 1: 2: end function printf_cp1_variadic
I2:
    # --- Register Descriptor ---
    # $a0: [v_fmt_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
<<<<<<< HEAD
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
=======
>>>>>>> 6b761ed (Dynamic memory allocation done)
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
    # === B2_i2_i3 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i3 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # Instr i2 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: function begin : scanf_cp1_variadic
I3:
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


    # TAC 3: 4: end function scanf_cp1_variadic
I4:
    # --- Register Descriptor ---
    # $a0: [v_fmt_scanf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
<<<<<<< HEAD
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
=======
>>>>>>> 6b761ed (Dynamic memory allocation done)
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
<<<<<<< HEAD
    # === B5_i6_i34 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i34 Next-Use:
    #   main -> N/A
    # Instr i33 Next-Use:
    #   #t11 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i32 Next-Use:
    #   #t10 -> N/A
    # Instr i31 Next-Use:
    #   #t9 -> N/A
    # Instr i30 Next-Use:
    #   #t8 -> N/A
    # Instr i29 Next-Use:
    # Instr i28 Next-Use:
    #   #t10 -> N/A
    #   v_pi_main_s2 -> N/A
    # Instr i27 Next-Use:
    #   #t9 -> N/A
    #   v_pc_main_s2 -> N/A
    # Instr i26 Next-Use:
    #   #t8 -> N/A
    #   v_pf_main_s2 -> N/A
    # Instr i25 Next-Use:
    #   #t5 -> N/A
    #   #t7 -> N/A
    # Instr i24 Next-Use:
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i23 Next-Use:
    #   #t6 -> N/A
    #   v_pi_main_s2 -> i28
    # Instr i22 Next-Use:
    #   #t5 -> N/A
    #   v_pi_main_s2 -> i23
    # Instr i21 Next-Use:
    #   #t2 -> N/A
    #   #t4 -> N/A
    # Instr i20 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    # Instr i19 Next-Use:
    #   #t3 -> N/A
    #   v_pf_main_s2 -> i26
    # Instr i18 Next-Use:
    #   #t2 -> N/A
    #   v_pf_main_s2 -> i19
    # Instr i17 Next-Use:
    #   #t1 -> N/A
    #   printf_cp1_variadic -> i33
    # Instr i16 Next-Use:
    #   v_I_main_s2 -> N/A
    # Instr i15 Next-Use:
    #   v_c_main_s2 -> N/A
    # Instr i14 Next-Use:
    #   v_f_main_s2 -> N/A
    # Instr i13 Next-Use:
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
=======
    # === B3_i4_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i5 Next-Use:
    #   malloc_i -> N/A
    # Instr i4 Next-Use:
    #   malloc_i -> N/A
    # === End of Next-Use Computation for Block B3 ===
>>>>>>> 6b761ed (Dynamic memory allocation done)

    # Next-use information computed
    # TAC 4: 5: function begin : malloc_i
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
malloc_i:
    # Function: malloc_i
    # === Function Prologue for malloc_i ===
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
    # DEBUG: Parameter 0 (v_size_malloc_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_size_malloc_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 5: 6: end function malloc_i
I6:
    # --- Register Descriptor ---
    # $a0: [v_size_malloc_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for malloc_i ===
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
    # End of function: malloc_i


    # ======================================
    # === B4_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i7 Next-Use:
    #   free_vp1 -> N/A
    # Instr i6 Next-Use:
    #   free_vp1 -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 6: 7: function begin : free_vp1
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
<<<<<<< HEAD
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 108 bytes
    addiu $sp, $sp, -108
    # Allocate 108 bytes (8 for $ra+$fp, 108 for locals/temps)
    sw $ra, 104($sp)
    # Save return address at 112($sp)
    sw $fp, 100($sp)
    # Save old frame pointer at 108($sp)
    addiu $fp, $sp, 100
=======
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
free_vp1:
    # Function: free_vp1
    # === Function Prologue for free_vp1 ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
>>>>>>> 6b761ed (Dynamic memory allocation done)
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_ptr_free_vp1_s2) at 8($fp)
    # DEBUG: Pointer/Reference parameter 0 (v_ptr_free_vp1_s2, ptr_level=1) in $a0
    # === End Parameter Initialization ===

<<<<<<< HEAD
    # TAC 7: 8: v_f_main_s2 = 5.500000
=======

    # TAC 7: 8: end function free_vp1
>>>>>>> 6b761ed (Dynamic memory allocation done)
I8:
    # --- Register Descriptor ---
    # $a0: [v_ptr_free_vp1_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
<<<<<<< HEAD
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_f_main_s2 = 5.500000
    # DEBUG: Float assignment
    # DEBUG: Loaded float constant 5.500000 into $f0
    # DEBUG: 5.500000 in $f0
    # DEBUG: v_f_main_s2 = 5.500000 in $f0 (dirty, float)
    # DEBUG: Saved float variable v_f_main_s2 to home location -4($fp)
    # Loading float constant: 5.500000
    li.s $f0, 5.500000
    swc1 $f0, -4($fp)

    # TAC 8: 9: v_pf_main_s2 = & v_f_main_s2
=======
    # v_ptr_free_vp1_s2: [$a0, memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for free_vp1 ===
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
    # End of function: free_vp1


    # ======================================
    # === B5_i8_i36 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i36 Next-Use:
    # Instr i35 Next-Use:
    #   #t19 -> N/A
    #   free_vp1 -> N/A
    # Instr i34 Next-Use:
    #   v_a_main_s2 -> N/A
    # Instr i33 Next-Use:
    #   #t18 -> N/A
    #   v_a_main_s2 -> N/A
    # Instr i32 Next-Use:
    #   #t17 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i31 Next-Use:
    #   #t16 -> N/A
    # Instr i30 Next-Use:
    #   #t13 -> N/A
    # Instr i29 Next-Use:
    # Instr i28 Next-Use:
    #   #t15 -> N/A
    #   #t16 -> N/A
    # Instr i27 Next-Use:
    #   #t14 -> N/A
    #   #t15 -> N/A
    #   v_a_main_s2 -> i33
    # Instr i26 Next-Use:
    #   #t14 -> N/A
    # Instr i25 Next-Use:
    #   #t12 -> N/A
    #   #t13 -> N/A
    # Instr i24 Next-Use:
    #   #t11 -> N/A
    #   #t12 -> N/A
    #   v_a_main_s2 -> i27
    # Instr i23 Next-Use:
    #   #t11 -> N/A
    # Instr i22 Next-Use:
    #   #t10 -> N/A
    # Instr i21 Next-Use:
    #   #t10 -> N/A
    #   #t9 -> N/A
    # Instr i20 Next-Use:
    #   #t8 -> N/A
    #   #t9 -> N/A
    #   v_a_main_s2 -> i24
    # Instr i19 Next-Use:
    #   #t8 -> N/A
    # Instr i18 Next-Use:
    #   #t7 -> N/A
    # Instr i17 Next-Use:
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i16 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    #   v_a_main_s2 -> i20
    # Instr i15 Next-Use:
    #   #t5 -> N/A
    # Instr i14 Next-Use:
    #   #t4 -> N/A
    #   v_a_main_s2 -> N/A
    # Instr i13 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    # Instr i12 Next-Use:
    #   #t3 -> N/A
    #   malloc_i -> N/A
    # Instr i11 Next-Use:
    #   #t2 -> N/A
    # Instr i10 Next-Use:
    #   #t1 -> N/A
    #   #t2 -> N/A
    # Instr i9 Next-Use:
    #   #t1 -> N/A
    # Instr i8 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 8: 9: function begin : main
>>>>>>> 6b761ed (Dynamic memory allocation done)
I9:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
<<<<<<< HEAD
    # <CONST_7_5.500000>: [$f0]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # v_pf_main_s2 = &v_f_main_s2
    # DEBUG: v_pf_main_s2 = address of v_f_main_s2 at -4($fp)
    # DEBUG: v_pf_main_s2 (pointer) in $t0 (dirty)
    # DEBUG: Also stored v_pf_main_s2 to memory at -8($fp)
    addiu $t0, $fp, -4
    sw $t0, -8($fp)

    # TAC 9: 10: v_c_main_s2 = 65
=======
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
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

    # TAC 9: 10: #t1 = 4
>>>>>>> 6b761ed (Dynamic memory allocation done)
I10:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
<<<<<<< HEAD
    # <CONST_7_5.500000>: [$f0]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_c_main_s2 = 65
    # DEBUG: v_c_main_s2 = constant 65 loaded in $t1 (dirty)
    # DEBUG: Saved variable v_c_main_s2 to home location -12($fp)
    li $t1, 65
    sw $t1, -12($fp)

    # TAC 10: 11: v_pc_main_s2 = & v_c_main_s2
I11:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_c_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_c_main_s2: [$t1, memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # v_pc_main_s2 = &v_c_main_s2
    # DEBUG: v_pc_main_s2 = address of v_c_main_s2 at -12($fp)
    # DEBUG: v_pc_main_s2 (pointer) in $t1 (dirty)
    # DEBUG: Also stored v_pc_main_s2 to memory at -16($fp)
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
    # DEBUG: Saved variable v_I_main_s2 to home location -20($fp)
    li $t2, 10
    sw $t2, -20($fp)

    # TAC 12: 13: v_pi_main_s2 = & v_I_main_s2
I13:
    # --- Register Descriptor ---
    # $f0: [<CONST_7_5.500000>, v_f_main_s2]
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [v_I_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # <CONST_7_5.500000>: [$f0]
    # v_I_main_s2: [$t2, memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_f_main_s2: [$f0, memory:-4($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # v_pi_main_s2 = &v_I_main_s2
    # DEBUG: v_pi_main_s2 = address of v_I_main_s2 at -20($fp)
    # DEBUG: v_pi_main_s2 (pointer) in $t2 (dirty)
    # DEBUG: Also stored v_pi_main_s2 to memory at -24($fp)
    addiu $t2, $fp, -20
    sw $t2, -24($fp)

    # TAC 13: 14: param "f: %f, c: %c, i: %d\n"
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
    # param "f: %f, c: %c, i: %d\n"
    # DEBUG: Collected parameter #1: "f: %f, c: %c, i: %d\n"

    # TAC 14: 15: param v_f_main_s2
I15:
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
    # param v_f_main_s2
    # DEBUG: Collected parameter #2: v_f_main_s2

    # TAC 15: 16: param v_c_main_s2
I16:
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
    # param v_c_main_s2
    # DEBUG: Collected parameter #3: v_c_main_s2

    # TAC 16: 17: param v_I_main_s2
I17:
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
    # param v_I_main_s2
    # DEBUG: Collected parameter #4: v_I_main_s2

    # TAC 17: 18: #t1 = call printf_cp1_variadic, 4
I18:
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
    # Call printf_cp1_variadic with 4 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_pf_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled v_pc_main_s2 from $t1 to -16($fp)
    # DEBUG: Spilled v_pi_main_s2 from $t2 to -24($fp)
    # DEBUG: Spilled float v_f_main_s2 from $f0 to -4($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 3 arguments
    # DEBUG: format_param = '"f: %f, c: %c, i: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_f_main_s2
    # DEBUG: Loaded float v_f_main_s2 from -4($fp) into $f1
    # Arg 1: v_c_main_s2
    # DEBUG: Loaded v_c_main_s2 from memory at -12($fp)
    # Arg 2: v_I_main_s2
    # DEBUG: Loaded v_I_main_s2 from memory at -20($fp)
    sw $t0, -8($fp)
    sw $t1, -16($fp)
    sw $t2, -24($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    swc1 $f0, -4($fp)
    la $a0, str_0
    addiu $sp, $sp, -12
    l.s $f1, -4($fp)
    swc1 $f1, 0($sp)
    lw $t0, -12($fp)
    sw $t0, 4($sp)
    lw $t1, -20($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

    # TAC 18: 19: #t2 = v_pf_main_s2
I19:
    # --- Register Descriptor ---
    # $f1: [v_f_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = v_pf_main_s2
    # DEBUG: Float assignment
    # DEBUG: Loaded v_pf_main_s2 from memory at -8($fp)
    # DEBUG: v_pf_main_s2 in $t0
    # DEBUG: #t2 = v_pf_main_s2 in $t0 (dirty, float)
    lw $t0, -8($fp)

    # TAC 19: 20: #t3 = * v_pf_main_s2
I20:
    # --- Register Descriptor ---
    # $f1: [v_f_main_s2]
    # $t0: [#t2, v_pf_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [$t0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t3 = *v_pf_main_s2
    # DEBUG: Pointer v_pf_main_s2 already in $t0
    # DEBUG: Dereferenced *v_pf_main_s2 (float*) into $f0 using l.s
    # DEBUG: #t3 = *v_pf_main_s2 in $f0 (dirty)
    l.s $f0, 0($t0)

    # TAC 20: 21: #t4 = #t3 + 2.500000
I21:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [v_f_main_s2]
    # $t0: [#t2, v_pf_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [$t0]
    # #t3: [$f0]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t4 = #t3 add.s 2.500000 (float)
    # DEBUG: #t3 in $f0
    # DEBUG: Loaded float constant 2.500000 into $f1
    # DEBUG: 2.500000 in $f1
    # DEBUG: #t4 = result in $f2 (dirty, float)
    # Loading float constant: 2.500000
    li.s $f1, 2.500000
    add.s $f2, $f0, $f1

    # TAC 21: 22: *(#t2) = #t4
I22:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $t0: [#t2, v_pf_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [$t0]
    # #t3: [$f0]
    # #t4: [$f2]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
=======
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 4
    # DEBUG: #t1 = constant 4 loaded in $t0 (dirty)
    li $t0, 4

    # TAC 10: 11: #t2 = 10 * #t1
I11:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = 10 mul #t1
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: 10 in $t1
    # DEBUG: #t1 in $t0
    # DEBUG: #t2 = result in $t2 (dirty)
    li $t1, 10
    mul $t2, $t1, $t0

    # TAC 11: 12: param #t2
I12:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t2
    # DEBUG: Collected parameter #1: #t2

    # TAC 12: 13: #t3 = call malloc_i, 1
I13:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t2]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call malloc_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t1 from $t0 to -4($fp)
    # DEBUG: Spilled #t2 from $t2 to -8($fp)
    # === End Caller-Save ===
    # === Call library function: malloc ===
    # Malloc: allocate #t2 bytes
    # DEBUG: Loaded #t2 from memory at -8($fp)
    # Pointer to allocated memory in $v0
    # Store malloc result to #t3
    # === End malloc ===
    sw $t0, -4($fp)
    sw $t2, -8($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_malloc
    addiu $sp, $sp, 4
    sw $v0, -12($fp)

    # TAC 13: 14: #t4 = (#t3)char*
I14:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [-12($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Cast: #t4 = (char*)#t3
    # DEBUG: int to int cast
    # DEBUG: Loaded #t3 from memory at -12($fp)
    # DEBUG: #t4 = (char*)#t3 in $t1
    lw $t1, -12($fp)

    # TAC 14: 15: v_a_main_s2 = #t4
I15:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = #t4
    # DEBUG: #t4 already in $t1
    # DEBUG: v_a_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_a_main_s2 to memory at -20($fp)
    sw $t1, -20($fp)

    # TAC 15: 16: #t5 = 0 * 4
I16:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4, v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # v_a_main_s2: [$t1, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = 0 mul 4
    # DEBUG: Loaded constant 0 into $t2
    # DEBUG: 0 in $t2
    # DEBUG: Loaded constant 4 into $t3
    # DEBUG: 4 in $t3
    # DEBUG: #t5 = result in $t4 (dirty)
    li $t2, 0
    li $t3, 4
    mul $t4, $t2, $t3

    # TAC 16: 17: #t6 = v_a_main_s2 + #t5
I17:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4, v_a_main_s2] (dirty)
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # v_a_main_s2: [$t1, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = v_a_main_s2 add #t5
    # DEBUG: v_a_main_s2 in $t1
    # DEBUG: #t5 in $t4
    # DEBUG: #t6 = result in $t2 (dirty)
    add $t2, $t1, $t4

    # TAC 17: 18: #t7 = #t6
I18:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4, v_a_main_s2] (dirty)
    # $t2: [#t6] (dirty)
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # v_a_main_s2: [$t1, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = #t6
    # DEBUG: #t6 already in $t2
    # DEBUG: #t7 now also in $t2 (dirty)
    # DEBUG: Saved #t7 to memory at -32($fp)
    sw $t2, -32($fp)

    # TAC 18: 19: *(#t7) = 97
I19:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4, v_a_main_s2] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # v_a_main_s2: [$t1, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t7 = 97
    # DEBUG: Pointer #t7 in $t2
    # DEBUG: Loaded constant 97 into $t3
    # DEBUG: Integer/char value 97 in $t3
    # DEBUG: Stored value 97 through pointer #t7
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_a_main_s2 in $t1
    li $t3, 97
    sw $t3, 0($t2)

    # TAC 19: 20: #t8 = 1 * 4
I20:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # <CONST_18_97>: [$t3]
    # v_a_main_s2: [memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t8 = 1 mul 4
    # DEBUG: Loaded constant 1 into $t5
    # DEBUG: 1 in $t5
    # DEBUG: Loaded constant 4 into $t6
    # DEBUG: 4 in $t6
    # DEBUG: #t8 = result in $t7 (dirty)
    li $t5, 1
    li $t6, 4
    mul $t7, $t5, $t6

    # TAC 20: 21: #t9 = v_a_main_s2 + #t8
I21:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # $t7: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # <CONST_18_97>: [$t3]
    # v_a_main_s2: [memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t9 = v_a_main_s2 add #t8
    # DEBUG: Loaded v_a_main_s2 from memory at -20($fp)
    # DEBUG: v_a_main_s2 in $t5
    # DEBUG: #t8 in $t7
    # DEBUG: #t9 = result in $t6 (dirty)
    lw $t5, -20($fp)
    add $t6, $t5, $t7

    # TAC 21: 22: #t10 = #t9
I22:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t9] (dirty)
    # $t7: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # <CONST_18_97>: [$t3]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t10 = #t9
    # DEBUG: #t9 already in $t6
    # DEBUG: #t10 now also in $t6 (dirty)
    # DEBUG: Saved #t10 to memory at -44($fp)
    sw $t6, -44($fp)

    # TAC 22: 23: *(#t10) = 98
I23:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # <CONST_18_97>: [$t3]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t10 = 98
    # DEBUG: Pointer #t10 in $t6
    # DEBUG: Loaded constant 98 into $t8
    # DEBUG: Integer/char value 98 in $t8
    # DEBUG: Stored value 98 through pointer #t10
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_a_main_s2 in $t5
    li $t8, 98
    sw $t8, 0($t6)

    # TAC 23: 24: #t11 = 0 * 4
I24:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [<CONST_22_98>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t2: [$t0, memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # <CONST_18_97>: [$t3]
    # <CONST_22_98>: [$t8]
    # v_a_main_s2: [memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t11 = 0 mul 4
    # DEBUG: Loaded constant 0 into $t5
    # DEBUG: 0 in $t5
    # DEBUG: Loaded constant 4 into $t9
    # DEBUG: 4 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: #t11 = result in $t0 (dirty)
    li $t5, 0
    li $t9, 4
    mul $t0, $t5, $t9

    # TAC 24: 25: #t12 = v_a_main_s2 + #t11
I25:
    # --- Register Descriptor ---
    # $t0: [#t11] (dirty)
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [<CONST_22_98>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # <CONST_18_97>: [$t3]
    # <CONST_22_98>: [$t8]
    # v_a_main_s2: [memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t12 = v_a_main_s2 add #t11
    # DEBUG: Loaded v_a_main_s2 from memory at -20($fp)
    # DEBUG: v_a_main_s2 in $t5
    # DEBUG: #t11 in $t0
    # DEBUG: #t12 = result in $t9 (dirty)
    lw $t5, -20($fp)
    add $t9, $t5, $t0

    # TAC 25: 26: #t13 = * #t12
I26:
    # --- Register Descriptor ---
    # $t0: [#t11] (dirty)
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [<CONST_22_98>]
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [$t0]
    # #t12: [$t9]
    # #t2: [memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # <CONST_18_97>: [$t3]
    # <CONST_22_98>: [$t8]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t13 = *#t12
    # DEBUG: Pointer #t12 already in $t9
    # DEBUG: Spilled #t11 from $t0 to memory
    # DEBUG: Dereferenced *#t12 (char*) into $t0 using lb
    # DEBUG: #t13 = *#t12 in $t0 (dirty)
    sw $t0, -48($fp)
    lb $t0, 0($t9)

    # TAC 26: 27: #t14 = 1 * 4
I27:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # $t1: [#t3, #t4] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONST_18_97>]
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t8: [<CONST_22_98>]
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [$t9]
    # #t13: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [$t1, -12($fp)]
    # #t4: [$t1]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # <CONST_18_97>: [$t3]
    # <CONST_22_98>: [$t8]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t14 = 1 mul 4
    # DEBUG: Loaded constant 1 into $t3
    # DEBUG: 1 in $t3
    # DEBUG: Loaded constant 4 into $t8
    # DEBUG: 4 in $t8
    # DEBUG: Spilling register $t1 due to register pressure
    # DEBUG: Spilled #t3 from $t1 to memory at -12($fp)
    # DEBUG: Spilled #t4 from $t1 to memory at -16($fp)
    # DEBUG: #t14 = result in $t1 (dirty)
    li $t3, 1
    li $t8, 4
    sw $t1, -12($fp)
    sw $t1, -16($fp)
    mul $t1, $t3, $t8

    # TAC 27: 28: #t15 = v_a_main_s2 + #t14
I28:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # $t1: [#t14] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [$t9]
    # #t13: [$t0]
    # #t14: [$t1]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t15 = v_a_main_s2 add #t14
    # DEBUG: v_a_main_s2 in $t5
    # DEBUG: #t14 in $t1
    # DEBUG: #t15 = result in $t3 (dirty)
    add $t3, $t5, $t1

    # TAC 28: 29: #t16 = * #t15
I29:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # $t1: [#t14] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [$t9]
    # #t13: [$t0]
    # #t14: [$t1]
    # #t15: [$t3]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t16 = *#t15
    # DEBUG: Pointer #t15 already in $t3
    # DEBUG: Spilled #t14 from $t1 to memory
    # DEBUG: Dereferenced *#t15 (char*) into $t1 using lb
    # DEBUG: #t16 = *#t15 in $t1 (dirty)
    sw $t1, -60($fp)
    lb $t1, 0($t3)

    # TAC 29: 30: param "a[0] = %c, a[1] = %c\n"
I30:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # $t1: [#t16] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [$t9]
    # #t13: [$t0]
    # #t14: [memory:#t14]
    # #t15: [$t3]
    # #t16: [$t1]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "a[0] = %c, a[1] = %c\n"
    # DEBUG: Collected parameter #1: "a[0] = %c, a[1] = %c\n"

    # TAC 30: 31: param #t13
I31:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # $t1: [#t16] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [$t9]
    # #t13: [$t0]
    # #t14: [memory:#t14]
    # #t15: [$t3]
    # #t16: [$t1]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t13
    # DEBUG: Collected parameter #2: #t13

    # TAC 31: 32: param #t16
I32:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # $t1: [#t16] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [$t9]
    # #t13: [$t0]
    # #t14: [memory:#t14]
    # #t15: [$t3]
    # #t16: [$t1]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t16
    # DEBUG: Collected parameter #3: #t16

    # TAC 32: 33: #t17 = call printf_cp1_variadic, 3
I33:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # $t1: [#t16] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [#t5] (dirty)
    # $t5: [v_a_main_s2]
    # $t6: [#t10, #t9] (dirty)
    # $t7: [#t8] (dirty)
    # $t9: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t6, memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [$t9]
    # #t13: [$t0]
    # #t14: [memory:#t14]
    # #t15: [$t3]
    # #t16: [$t1]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t4]
    # #t6: [$t2]
    # #t7: [$t2, memory:-32($fp)]
    # #t8: [$t7]
    # #t9: [$t6]
    # v_a_main_s2: [$t5, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 3 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t13 from $t0 to -56($fp)
    # DEBUG: Spilled #t16 from $t1 to -68($fp)
    # DEBUG: Spilled #t6 from $t2 to -28($fp)
    # DEBUG: Spilled #t7 from $t2 to -32($fp)
    # DEBUG: Spilled #t15 from $t3 to -64($fp)
    # DEBUG: Spilled #t5 from $t4 to -24($fp)
    # DEBUG: Spilled v_a_main_s2 from $t5 to -20($fp)
    # DEBUG: Spilled #t10 from $t6 to -44($fp)
    # DEBUG: Spilled #t9 from $t6 to -40($fp)
    # DEBUG: Spilled #t8 from $t7 to -36($fp)
    # DEBUG: Spilled #t12 from $t9 to -52($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 2 arguments
    # DEBUG: format_param = '"a[0] = %c, a[1] = %c\n"', first char = 34
    sw $t0, -56($fp)
    # Load format string literal address
    # Store variadic arguments on stack
    sw $t1, -68($fp)
    # Arg 0: #t13
    sw $t2, -28($fp)
    # DEBUG: Loaded #t13 from memory at -56($fp)
    sw $t2, -32($fp)
    # Arg 1: #t16
    sw $t3, -64($fp)
    # DEBUG: Loaded #t16 from memory at -68($fp)
    sw $t4, -24($fp)
    sw $t5, -20($fp)
    sw $t6, -44($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t6, -40($fp)
    sw $t7, -36($fp)
    sw $t9, -52($fp)
    la $a0, str_0
    addiu $sp, $sp, -8
    lw $t0, -56($fp)
    sw $t0, 0($sp)
    lw $t1, -68($fp)
    sw $t1, 4($sp)
    jal __lib_printf
    addiu $sp, $sp, 8

    # TAC 33: 34: #t18 = (v_a_main_s2)void*
I34:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [memory:-52($fp)]
    # #t13: [memory:-56($fp)]
    # #t14: [memory:#t14]
    # #t15: [memory:-64($fp)]
    # #t16: [memory:-68($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_a_main_s2: [memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Cast: #t18 = (void*)v_a_main_s2
    # DEBUG: int to int cast
    # DEBUG: Loaded v_a_main_s2 from memory at -20($fp)
    # DEBUG: #t18 = (void*)v_a_main_s2 in $t0
    lw $t0, -20($fp)

    # TAC 34: 35: param v_a_main_s2
I35:
    # --- Register Descriptor ---
    # $t0: [#t18, v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [memory:-52($fp)]
    # #t13: [memory:-56($fp)]
    # #t14: [memory:#t14]
    # #t15: [memory:-64($fp)]
    # #t16: [memory:-68($fp)]
    # #t18: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_a_main_s2: [$t0, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_a_main_s2
    # DEBUG: Collected parameter #1: v_a_main_s2

    # TAC 35: 36: #t19 = call free_vp1, 1
I36:
    # --- Register Descriptor ---
    # $t0: [#t18, v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [memory:-52($fp)]
    # #t13: [memory:-56($fp)]
    # #t14: [memory:#t14]
    # #t15: [memory:-64($fp)]
    # #t16: [memory:-68($fp)]
    # #t18: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_a_main_s2: [$t0, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call free_vp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t18 from $t0 to -72($fp)
    # DEBUG: Spilled v_a_main_s2 from $t0 to -20($fp)
    # === End Caller-Save ===
    # === Call library function: free ===
    # Free: deallocate memory at v_a_main_s2
    # DEBUG: Loaded v_a_main_s2 from memory at -20($fp)
    # === End free ===
    sw $t0, -72($fp)
    sw $t0, -20($fp)
    addiu $sp, $sp, -4
    lw $t0, -20($fp)
    sw $t0, 0($sp)
    jal __lib_free
    addiu $sp, $sp, 4

    # TAC 36: 37: return 0
I37:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [memory:-52($fp)]
    # #t13: [memory:-56($fp)]
    # #t14: [memory:#t14]
    # #t15: [memory:-64($fp)]
    # #t16: [memory:-68($fp)]
    # #t18: [memory:-72($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_a_main_s2: [$t0, memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
>>>>>>> 6b761ed (Dynamic memory allocation done)
    # --- End Storage Descriptor ---
    # *#t2 = #t4
    # DEBUG: Pointer #t2 in $t0
    # DEBUG: Float value #t4 in $f2
    # DEBUG: Stored float #t4 through pointer #t2
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_pf_main_s2 in $t0
    s.s $f2, 0($t0)

<<<<<<< HEAD
    # TAC 22: 23: #t5 = v_pi_main_s2
I23:
=======

    # ======================================
    # === B6_i37_i37 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i37 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 37: 38: end function main
I38:
>>>>>>> 6b761ed (Dynamic memory allocation done)
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $t0: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
<<<<<<< HEAD
    # #t2: [$t0]
    # #t3: [$f0]
    # #t4: [$f2]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t5 = v_pi_main_s2
    # DEBUG: Loaded v_pi_main_s2 from memory at -24($fp)
    # DEBUG: #t5 loaded in $t1 (dirty)
    lw $t1, -24($fp)

    # TAC 23: 24: #t6 = * v_pi_main_s2
I24:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $t0: [#t2] (dirty)
    # $t1: [#t5, v_pi_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [$t0]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [$t1]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t6 = *v_pi_main_s2
    # DEBUG: Pointer v_pi_main_s2 already in $t1
    # DEBUG: Spilled #t2 from $t0 to home location -28($fp)
    # DEBUG: Dereferenced *v_pi_main_s2 (int*) into $t0 using lw
    # DEBUG: #t6 = *v_pi_main_s2 in $t0 (dirty)
    sw $t0, -28($fp)
    lw $t0, 0($t1)

    # TAC 24: 25: #t7 = #t6 + 20
I25:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $t0: [#t6] (dirty)
    # $t1: [#t5, v_pi_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [$t1]
    # #t6: [$t0]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t7 = #t6 add 20
    # DEBUG: #t6 in $t0
    # DEBUG: Loaded constant 20 into $t2
    # DEBUG: 20 in $t2
    # DEBUG: #t7 = result in $t3 (dirty)
    li $t2, 20
    add $t3, $t0, $t2

    # TAC 25: 26: *(#t5) = #t7
I26:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $t0: [#t6] (dirty)
    # $t1: [#t5, v_pi_main_s2] (dirty)
    # $t3: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [$t1]
    # #t6: [$t0]
    # #t7: [$t3]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [$t1, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # *#t5 = #t7
    # DEBUG: Pointer #t5 in $t1
    # DEBUG: Integer value #t7 in $t3
    # DEBUG: Stored integer #t7 through pointer #t5
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_pi_main_s2 in $t1
    sw $t3, 0($t1)

    # TAC 26: 27: #t8 = * v_pf_main_s2
I27:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $t0: [#t6] (dirty)
    # $t1: [#t5] (dirty)
    # $t3: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [$t1]
    # #t6: [$t0]
    # #t7: [$t3]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t8 = *v_pf_main_s2
    # DEBUG: Spilled #t6 from $t0 to home location -44($fp)
    # DEBUG: Loaded pointer v_pf_main_s2 from memory at -8($fp)
    # DEBUG: Dereferenced *v_pf_main_s2 (float*) into $f3 using l.s
    # DEBUG: #t8 = *v_pf_main_s2 in $f3 (dirty)
    sw $t0, -44($fp)
    lw $t0, -8($fp)
    l.s $f3, 0($t0)

    # TAC 27: 28: #t9 = * v_pc_main_s2
I28:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $f3: [#t8] (dirty)
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [#t5] (dirty)
    # $t3: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [$t1]
    # #t6: [memory:-44($fp)]
    # #t7: [$t3]
    # #t8: [$f3]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t9 = *v_pc_main_s2
    # DEBUG: Spilled #t5 from $t1 to home location -40($fp)
    # DEBUG: Loaded pointer v_pc_main_s2 from memory at -16($fp)
    # DEBUG: Dereferenced *v_pc_main_s2 (char*) into $t2 using lb
    # DEBUG: #t9 = *v_pc_main_s2 in $t2 (dirty)
    sw $t1, -40($fp)
    lw $t1, -16($fp)
    lb $t2, 0($t1)

    # TAC 28: 29: #t10 = * v_pi_main_s2
I29:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $f3: [#t8] (dirty)
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # $t3: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [$t3]
    # #t8: [$f3]
    # #t9: [$t2]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
    # --- End Storage Descriptor ---
    # #t10 = *v_pi_main_s2
    # DEBUG: Spilled #t7 from $t3 to home location -48($fp)
    # DEBUG: Loaded pointer v_pi_main_s2 from memory at -24($fp)
    # DEBUG: Dereferenced *v_pi_main_s2 (int*) into $t4 using lw
    # DEBUG: #t10 = *v_pi_main_s2 in $t4 (dirty)
    sw $t3, -48($fp)
    lw $t3, -24($fp)
    lw $t4, 0($t3)

    # TAC 29: 30: param "pf: %f, pc: %c, pi: %d\n"
I30:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $f3: [#t8] (dirty)
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # $t3: [v_pi_main_s2] (dirty)
    # $t4: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t4]
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t8: [$f3]
    # #t9: [$t2]
    # <CONST_20_2.500000>: [$f1]
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

    # TAC 30: 31: param #t8
I31:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $f3: [#t8] (dirty)
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # $t3: [v_pi_main_s2] (dirty)
    # $t4: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t4]
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t8: [$f3]
    # #t9: [$t2]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t8
    # DEBUG: Collected parameter #2: #t8

    # TAC 31: 32: param #t9
I32:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $f3: [#t8] (dirty)
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # $t3: [v_pi_main_s2] (dirty)
    # $t4: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t4]
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t8: [$f3]
    # #t9: [$t2]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t9
    # DEBUG: Collected parameter #3: #t9

    # TAC 32: 33: param #t10
I33:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $f3: [#t8] (dirty)
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # $t3: [v_pi_main_s2] (dirty)
    # $t4: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t4]
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t8: [$f3]
    # #t9: [$t2]
    # <CONST_20_2.500000>: [$f1]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [$t1, memory:-16($fp)]
    # v_pf_main_s2: [$t0, memory:-8($fp)]
    # v_pi_main_s2: [$t3, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # param #t10
    # DEBUG: Collected parameter #4: #t10

    # TAC 33: 34: #t11 = call printf_cp1_variadic, 4
I34:
    # --- Register Descriptor ---
    # $f0: [#t3] (dirty)
    # $f1: [<CONST_20_2.500000>]
    # $f2: [#t4] (dirty)
    # $f3: [#t8] (dirty)
    # $t0: [v_pf_main_s2] (dirty)
    # $t1: [v_pc_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # $t3: [v_pi_main_s2] (dirty)
    # $t4: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t4]
    # #t2: [memory:-28($fp)]
    # #t3: [$f0]
    # #t4: [$f2]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t8: [$f3]
    # #t9: [$t2]
    # <CONST_20_2.500000>: [$f1]
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
    # DEBUG: Spilled #t9 from $t2 to -56($fp)
    # DEBUG: Spilled v_pi_main_s2 from $t3 to -24($fp)
    # DEBUG: Spilled #t10 from $t4 to -60($fp)
    # DEBUG: Spilled float #t3 from $f0 to -32($fp)
    # DEBUG: Spilled float #t4 from $f2 to -36($fp)
    # DEBUG: Spilled float #t8 from $f3 to -52($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 3 arguments
    # DEBUG: format_param = '"pf: %f, pc: %c, pi: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t8
    # DEBUG: Loaded float #t8 from -52($fp) into $f4
    sw $t0, -8($fp)
    # Arg 1: #t9
    sw $t1, -16($fp)
    # DEBUG: Loaded #t9 from memory at -56($fp)
    sw $t2, -56($fp)
    # Arg 2: #t10
    sw $t3, -24($fp)
    # DEBUG: Loaded #t10 from memory at -60($fp)
    sw $t4, -60($fp)
    swc1 $f0, -32($fp)
    swc1 $f2, -36($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    swc1 $f3, -52($fp)
    la $a0, str_1
    addiu $sp, $sp, -12
    l.s $f4, -52($fp)
    swc1 $f4, 0($sp)
    lw $t0, -56($fp)
    sw $t0, 4($sp)
    lw $t1, -60($fp)
    sw $t1, 8($sp)
    jal __lib_printf
    addiu $sp, $sp, 12

    # TAC 34: 35: end function main
I35:
    # --- Register Descriptor ---
    # $f4: [#t8]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-60($fp)]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:-32($fp)]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t9: [memory:-56($fp)]
    # v_I_main_s2: [memory:-20($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_fmt_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_pc_main_s2: [memory:-16($fp)]
    # v_pf_main_s2: [memory:-8($fp)]
    # v_pi_main_s2: [memory:-24($fp)]
=======
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [memory:#t11]
    # #t12: [memory:-52($fp)]
    # #t13: [memory:-56($fp)]
    # #t14: [memory:#t14]
    # #t15: [memory:-64($fp)]
    # #t16: [memory:-68($fp)]
    # #t18: [memory:-72($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [-12($fp), memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_a_main_s2: [memory:-20($fp)]
    # v_ptr_free_vp1_s2: [memory:8($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_size_malloc_i_s2: [memory:8($fp)]
>>>>>>> 6b761ed (Dynamic memory allocation done)
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
__lib_free:
    # Save registers
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # Load pointer parameter from stack
    lw $a0, 8($fp)  # Pointer to free
    
    # In a real implementation, we would:
    # 1. Check if pointer is valid
    # 2. Mark memory as free in a free list
    # 3. Coalesce adjacent free blocks
    #
    # For now, this is a no-op since MIPS doesn't provide
    # a syscall to return memory to the system.
    # The memory remains allocated but could be tracked
    # in a more sophisticated implementation.
    
    # Restore registers
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


#==============================================================================
__lib_malloc:
    # Save registers
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # Load size parameter from stack
    lw $a0, 8($fp)  # Size in bytes
    
    # Check if size is valid (> 0)
    blez $a0, malloc_error
    
    # Syscall 9: sbrk (allocate heap memory)
    li $v0, 9
    syscall
    # $v0 now contains pointer to allocated memory
    
    j malloc_end

malloc_error:
    # Return NULL (0) on error
    li $v0, 0

malloc_end:
    # Restore registers
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


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

