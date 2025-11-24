    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 26

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""%d %f %c""
    # Added string literal: str_1 = ""Integer: %d\n""
    # Added string literal: str_2 = ""Float: %f\n""
    # Added string literal: str_3 = ""Character: %c\n""
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
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i24
    # Block B6: i25-i25

.data
    # String Literals
str_0: .asciiz "%d %f %c"
str_3: .asciiz "Character: %c\n"
str_2: .asciiz "Float: %f\n"
str_1: .asciiz "Integer: %d\n"

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
    # === B5_i6_i24 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i24 Next-Use:
    # Instr i23 Next-Use:
    #   #t7 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i22 Next-Use:
    #   v_z_main_s2 -> N/A
    # Instr i21 Next-Use:
    # Instr i20 Next-Use:
    #   #t6 -> N/A
    #   printf_cp1_variadic -> i23
    # Instr i19 Next-Use:
    #   v_y_main_s2 -> N/A
    # Instr i18 Next-Use:
    # Instr i17 Next-Use:
    #   #t5 -> N/A
    #   printf_cp1_variadic -> i20
    # Instr i16 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i15 Next-Use:
    # Instr i14 Next-Use:
    #   #t4 -> N/A
    #   scanf_cp1_variadic -> N/A
    # Instr i13 Next-Use:
    #   #t3 -> N/A
    # Instr i12 Next-Use:
    #   #t2 -> N/A
    # Instr i11 Next-Use:
    #   #t1 -> N/A
    # Instr i10 Next-Use:
    # Instr i9 Next-Use:
    #   #t3 -> N/A
    #   v_z_main_s2 -> N/A
    # Instr i8 Next-Use:
    #   #t2 -> N/A
    #   v_y_main_s2 -> N/A
    # Instr i7 Next-Use:
    #   #t1 -> N/A
    #   v_x_main_s2 -> N/A
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
    # Frame size: 72 bytes
    addiu $sp, $sp, -72
    # Allocate 72 bytes (8 for $ra+$fp, 72 for locals/temps)
    sw $ra, 68($sp)
    # Save return address at 76($sp)
    sw $fp, 64($sp)
    # Save old frame pointer at 72($sp)
    addiu $fp, $sp, 64
    # Set new frame pointer (points to saved old $fp)

    # TAC 7: 8: #t1 = & v_x_main_s2
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_x_main_s2
    # DEBUG: #t1 = address of v_x_main_s2 at -4($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t1 to memory at -16($fp)
    addiu $t0, $fp, -4
    sw $t0, -16($fp)

    # TAC 8: 9: #t2 = & v_y_main_s2
I9:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-16($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = &v_y_main_s2
    # DEBUG: #t2 = address of v_y_main_s2 at -8($fp)
    # DEBUG: #t2 (pointer) in $t1 (dirty)
    # DEBUG: Also stored #t2 to memory at -20($fp)
    addiu $t1, $fp, -8
    sw $t1, -20($fp)

    # TAC 9: 10: #t3 = & v_z_main_s2
I10:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-16($fp)]
    # #t2: [$t1, memory:-20($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = &v_z_main_s2
    # DEBUG: #t3 = address of v_z_main_s2 at -12($fp)
    # DEBUG: #t3 (pointer) in $t2 (dirty)
    # DEBUG: Also stored #t3 to memory at -24($fp)
    addiu $t2, $fp, -12
    sw $t2, -24($fp)

    # TAC 10: 11: param "%d %f %c"
I11:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-16($fp)]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%d %f %c"
    # DEBUG: Collected parameter #1: "%d %f %c"

    # TAC 11: 12: param #t1
I12:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-16($fp)]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t1
    # DEBUG: Collected parameter #2: #t1

    # TAC 12: 13: param #t2
I13:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-16($fp)]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t2
    # DEBUG: Collected parameter #3: #t2

    # TAC 13: 14: param #t3
I14:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-16($fp)]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t3
    # DEBUG: Collected parameter #4: #t3

    # TAC 14: 15: #t4 = call scanf_cp1_variadic, 4
I15:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-16($fp)]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2, memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call scanf_cp1_variadic with 4 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t1 from $t0 to -16($fp)
    # DEBUG: Spilled #t2 from $t1 to -20($fp)
    # DEBUG: Spilled #t3 from $t2 to -24($fp)
    # === End Caller-Save ===
    # === Call library function: scanf (variadic) ===
    # Scanf: format string + 3 argument addresses
    # Load format string literal address
    # Store argument addresses on stack
    # Arg 0 address: #t1
    # DEBUG: Loaded #t1 from memory at -16($fp)
    # DEBUG: Loaded address from temporary #t1 into $t0
    # Arg 1 address: #t2
    # DEBUG: Loaded #t2 from memory at -20($fp)
    # DEBUG: Loaded address from temporary #t2 into $t1
    # Arg 2 address: #t3
    # DEBUG: Loaded #t3 from memory at -24($fp)
    # DEBUG: Loaded address from temporary #t3 into $t2
    sw $t0, -16($fp)
    sw $t1, -20($fp)
    # DEBUG: Invalidating all cached values after scanf
    # === End scanf ===
    sw $t2, -24($fp)
    la $a0, str_0
    addiu $sp, $sp, -12
    lw $t0, -16($fp)
    sw $t0, 0($sp)
    lw $t1, -20($fp)
    sw $t1, 4($sp)
    lw $t2, -24($fp)
    sw $t2, 8($sp)
    jal __lib_scanf
    addiu $sp, $sp, 12

    # TAC 15: 16: param "Integer: %d\n"
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Integer: %d\n"
    # DEBUG: Collected parameter #1: "Integer: %d\n"

    # TAC 16: 17: param v_x_main_s2
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #2: v_x_main_s2

    # TAC 17: 18: #t5 = call printf_cp1_variadic, 2
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Integer: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_x_main_s2
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 18: 19: param "Float: %f\n"
I19:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # param "Float: %f\n"
    # DEBUG: Collected parameter #1: "Float: %f\n"

    # TAC 19: 20: param v_y_main_s2
I20:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # param v_y_main_s2
    # DEBUG: Collected parameter #2: v_y_main_s2

    # TAC 20: 21: #t6 = call printf_cp1_variadic, 2
I21:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_x_main_s2 from $t0 to -4($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Float: %f\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_y_main_s2
    # DEBUG: Loaded float v_y_main_s2 from -8($fp) into $f0
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -4($fp)
    la $a0, str_2
    addiu $sp, $sp, -4
    l.s $f0, -8($fp)
    swc1 $f0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 21: 22: param "Character: %c\n"
I22:
    # --- Register Descriptor ---
    # $f0: [v_y_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f0]
    # --- End Storage Descriptor ---
    # param "Character: %c\n"
    # DEBUG: Collected parameter #1: "Character: %c\n"

    # TAC 22: 23: param v_z_main_s2
I23:
    # --- Register Descriptor ---
    # $f0: [v_y_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f0]
    # --- End Storage Descriptor ---
    # param v_z_main_s2
    # DEBUG: Collected parameter #2: v_z_main_s2

    # TAC 23: 24: #t7 = call printf_cp1_variadic, 2
I24:
    # --- Register Descriptor ---
    # $f0: [v_y_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [$f0]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled float v_y_main_s2 from $f0 to -8($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Character: %c\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_z_main_s2
    # DEBUG: Loaded v_z_main_s2 from memory at -12($fp)
    # Deallocate variadic args space
    # === End printf ===
    swc1 $f0, -8($fp)
    la $a0, str_3
    addiu $sp, $sp, -4
    lw $t0, -12($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 24: 25: return 0
I25:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B6_i25_i25 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i25 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 25: 26: end function main
I26:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_y_main_s2: [memory:-8($fp)]
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
__lib_scanf:
    # Save registers
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $fp, 8($sp)
    sw $a0, 4($sp)  # Save format string
    sw $s0, 0($sp)  # Save $s0
    move $fp, $sp
    
    # Format string is in $a0
    move $s0, $a0  # $s0 = format string pointer
    
    # Parameter pointer - addresses of variables to store into
    addiu $t0, $fp, 16  # Points to variadic args (addresses) on stack
    
scanf_loop:
    # Load next character from format string
    lb $t1, 0($s0)
    beqz $t1, scanf_end
    
    # Check if it's a format specifier '%'
    li $t2, 37  # ASCII '%'
    bne $t1, $t2, scanf_continue  # Skip non-format chars
    
    # It's a format specifier, check next character
    addiu $s0, $s0, 1
    lb $t1, 0($s0)
    beqz $t1, scanf_end
    
    # Check format type
    li $t2, 100  # ASCII 'd' - integer
    beq $t1, $t2, scanf_int
    
    li $t2, 102  # ASCII 'f' - float
    beq $t1, $t2, scanf_float
    
    li $t2, 99   # ASCII 'c' - char
    beq $t1, $t2, scanf_char
    
    li $t2, 115  # ASCII 's' - string
    beq $t1, $t2, scanf_string
    
    # Unknown format, skip
    j scanf_continue

scanf_int:
    # Read integer (syscall 5)
    li $v0, 5
    syscall
    # $v0 now contains the integer
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    sw $v0, 0($t3)   # Store integer at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_float:
    # Read float (syscall 6)
    li $v0, 6
    syscall
    # $f0 now contains the float
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    s.s $f0, 0($t3)  # Store float at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_char:
    # Read character (syscall 12)
    li $v0, 12
    syscall
    # $v0 now contains the character
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    sb $v0, 0($t3)   # Store byte (char) at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_string:
    # Read string (syscall 8)
    # Need buffer address and max length
    lw $a0, 0($t0)   # $a0 = buffer address from stack
    li $a1, 256      # Max length (you can adjust this)
    li $v0, 8
    syscall
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_continue:
    # Move to next character in format string
    addiu $s0, $s0, 1
    j scanf_loop

scanf_end:
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

