    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 29

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Testing int** parameter\n""
    # Added string literal: str_1 = ""Value: %d\n""
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
    # Block B3: i3-i6
    # Block B4: i7-i7
    # Block B5: i8-i8
    # Block B6: i9-i10
    # Block B7: i11-i11
    # Block B8: i12-i12
    # Block B9: i13-i13
    # Block B10: i14-i26
    # Block B11: i27-i27
    # Block B12: i28-i28

.data
    # String Literals
str_0: .asciiz "Testing int** parameter\n"
str_1: .asciiz "Value: %d\n"

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
    # === B3_i3_i6 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i6 Next-Use:
    #   v_i_main_i_ip2_s2 -> N/A
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i4 Next-Use:
    # Instr i3 Next-Use:
    #   main_i_ip2 -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : main_i_ip2
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main_i_ip2:
    # Function: main_i_ip2
    # === Function Prologue for main_i_ip2 ===
    # Frame size: 88 bytes
    addiu $sp, $sp, -88
    # Allocate 88 bytes (8 for $ra+$fp, 88 for locals/temps)
    sw $ra, 84($sp)
    # Save return address at 92($sp)
    sw $fp, 80($sp)
    # Save old frame pointer at 88($sp)
    addiu $fp, $sp, 80
    # Set new frame pointer (points to saved old $fp)

    # TAC 4: 5: param "Testing int** parameter\n"
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Testing int** parameter\n"
    # DEBUG: Collected parameter #1: "Testing int** parameter\n"

    # TAC 5: 6: #t1 = call printf_cp1_variadic, 1
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 0 arguments
    # DEBUG: format_param = '"Testing int** parameter\n"', first char = 34
    # Load format string literal address
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    la $a0, str_0
    jal __lib_printf

    # TAC 6: 7: v_i_main_i_ip2_s2 = 0
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_i_ip2_s2 = 0
    # DEBUG: v_i_main_i_ip2_s2 = constant 0 loaded in $t0 (dirty)
    # DEBUG: Saved variable v_i_main_i_ip2_s2 to home location -4($fp)
    li $t0, 0
    sw $t0, -4($fp)

    # End of block B3 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B4_i7_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i7 Next-Use:
    #   v_argc_main_i_ip2_s2 -> N/A
    #   v_i_main_i_ip2_s2 -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 7: 8: if v_i_main_i_ip2_s2 < v_argc_main_i_ip2_s2 goto I10
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_i_main_i_ip2_s2 < v_argc_main_i_ip2_s2 goto I10
    # DEBUG: Loaded v_i_main_i_ip2_s2 from memory at -4($fp)
    # DEBUG: v_i_main_i_ip2_s2 in $t0
    # DEBUG: Loaded v_argc_main_i_ip2_s2 from memory at 8($fp)
    # DEBUG: v_argc_main_i_ip2_s2 in $t1
    # Branch to I10 if condition true
    lw $t0, -4($fp)
    lw $t1, 8($fp)
    blt $t0, $t1, I10


    # ======================================
    # === B5_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i8 Next-Use:
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 8: 9: goto I12
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I12
    j I12


    # ======================================
    # === B6_i9_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i10 Next-Use:
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 9: 10: #t2 = 1
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
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
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t2 from $t0 to memory at -12($fp)
    # Unconditional jump to I13
    sw $t0, -12($fp)
    j I13


    # ======================================
    # === B7_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i11 Next-Use:
    #   #t2 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 11: 12: #t2 = 0
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 0
    # DEBUG: #t2 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B7 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t2 from $t0 to memory at -12($fp)

    sw $t0, -12($fp)
    # ======================================
    # === B8_i12_i12 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i12 Next-Use:
    #   #t2 -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 12: 13: if #t2   goto I15
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t2 ?? 0 goto I15
    # DEBUG: Loaded #t2 from memory at -12($fp)
    # DEBUG: #t2 in $t0
    # Branch to I15 if condition true
    lw $t0, -12($fp)
    bne $t0, $zero, I15


    # ======================================
    # === B9_i13_i13 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i13 Next-Use:
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 13: 14: goto I28
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I28
    j I28


    # ======================================
    # === B10_i14_i26 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i26 Next-Use:
    # Instr i25 Next-Use:
    #   #t10 -> N/A
    #   v_i_main_i_ip2_s2 -> N/A
    # Instr i24 Next-Use:
    #   #t10 -> N/A
    #   v_i_main_i_ip2_s2 -> N/A
    # Instr i23 Next-Use:
    #   #t9 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i22 Next-Use:
    #   v_val_main_i_ip2_s2 -> N/A
    # Instr i21 Next-Use:
    # Instr i20 Next-Use:
    #   #t8 -> N/A
    #   v_val_main_i_ip2_s2 -> N/A
    # Instr i19 Next-Use:
    #   #t7 -> N/A
    #   #t8 -> N/A
    # Instr i18 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i17 Next-Use:
    #   #t6 -> N/A
    # Instr i16 Next-Use:
    #   #t4 -> N/A
    #   #t5 -> N/A
    # Instr i15 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    #   v_matrix_main_i_ip2_s2 -> N/A
    # Instr i14 Next-Use:
    #   #t3 -> N/A
    #   v_i_main_i_ip2_s2 -> i24
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 14: 15: #t3 = v_i_main_i_ip2_s2 * 4
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t3 = v_i_main_i_ip2_s2 mul 4
    # DEBUG: Loaded v_i_main_i_ip2_s2 from memory at -4($fp)
    # DEBUG: v_i_main_i_ip2_s2 in $t0
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t3 = result in $t2 (dirty)
    lw $t0, -4($fp)
    li $t1, 4
    mul $t2, $t0, $t1

    # TAC 15: 16: #t4 = v_matrix_main_i_ip2_s2 + #t3
I16:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # #t4 = v_matrix_main_i_ip2_s2 add #t3
    # DEBUG: Loaded v_matrix_main_i_ip2_s2 from memory at 12($fp)
    # DEBUG: v_matrix_main_i_ip2_s2 in $t1
    # DEBUG: #t3 in $t2
    # DEBUG: #t4 = result in $t3 (dirty)
    lw $t1, 12($fp)
    add $t3, $t1, $t2

    # TAC 16: 17: #t5 = #t4
I17:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_ip2_s2]
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [$t0, memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: #t5 = #t4
    # DEBUG: #t4 already in $t3
    # DEBUG: #t5 now also in $t3 (dirty)
    # DEBUG: Saved #t5 to memory at -24($fp)
    sw $t3, -24($fp)

    # TAC 17: 18: #t6 = 0 * 4
I18:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_ip2_s2]
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4, #t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t3, memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [$t0, memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t6 = 0 mul 4
    # DEBUG: Loaded constant 0 into $t4
    # DEBUG: 0 in $t4
    # DEBUG: Loaded constant 4 into $t5
    # DEBUG: 4 in $t5
    # DEBUG: #t6 = result in $t6 (dirty)
    li $t4, 0
    li $t5, 4
    mul $t6, $t4, $t5

    # TAC 18: 19: #t7 = #t5 + #t6
I19:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_ip2_s2]
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4, #t5] (dirty)
    # $t6: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t3, memory:-24($fp)]
    # #t6: [$t6]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [$t0, memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t7 = #t5 add #t6
    # DEBUG: #t5 in $t3
    # DEBUG: #t6 in $t6
    # DEBUG: #t7 = result in $t4 (dirty)
    add $t4, $t3, $t6

    # TAC 19: 20: #t8 = * #t7
I20:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_ip2_s2]
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4, #t5] (dirty)
    # $t4: [#t7] (dirty)
    # $t6: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t3, memory:-24($fp)]
    # #t6: [$t6]
    # #t7: [$t4]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [$t0, memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t8 = *#t7
    # DEBUG: Set dereference marker for #t8 from pointer #t7
    # DEBUG: Pointer #t7 already in $t4
    # DEBUG: Dereferenced *#t7 (int*) into $t0 using lw
    # DEBUG: #t8 = *#t7 in $t0 (dirty)
    lw $t0, 0($t4)

    # TAC 20: 21: v_val_main_i_ip2_s2 = #t8
I21:
    # --- Register Descriptor ---
    # $t0: [#t8] (dirty)
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4, #t5] (dirty)
    # $t4: [#t7] (dirty)
    # $t6: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t3, memory:-24($fp)]
    # #t6: [$t6]
    # #t7: [$t4]
    # #t8: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_val_main_i_ip2_s2 = #t8
    # DEBUG: #t8 already in $t0
    # DEBUG: v_val_main_i_ip2_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_val_main_i_ip2_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 21: 22: param "Value: %d\n"
I22:
    # --- Register Descriptor ---
    # $t0: [#t8, v_val_main_i_ip2_s2] (dirty)
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4, #t5] (dirty)
    # $t4: [#t7] (dirty)
    # $t6: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t3, memory:-24($fp)]
    # #t6: [$t6]
    # #t7: [$t4]
    # #t8: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # v_val_main_i_ip2_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param "Value: %d\n"
    # DEBUG: Collected parameter #1: "Value: %d\n"

    # TAC 22: 23: param v_val_main_i_ip2_s2
I23:
    # --- Register Descriptor ---
    # $t0: [#t8, v_val_main_i_ip2_s2] (dirty)
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4, #t5] (dirty)
    # $t4: [#t7] (dirty)
    # $t6: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t3, memory:-24($fp)]
    # #t6: [$t6]
    # #t7: [$t4]
    # #t8: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # v_val_main_i_ip2_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_val_main_i_ip2_s2
    # DEBUG: Collected parameter #2: v_val_main_i_ip2_s2

    # TAC 23: 24: #t9 = call printf_cp1_variadic, 2
I24:
    # --- Register Descriptor ---
    # $t0: [#t8, v_val_main_i_ip2_s2] (dirty)
    # $t1: [v_matrix_main_i_ip2_s2]
    # $t2: [#t3] (dirty)
    # $t3: [#t4, #t5] (dirty)
    # $t4: [#t7] (dirty)
    # $t6: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t3, memory:-24($fp)]
    # #t6: [$t6]
    # #t7: [$t4]
    # #t8: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [$t1]
    # v_val_main_i_ip2_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t8 from $t0 to -36($fp)
    # DEBUG: Spilled v_val_main_i_ip2_s2 from $t0 to -8($fp)
    # DEBUG: Spilled v_matrix_main_i_ip2_s2 from $t1 to 12($fp)
    # DEBUG: Spilled #t3 from $t2 to -16($fp)
    # DEBUG: Spilled #t4 from $t3 to -20($fp)
    # DEBUG: Spilled #t5 from $t3 to -24($fp)
    # DEBUG: Spilled #t7 from $t4 to -32($fp)
    # DEBUG: Spilled #t6 from $t6 to -28($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Value: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_val_main_i_ip2_s2
    # DEBUG: Loaded v_val_main_i_ip2_s2 from memory at -8($fp)
    sw $t0, -36($fp)
    sw $t0, -8($fp)
    sw $t1, 12($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t2, -16($fp)
    sw $t3, -20($fp)
    sw $t3, -24($fp)
    sw $t4, -32($fp)
    sw $t6, -28($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 24: 25: #t10 = v_i_main_i_ip2_s2 + 1
I25:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [memory:12($fp)]
    # v_val_main_i_ip2_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t10 = v_i_main_i_ip2_s2 add 1
    # DEBUG: Loaded v_i_main_i_ip2_s2 from memory at -4($fp)
    # DEBUG: v_i_main_i_ip2_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t10 = result in $t2 (dirty)
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

    # TAC 25: 26: v_i_main_i_ip2_s2 = #t10
I26:
    # --- Register Descriptor ---
    # $t0: [v_i_main_i_ip2_s2]
    # $t2: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t2]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [$t0, memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [memory:12($fp)]
    # v_val_main_i_ip2_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_i_ip2_s2 = #t10
    # DEBUG: #t10 already in $t2
    # DEBUG: v_i_main_i_ip2_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_i_main_i_ip2_s2 now also in $t2 (dirty)
    # DEBUG: Saved v_i_main_i_ip2_s2 to memory at -4($fp)
    sw $t2, -4($fp)

    # TAC 26: 27: goto I8
I27:
    # --- Register Descriptor ---
    # $t2: [#t10, v_i_main_i_ip2_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [$t2]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [$t2, memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [memory:12($fp)]
    # v_val_main_i_ip2_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t10 from $t2 to memory at -40($fp)
    # DEBUG: Spilled v_i_main_i_ip2_s2 from $t2 to memory at -4($fp)
    # Unconditional jump to I8
    sw $t2, -40($fp)
    sw $t2, -4($fp)
    j I8


    # ======================================
    # === B11_i27_i27 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B11 ===
    # Instr i27 Next-Use:
    # === End of Next-Use Computation for Block B11 ===

    # Next-use information computed
    # TAC 27: 28: return 0
I28:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-40($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [memory:12($fp)]
    # v_val_main_i_ip2_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B12_i28_i28 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B12 ===
    # Instr i28 Next-Use:
    #   main_i_ip2 -> N/A
    # === End of Next-Use Computation for Block B12 ===

    # Next-use information computed
    # TAC 28: 29: end function main_i_ip2
I29:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-40($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # #t8: [memory:-36($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_i_ip2_s2: [memory:-4($fp)]
    # v_matrix_main_i_ip2_s2: [memory:12($fp)]
    # v_val_main_i_ip2_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main_i_ip2 ===
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
    # End of function: main_i_ip2


    # End of code
    # ======================================
    #   Including Runtime Library Functions
    # ======================================

#==============================================================================
# RUNTIME LIBRARY FUNCTIONS
# The following functions are imported from the runtime library
#==============================================================================

#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

