    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 66

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Total arguments: %d\n""
    # Added string literal: str_1 = ""Program: %s\n""
    # Added string literal: str_2 = ""Arg[%d]: %s\n""
    # Added string literal: str_3 = ""First arg: %s\n""
    # Added string literal: str_4 = ""Second arg: %s\n""
    # Found 5 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i7
    # Block B4: i8-i8
    # Block B5: i9-i10
    # Block B6: i11-i11
    # Block B7: i12-i12
    # Block B8: i13-i13
    # Block B9: i14-i19
    # Block B10: i20-i20
    # Block B11: i21-i21
    # Block B12: i22-i22
    # Block B13: i23-i24
    # Block B14: i25-i25
    # Block B15: i26-i26
    # Block B16: i27-i27
    # Block B17: i28-i37
    # Block B18: i38-i38
    # Block B19: i39-i39
    # Block B20: i40-i41
    # Block B21: i42-i42
    # Block B22: i43-i43
    # Block B23: i44-i44
    # Block B24: i45-i50
    # Block B25: i51-i51
    # Block B26: i52-i52
    # Block B27: i53-i54
    # Block B28: i55-i55
    # Block B29: i56-i56
    # Block B30: i57-i57
    # Block B31: i58-i63
    # Block B32: i64-i64
    # Block B33: i65-i65

.data
    # String Literals
str_2: .asciiz "Arg[%d]: %s\n"
str_3: .asciiz "First arg: %s\n"
str_1: .asciiz "Program: %s\n"
str_4: .asciiz "Second arg: %s\n"
str_0: .asciiz "Total arguments: %d\n"

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
    # DEBUG: Parameter 0 (v_c_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_c_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_c_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
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
    # === B3_i3_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i7 Next-Use:
    #   v_argc_main_i_cp2_s2 -> N/A
    # Instr i6 Next-Use:
    #   #t1 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i5 Next-Use:
    #   v_argc_main_i_cp2_s2 -> N/A
    # Instr i4 Next-Use:
    # Instr i3 Next-Use:
    #   main_i_cp2 -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : main_i_cp2
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main_i_cp2:
    # Function: main_i_cp2
    # === Function Prologue for main_i_cp2 ===
    # Frame size: 120 bytes
    addiu $sp, $sp, -120
    # Allocate 120 bytes (8 for $ra+$fp, 120 for locals/temps)
    sw $ra, 116($sp)
    # Save return address at 124($sp)
    sw $fp, 112($sp)
    # Save old frame pointer at 120($sp)
    addiu $fp, $sp, 112
    # Set new frame pointer (points to saved old $fp)

    # TAC 4: 5: param "Total arguments: %d\n"
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Total arguments: %d\n"
    # DEBUG: Collected parameter #1: "Total arguments: %d\n"

    # TAC 5: 6: param v_argc_main_i_cp2_s2
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_argc_main_i_cp2_s2
    # DEBUG: Collected parameter #2: v_argc_main_i_cp2_s2

    # TAC 6: 7: #t1 = call printf_cp1_variadic, 2
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Total arguments: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_argc_main_i_cp2_s2
    # DEBUG: Loaded v_argc_main_i_cp2_s2 from memory at 8($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, 8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 7: 8: if v_argc_main_i_cp2_s2 > 0 goto I10
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_argc_main_i_cp2_s2 > 0 goto I10
    # DEBUG: Loaded v_argc_main_i_cp2_s2 from memory at 8($fp)
    # DEBUG: v_argc_main_i_cp2_s2 in $t0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    # Branch to I10 if condition true
    lw $t0, 8($fp)
    li $t1, 0
    bgt $t0, $t1, I10


    # ======================================
    # === B4_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i8 Next-Use:
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 8: 9: goto I12
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I12
    j I12


    # ======================================
    # === B5_i9_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i10 Next-Use:
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 9: 10: #t2 = 1
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 1
    # DEBUG: #t2 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 10: 11: goto I13
I11:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t2 from $t0 to memory at -8($fp)
    # Unconditional jump to I13
    sw $t0, -8($fp)
    j I13


    # ======================================
    # === B6_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i11 Next-Use:
    #   #t2 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 11: 12: #t2 = 0
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 0
    # DEBUG: #t2 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B6 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t2 from $t0 to memory at -8($fp)

    sw $t0, -8($fp)
    # ======================================
    # === B7_i12_i12 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i12 Next-Use:
    #   #t2 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 12: 13: if #t2   goto I15
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t2 ?? 0 goto I15
    # DEBUG: Loaded #t2 from memory at -8($fp)
    # DEBUG: #t2 in $t0
    # Branch to I15 if condition true
    lw $t0, -8($fp)
    bne $t0, $zero, I15


    # ======================================
    # === B8_i13_i13 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i13 Next-Use:
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 13: 14: goto I21
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I21
    j I21


    # ======================================
    # === B9_i14_i19 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i19 Next-Use:
    #   #t6 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i18 Next-Use:
    #   #t5 -> N/A
    # Instr i17 Next-Use:
    # Instr i16 Next-Use:
    #   #t4 -> N/A
    #   #t5 -> N/A
    # Instr i15 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    #   v_argv_main_i_cp2_s2 -> N/A
    # Instr i14 Next-Use:
    #   #t3 -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 14: 15: #t3 = 0 * 4
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = 0 mul 4
    # DEBUG: Loaded constant 0 into $t0
    # DEBUG: 0 in $t0
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t3 = result in $t2 (dirty)
    li $t0, 0
    li $t1, 4
    mul $t2, $t0, $t1

    # TAC 15: 16: #t4 = v_argv_main_i_cp2_s2 + #t3
I16:
    # --- Register Descriptor ---
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [$t2]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = v_argv_main_i_cp2_s2 add #t3
    # DEBUG: Loaded v_argv_main_i_cp2_s2 from memory at 12($fp)
    # DEBUG: v_argv_main_i_cp2_s2 in $t0
    # DEBUG: #t3 in $t2
    # DEBUG: #t4 = result in $t1 (dirty)
    lw $t0, 12($fp)
    add $t1, $t0, $t2

    # TAC 16: 17: #t5 = * #t4
I17:
    # --- Register Descriptor ---
    # $t0: [v_argv_main_i_cp2_s2]
    # $t1: [#t4] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [$t2]
    # #t4: [$t1]
    # v_argv_main_i_cp2_s2: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = *#t4
    # DEBUG: Set dereference marker for #t5 from pointer #t4
    # DEBUG: Pointer #t4 already in $t1
    # DEBUG: Spilled v_argv_main_i_cp2_s2 from $t0 to home location 12($fp)
    # DEBUG: Dereferenced *#t4 (int*) into $t0 using lw
    # DEBUG: #t5 = *#t4 in $t0 (dirty)
    sw $t0, 12($fp)
    lw $t0, 0($t1)

    # TAC 17: 18: param "Program: %s\n"
I18:
    # --- Register Descriptor ---
    # $t0: [#t5] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [$t2]
    # #t4: [$t1]
    # #t5: [$t0]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Program: %s\n"
    # DEBUG: Collected parameter #1: "Program: %s\n"

    # TAC 18: 19: param #t5
I19:
    # --- Register Descriptor ---
    # $t0: [#t5] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [$t2]
    # #t4: [$t1]
    # #t5: [$t0]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t5
    # DEBUG: Collected parameter #2: #t5

    # TAC 19: 20: #t6 = call printf_cp1_variadic, 2
I20:
    # --- Register Descriptor ---
    # $t0: [#t5] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [$t2]
    # #t4: [$t1]
    # #t5: [$t0]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t5 from $t0 to -20($fp)
    # DEBUG: Spilled #t4 from $t1 to -16($fp)
    # DEBUG: Spilled #t3 from $t2 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Program: %s\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t5
    # DEBUG: Loaded #t5 from memory at -20($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t0, -20($fp)
    sw $t1, -16($fp)
    sw $t2, -12($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -20($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # End of block B9 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B10_i20_i20 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i20 Next-Use:
    #   v_i_main_i_cp2_s2 -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 20: 21: v_i_main_i_cp2_s2 = 1
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_i_cp2_s2 = 1
    # DEBUG: v_i_main_i_cp2_s2 = constant 1 loaded in $t0 (dirty)
    # DEBUG: Saved variable v_i_main_i_cp2_s2 to home location -4($fp)
    li $t0, 1
    sw $t0, -4($fp)

    # End of block B10 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B11_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B11 ===
    # Instr i21 Next-Use:
    #   v_argc_main_i_cp2_s2 -> N/A
    #   v_i_main_i_cp2_s2 -> N/A
    # === End of Next-Use Computation for Block B11 ===

    # Next-use information computed
    # TAC 21: 22: if v_i_main_i_cp2_s2 < v_argc_main_i_cp2_s2 goto I24
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_i_main_i_cp2_s2 < v_argc_main_i_cp2_s2 goto I24
    # DEBUG: Loaded v_i_main_i_cp2_s2 from memory at -4($fp)
    # DEBUG: v_i_main_i_cp2_s2 in $t0
    # DEBUG: Loaded v_argc_main_i_cp2_s2 from memory at 8($fp)
    # DEBUG: v_argc_main_i_cp2_s2 in $t1
    # Branch to I24 if condition true
    lw $t0, -4($fp)
    lw $t1, 8($fp)
    blt $t0, $t1, I24


    # ======================================
    # === B12_i22_i22 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B12 ===
    # Instr i22 Next-Use:
    # === End of Next-Use Computation for Block B12 ===

    # Next-use information computed
    # TAC 22: 23: goto I26
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I26
    j I26


    # ======================================
    # === B13_i23_i24 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B13 ===
    # Instr i24 Next-Use:
    # Instr i23 Next-Use:
    #   #t7 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B13 ===

    # Next-use information computed
    # TAC 23: 24: #t7 = 1
I24:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = 1
    # DEBUG: #t7 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 24: 25: goto I27
I25:
    # --- Register Descriptor ---
    # $t0: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [$t0]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t7 from $t0 to memory at -24($fp)
    # Unconditional jump to I27
    sw $t0, -24($fp)
    j I27


    # ======================================
    # === B14_i25_i25 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B14 ===
    # Instr i25 Next-Use:
    #   #t7 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B14 ===

    # Next-use information computed
    # TAC 25: 26: #t7 = 0
I26:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = 0
    # DEBUG: #t7 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B14 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t7 from $t0 to memory at -24($fp)

    sw $t0, -24($fp)
    # ======================================
    # === B15_i26_i26 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B15 ===
    # Instr i26 Next-Use:
    #   #t7 -> N/A
    # === End of Next-Use Computation for Block B15 ===

    # Next-use information computed
    # TAC 26: 27: if #t7   goto I29
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t7 ?? 0 goto I29
    # DEBUG: Loaded #t7 from memory at -24($fp)
    # DEBUG: #t7 in $t0
    # Branch to I29 if condition true
    lw $t0, -24($fp)
    bne $t0, $zero, I29


    # ======================================
    # === B16_i27_i27 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B16 ===
    # Instr i27 Next-Use:
    # === End of Next-Use Computation for Block B16 ===

    # Next-use information computed
    # TAC 27: 28: goto I39
I28:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I39
    j I39


    # ======================================
    # === B17_i28_i37 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B17 ===
    # Instr i37 Next-Use:
    # Instr i36 Next-Use:
    #   #t12 -> N/A
    #   v_i_main_i_cp2_s2 -> N/A
    # Instr i35 Next-Use:
    #   #t12 -> N/A
    #   v_i_main_i_cp2_s2 -> N/A
    # Instr i34 Next-Use:
    #   #t11 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i33 Next-Use:
    #   #t10 -> N/A
    # Instr i32 Next-Use:
    #   v_i_main_i_cp2_s2 -> N/A
    # Instr i31 Next-Use:
    # Instr i30 Next-Use:
    #   #t10 -> N/A
    #   #t9 -> N/A
    # Instr i29 Next-Use:
    #   #t8 -> N/A
    #   #t9 -> N/A
    #   v_argv_main_i_cp2_s2 -> N/A
    # Instr i28 Next-Use:
    #   #t8 -> N/A
    #   v_i_main_i_cp2_s2 -> N/A
    # === End of Next-Use Computation for Block B17 ===

    # Next-use information computed
    # TAC 28: 29: #t8 = v_i_main_i_cp2_s2 * 4
I29:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t8 = v_i_main_i_cp2_s2 mul 4
    # DEBUG: Loaded v_i_main_i_cp2_s2 from memory at -4($fp)
    # DEBUG: v_i_main_i_cp2_s2 in $t0
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t8 = result in $t2 (dirty)
    lw $t0, -4($fp)
    li $t1, 4
    mul $t2, $t0, $t1

    # TAC 29: 30: #t9 = v_argv_main_i_cp2_s2 + #t8
I30:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_cp2_s2]
    # $t2: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [$t2]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t9 = v_argv_main_i_cp2_s2 add #t8
    # DEBUG: Loaded v_argv_main_i_cp2_s2 from memory at 12($fp)
    # DEBUG: v_argv_main_i_cp2_s2 in $t1
    # DEBUG: #t8 in $t2
    # DEBUG: #t9 = result in $t3 (dirty)
    lw $t1, 12($fp)
    add $t3, $t1, $t2

    # TAC 30: 31: #t10 = * #t9
I31:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_cp2_s2]
    # $t1: [v_argv_main_i_cp2_s2]
    # $t2: [#t8] (dirty)
    # $t3: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [$t2]
    # #t9: [$t3]
    # v_argv_main_i_cp2_s2: [$t1, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t10 = *#t9
    # DEBUG: Set dereference marker for #t10 from pointer #t9
    # DEBUG: Pointer #t9 already in $t3
    # DEBUG: Dereferenced *#t9 (int*) into $t0 using lw
    # DEBUG: #t10 = *#t9 in $t0 (dirty)
    lw $t0, 0($t3)

    # TAC 31: 32: param "Arg[%d]: %s\n"
I32:
    # --- Register Descriptor ---
    # $t0: [#t10] (dirty)
    # $t1: [v_argv_main_i_cp2_s2]
    # $t2: [#t8] (dirty)
    # $t3: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [$t2]
    # #t9: [$t3]
    # v_argv_main_i_cp2_s2: [$t1, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param "Arg[%d]: %s\n"
    # DEBUG: Collected parameter #1: "Arg[%d]: %s\n"

    # TAC 32: 33: param v_i_main_i_cp2_s2
I33:
    # --- Register Descriptor ---
    # $t0: [#t10] (dirty)
    # $t1: [v_argv_main_i_cp2_s2]
    # $t2: [#t8] (dirty)
    # $t3: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [$t2]
    # #t9: [$t3]
    # v_argv_main_i_cp2_s2: [$t1, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param v_i_main_i_cp2_s2
    # DEBUG: Collected parameter #2: v_i_main_i_cp2_s2

    # TAC 33: 34: param #t10
I34:
    # --- Register Descriptor ---
    # $t0: [#t10] (dirty)
    # $t1: [v_argv_main_i_cp2_s2]
    # $t2: [#t8] (dirty)
    # $t3: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [$t2]
    # #t9: [$t3]
    # v_argv_main_i_cp2_s2: [$t1, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param #t10
    # DEBUG: Collected parameter #3: #t10

    # TAC 34: 35: #t11 = call printf_cp1_variadic, 3
I35:
    # --- Register Descriptor ---
    # $t0: [#t10] (dirty)
    # $t1: [v_argv_main_i_cp2_s2]
    # $t2: [#t8] (dirty)
    # $t3: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [$t2]
    # #t9: [$t3]
    # v_argv_main_i_cp2_s2: [$t1, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 3 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t10 from $t0 to -36($fp)
    # DEBUG: Spilled v_argv_main_i_cp2_s2 from $t1 to 12($fp)
    # DEBUG: Spilled #t8 from $t2 to -28($fp)
    # DEBUG: Spilled #t9 from $t3 to -32($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 2 arguments
    # DEBUG: format_param = '"Arg[%d]: %s\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_i_main_i_cp2_s2
    # DEBUG: Loaded v_i_main_i_cp2_s2 from memory at -4($fp)
    # Arg 1: #t10
    # DEBUG: Loaded #t10 from memory at -36($fp)
    sw $t0, -36($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t1, 12($fp)
    sw $t2, -28($fp)
    sw $t3, -32($fp)
    la $a0, str_2
    addiu $sp, $sp, -8
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    lw $t1, -36($fp)
    sw $t1, 4($sp)
    jal __lib_printf
    addiu $sp, $sp, 8

    # TAC 35: 36: #t12 = v_i_main_i_cp2_s2 + 1
I36:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t12 = v_i_main_i_cp2_s2 add 1
    # DEBUG: Loaded v_i_main_i_cp2_s2 from memory at -4($fp)
    # DEBUG: v_i_main_i_cp2_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t12 = result in $t2 (dirty)
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

    # TAC 36: 37: v_i_main_i_cp2_s2 = #t12
I37:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_cp2_s2]
    # $t2: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [$t2]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_i_cp2_s2 = #t12
    # DEBUG: #t12 already in $t2
    # DEBUG: v_i_main_i_cp2_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_i_main_i_cp2_s2 now also in $t2 (dirty)
    # DEBUG: Saved v_i_main_i_cp2_s2 to memory at -4($fp)
    sw $t2, -4($fp)

    # TAC 37: 38: goto I22
I38:
    # --- Register Descriptor ---
    # $t2: [#t12, v_i_main_i_cp2_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [$t2]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [$t2, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t12 from $t2 to memory at -40($fp)
    # DEBUG: Spilled v_i_main_i_cp2_s2 from $t2 to memory at -4($fp)
    # Unconditional jump to I22
    sw $t2, -40($fp)
    sw $t2, -4($fp)
    j I22


    # ======================================
    # === B18_i38_i38 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B18 ===
    # Instr i38 Next-Use:
    #   v_argc_main_i_cp2_s2 -> N/A
    # === End of Next-Use Computation for Block B18 ===

    # Next-use information computed
    # TAC 38: 39: if v_argc_main_i_cp2_s2 > 1 goto I41
I39:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_argc_main_i_cp2_s2 > 1 goto I41
    # DEBUG: Loaded v_argc_main_i_cp2_s2 from memory at 8($fp)
    # DEBUG: v_argc_main_i_cp2_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # Branch to I41 if condition true
    lw $t0, 8($fp)
    li $t1, 1
    bgt $t0, $t1, I41


    # ======================================
    # === B19_i39_i39 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B19 ===
    # Instr i39 Next-Use:
    # === End of Next-Use Computation for Block B19 ===

    # Next-use information computed
    # TAC 39: 40: goto I43
I40:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I43
    j I43


    # ======================================
    # === B20_i40_i41 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B20 ===
    # Instr i41 Next-Use:
    # Instr i40 Next-Use:
    #   #t13 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B20 ===

    # Next-use information computed
    # TAC 40: 41: #t13 = 1
I41:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t13 = 1
    # DEBUG: #t13 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 41: 42: goto I44
I42:
    # --- Register Descriptor ---
    # $t0: [#t13] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t13 from $t0 to memory at -44($fp)
    # Unconditional jump to I44
    sw $t0, -44($fp)
    j I44


    # ======================================
    # === B21_i42_i42 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B21 ===
    # Instr i42 Next-Use:
    #   #t13 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B21 ===

    # Next-use information computed
    # TAC 42: 43: #t13 = 0
I43:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t13 = 0
    # DEBUG: #t13 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B21 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t13 from $t0 to memory at -44($fp)

    sw $t0, -44($fp)
    # ======================================
    # === B22_i43_i43 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B22 ===
    # Instr i43 Next-Use:
    #   #t13 -> N/A
    # === End of Next-Use Computation for Block B22 ===

    # Next-use information computed
    # TAC 43: 44: if #t13   goto I46
I44:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t13 ?? 0 goto I46
    # DEBUG: Loaded #t13 from memory at -44($fp)
    # DEBUG: #t13 in $t0
    # Branch to I46 if condition true
    lw $t0, -44($fp)
    bne $t0, $zero, I46


    # ======================================
    # === B23_i44_i44 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B23 ===
    # Instr i44 Next-Use:
    # === End of Next-Use Computation for Block B23 ===

    # Next-use information computed
    # TAC 44: 45: goto I52
I45:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I52
    j I52


    # ======================================
    # === B24_i45_i50 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B24 ===
    # Instr i50 Next-Use:
    #   #t17 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i49 Next-Use:
    #   #t16 -> N/A
    # Instr i48 Next-Use:
    # Instr i47 Next-Use:
    #   #t15 -> N/A
    #   #t16 -> N/A
    # Instr i46 Next-Use:
    #   #t14 -> N/A
    #   #t15 -> N/A
    #   v_argv_main_i_cp2_s2 -> N/A
    # Instr i45 Next-Use:
    #   #t14 -> N/A
    # === End of Next-Use Computation for Block B24 ===

    # Next-use information computed
    # TAC 45: 46: #t14 = 1 * 4
I46:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t14 = 1 mul 4
    # DEBUG: Loaded constant 1 into $t0
    # DEBUG: 1 in $t0
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t14 = result in $t2 (dirty)
    li $t0, 1
    li $t1, 4
    mul $t2, $t0, $t1

    # TAC 46: 47: #t15 = v_argv_main_i_cp2_s2 + #t14
I47:
    # --- Register Descriptor ---
    # $t2: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [$t2]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t15 = v_argv_main_i_cp2_s2 add #t14
    # DEBUG: Loaded v_argv_main_i_cp2_s2 from memory at 12($fp)
    # DEBUG: v_argv_main_i_cp2_s2 in $t0
    # DEBUG: #t14 in $t2
    # DEBUG: #t15 = result in $t1 (dirty)
    lw $t0, 12($fp)
    add $t1, $t0, $t2

    # TAC 47: 48: #t16 = * #t15
I48:
    # --- Register Descriptor ---
    # $t0: [v_argv_main_i_cp2_s2]
    # $t1: [#t15] (dirty)
    # $t2: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [$t2]
    # #t15: [$t1]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [$t0, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t16 = *#t15
    # DEBUG: Set dereference marker for #t16 from pointer #t15
    # DEBUG: Pointer #t15 already in $t1
    # DEBUG: Dereferenced *#t15 (int*) into $t0 using lw
    # DEBUG: #t16 = *#t15 in $t0 (dirty)
    lw $t0, 0($t1)

    # TAC 48: 49: param "First arg: %s\n"
I49:
    # --- Register Descriptor ---
    # $t0: [#t16] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [$t2]
    # #t15: [$t1]
    # #t16: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param "First arg: %s\n"
    # DEBUG: Collected parameter #1: "First arg: %s\n"

    # TAC 49: 50: param #t16
I50:
    # --- Register Descriptor ---
    # $t0: [#t16] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [$t2]
    # #t15: [$t1]
    # #t16: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param #t16
    # DEBUG: Collected parameter #2: #t16

    # TAC 50: 51: #t17 = call printf_cp1_variadic, 2
I51:
    # --- Register Descriptor ---
    # $t0: [#t16] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [$t2]
    # #t15: [$t1]
    # #t16: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t16 from $t0 to -56($fp)
    # DEBUG: Spilled #t15 from $t1 to -52($fp)
    # DEBUG: Spilled #t14 from $t2 to -48($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"First arg: %s\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t16
    # DEBUG: Loaded #t16 from memory at -56($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t0, -56($fp)
    sw $t1, -52($fp)
    sw $t2, -48($fp)
    la $a0, str_3
    addiu $sp, $sp, -4
    lw $t0, -56($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # End of block B24 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B25_i51_i51 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B25 ===
    # Instr i51 Next-Use:
    #   v_argc_main_i_cp2_s2 -> N/A
    # === End of Next-Use Computation for Block B25 ===

    # Next-use information computed
    # TAC 51: 52: if v_argc_main_i_cp2_s2 > 2 goto I54
I52:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_argc_main_i_cp2_s2 > 2 goto I54
    # DEBUG: Loaded v_argc_main_i_cp2_s2 from memory at 8($fp)
    # DEBUG: v_argc_main_i_cp2_s2 in $t0
    # DEBUG: Loaded constant 2 into $t1
    # DEBUG: 2 in $t1
    # Branch to I54 if condition true
    lw $t0, 8($fp)
    li $t1, 2
    bgt $t0, $t1, I54


    # ======================================
    # === B26_i52_i52 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B26 ===
    # Instr i52 Next-Use:
    # === End of Next-Use Computation for Block B26 ===

    # Next-use information computed
    # TAC 52: 53: goto I56
I53:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I56
    j I56


    # ======================================
    # === B27_i53_i54 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B27 ===
    # Instr i54 Next-Use:
    # Instr i53 Next-Use:
    #   #t18 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B27 ===

    # Next-use information computed
    # TAC 53: 54: #t18 = 1
I54:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t18 = 1
    # DEBUG: #t18 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 54: 55: goto I57
I55:
    # --- Register Descriptor ---
    # $t0: [#t18] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [$t0]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t18 from $t0 to memory at -60($fp)
    # Unconditional jump to I57
    sw $t0, -60($fp)
    j I57


    # ======================================
    # === B28_i55_i55 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B28 ===
    # Instr i55 Next-Use:
    #   #t18 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B28 ===

    # Next-use information computed
    # TAC 55: 56: #t18 = 0
I56:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t18 = 0
    # DEBUG: #t18 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B28 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t18 from $t0 to memory at -60($fp)

    sw $t0, -60($fp)
    # ======================================
    # === B29_i56_i56 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B29 ===
    # Instr i56 Next-Use:
    #   #t18 -> N/A
    # === End of Next-Use Computation for Block B29 ===

    # Next-use information computed
    # TAC 56: 57: if #t18   goto I59
I57:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t18 ?? 0 goto I59
    # DEBUG: Loaded #t18 from memory at -60($fp)
    # DEBUG: #t18 in $t0
    # Branch to I59 if condition true
    lw $t0, -60($fp)
    bne $t0, $zero, I59


    # ======================================
    # === B30_i57_i57 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B30 ===
    # Instr i57 Next-Use:
    # === End of Next-Use Computation for Block B30 ===

    # Next-use information computed
    # TAC 57: 58: goto I65
I58:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I65
    j I65


    # ======================================
    # === B31_i58_i63 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B31 ===
    # Instr i63 Next-Use:
    #   #t22 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i62 Next-Use:
    #   #t21 -> N/A
    # Instr i61 Next-Use:
    # Instr i60 Next-Use:
    #   #t20 -> N/A
    #   #t21 -> N/A
    # Instr i59 Next-Use:
    #   #t19 -> N/A
    #   #t20 -> N/A
    #   v_argv_main_i_cp2_s2 -> N/A
    # Instr i58 Next-Use:
    #   #t19 -> N/A
    # === End of Next-Use Computation for Block B31 ===

    # Next-use information computed
    # TAC 58: 59: #t19 = 2 * 4
I59:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t19 = 2 mul 4
    # DEBUG: Loaded constant 2 into $t0
    # DEBUG: 2 in $t0
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t19 = result in $t2 (dirty)
    li $t0, 2
    li $t1, 4
    mul $t2, $t0, $t1

    # TAC 59: 60: #t20 = v_argv_main_i_cp2_s2 + #t19
I60:
    # --- Register Descriptor ---
    # $t2: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t19: [$t2]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t20 = v_argv_main_i_cp2_s2 add #t19
    # DEBUG: Loaded v_argv_main_i_cp2_s2 from memory at 12($fp)
    # DEBUG: v_argv_main_i_cp2_s2 in $t0
    # DEBUG: #t19 in $t2
    # DEBUG: #t20 = result in $t1 (dirty)
    lw $t0, 12($fp)
    add $t1, $t0, $t2

    # TAC 60: 61: #t21 = * #t20
I61:
    # --- Register Descriptor ---
    # $t0: [v_argv_main_i_cp2_s2]
    # $t1: [#t20] (dirty)
    # $t2: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t19: [$t2]
    # #t2: [memory:-8($fp)]
    # #t20: [$t1]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [$t0, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t21 = *#t20
    # DEBUG: Set dereference marker for #t21 from pointer #t20
    # DEBUG: Pointer #t20 already in $t1
    # DEBUG: Dereferenced *#t20 (int*) into $t0 using lw
    # DEBUG: #t21 = *#t20 in $t0 (dirty)
    lw $t0, 0($t1)

    # TAC 61: 62: param "Second arg: %s\n"
I62:
    # --- Register Descriptor ---
    # $t0: [#t21] (dirty)
    # $t1: [#t20] (dirty)
    # $t2: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t19: [$t2]
    # #t2: [memory:-8($fp)]
    # #t20: [$t1]
    # #t21: [$t0]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param "Second arg: %s\n"
    # DEBUG: Collected parameter #1: "Second arg: %s\n"

    # TAC 62: 63: param #t21
I63:
    # --- Register Descriptor ---
    # $t0: [#t21] (dirty)
    # $t1: [#t20] (dirty)
    # $t2: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t19: [$t2]
    # #t2: [memory:-8($fp)]
    # #t20: [$t1]
    # #t21: [$t0]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param #t21
    # DEBUG: Collected parameter #2: #t21

    # TAC 63: 64: #t22 = call printf_cp1_variadic, 2
I64:
    # --- Register Descriptor ---
    # $t0: [#t21] (dirty)
    # $t1: [#t20] (dirty)
    # $t2: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t19: [$t2]
    # #t2: [memory:-8($fp)]
    # #t20: [$t1]
    # #t21: [$t0]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t21 from $t0 to -72($fp)
    # DEBUG: Spilled #t20 from $t1 to -68($fp)
    # DEBUG: Spilled #t19 from $t2 to -64($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Second arg: %s\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t21
    # DEBUG: Loaded #t21 from memory at -72($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t0, -72($fp)
    sw $t1, -68($fp)
    sw $t2, -64($fp)
    la $a0, str_4
    addiu $sp, $sp, -4
    lw $t0, -72($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # End of block B31 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B32_i64_i64 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B32 ===
    # Instr i64 Next-Use:
    #   v_argc_main_i_cp2_s2 -> N/A
    # === End of Next-Use Computation for Block B32 ===

    # Next-use information computed
    # TAC 64: 65: return v_argc_main_i_cp2_s2
I65:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t19: [memory:-64($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-68($fp)]
    # #t21: [memory:-72($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return v_argc_main_i_cp2_s2
    # DEBUG: Loaded v_argc_main_i_cp2_s2 from memory at 8($fp)
    # DEBUG: v_argc_main_i_cp2_s2 in $t0
    # DEBUG: Moved return value to $v0
    lw $t0, 8($fp)
    move $v0, $t0


    # ======================================
    # === B33_i65_i65 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B33 ===
    # Instr i65 Next-Use:
    #   main_i_cp2 -> N/A
    # === End of Next-Use Computation for Block B33 ===

    # Next-use information computed
    # TAC 65: 66: end function main_i_cp2
I66:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-36($fp)]
    # #t12: [memory:-40($fp)]
    # #t13: [memory:-44($fp)]
    # #t14: [memory:-48($fp)]
    # #t15: [memory:-52($fp)]
    # #t16: [memory:-56($fp)]
    # #t18: [memory:-60($fp)]
    # #t19: [memory:-64($fp)]
    # #t2: [memory:-8($fp)]
    # #t20: [memory:-68($fp)]
    # #t21: [memory:-72($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-20($fp)]
    # #t7: [memory:-24($fp)]
    # #t8: [memory:-28($fp)]
    # #t9: [memory:-32($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_cp2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main_i_cp2 ===
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
    # End of function: main_i_cp2


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

