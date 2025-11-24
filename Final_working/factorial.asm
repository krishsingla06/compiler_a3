    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 28

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Factorial result: %d\n""
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
    # Block B5: i6-i7
    # Block B6: i8-i8
    # Block B7: i9-i9
    # Block B8: i10-i10
    # Block B9: i11-i11
    # Block B10: i12-i12
    # Block B11: i13-i17
    # Block B12: i18-i18
    # Block B13: i19-i26
    # Block B14: i27-i27

.data
    # String Literals
str_0: .asciiz "Factorial result: %d\n"

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
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i4 Next-Use:
    #   v_n_factorial_i_s2 -> N/A
    # Instr i3 Next-Use:
    #   factorial_i -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : factorial_i
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
factorial_i:
    # Function: factorial_i
    # === Function Prologue for factorial_i ===
    # Frame size: 64 bytes
    addiu $sp, $sp, -64
    # Allocate 64 bytes (8 for $ra+$fp, 64 for locals/temps)
    sw $ra, 60($sp)
    # Save return address at 68($sp)
    sw $fp, 56($sp)
    # Save old frame pointer at 64($sp)
    addiu $fp, $sp, 56
    # Set new frame pointer (points to saved old $fp)

    # TAC 4: 5: if v_n_factorial_i_s2 == 0 goto I7
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_n_factorial_i_s2 == 0 goto I7
    # DEBUG: Loaded v_n_factorial_i_s2 from memory at 8($fp)
    # DEBUG: v_n_factorial_i_s2 in $t0
    # DEBUG: Loaded constant 0 into $t1
    # DEBUG: 0 in $t1
    # Branch to I7 if condition true
    lw $t0, 8($fp)
    li $t1, 0
    beq $t0, $t1, I7


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i5 Next-Use:
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: goto I9
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I9
    j I9


    # ======================================
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i7 Next-Use:
    # Instr i6 Next-Use:
    #   #t1 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: #t1 = 1
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    # DEBUG: #t1 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 7: 8: goto I10
I8:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)
    # Unconditional jump to I10
    sw $t0, -4($fp)
    j I10


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i8 Next-Use:
    #   #t1 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 8: 9: #t1 = 0
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    # DEBUG: #t1 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B6 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)

    sw $t0, -4($fp)
    # ======================================
    # === B7_i9_i9 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i9 Next-Use:
    #   #t1 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 9: 10: if #t1   goto I12
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t1 ?? 0 goto I12
    # DEBUG: Loaded #t1 from memory at -4($fp)
    # DEBUG: #t1 in $t0
    # Branch to I12 if condition true
    lw $t0, -4($fp)
    bne $t0, $zero, I12


    # ======================================
    # === B8_i10_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i10 Next-Use:
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 10: 11: goto I14
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I14
    j I14


    # ======================================
    # === B9_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i11 Next-Use:
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 11: 12: return 1
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 1
    # DEBUG: Return constant 1 in $v0
    li $v0, 1


    # ======================================
    # === B10_i12_i12 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i12 Next-Use:
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 12: 13: goto I19
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I19
    j I19


    # ======================================
    # === B11_i13_i17 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B11 ===
    # Instr i17 Next-Use:
    #   #t4 -> N/A
    # Instr i16 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    #   v_n_factorial_i_s2 -> N/A
    # Instr i15 Next-Use:
    #   #t3 -> N/A
    #   factorial_i -> N/A
    # Instr i14 Next-Use:
    #   #t2 -> N/A
    # Instr i13 Next-Use:
    #   #t2 -> N/A
    #   v_n_factorial_i_s2 -> i16
    # === End of Next-Use Computation for Block B11 ===

    # Next-use information computed
    # TAC 13: 14: #t2 = v_n_factorial_i_s2 - 1
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_n_factorial_i_s2 sub 1
    # DEBUG: Loaded v_n_factorial_i_s2 from memory at 8($fp)
    # DEBUG: v_n_factorial_i_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t2 = result in $t2 (dirty)
    lw $t0, 8($fp)
    li $t1, 1
    sub $t2, $t0, $t1

    # TAC 14: 15: param #t2
I15:
    # --- Register Descriptor ---
    # $t0: [v_n_factorial_i_s2]
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # param #t2
    # DEBUG: Collected parameter #1: #t2

    # TAC 15: 16: #t3 = call factorial_i, 1
I16:
    # --- Register Descriptor ---
    # $t0: [v_n_factorial_i_s2]
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t2]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [$t0]
    # --- End Storage Descriptor ---
    # Call factorial_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_n_factorial_i_s2 from $t0 to 8($fp)
    # DEBUG: Spilled #t2 from $t2 to -8($fp)
    # === End Caller-Save ===
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    # DEBUG: Loaded #t2 from memory at -8($fp)
    # DEBUG: Param 0 (#t2) in $t0
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Called factorial_i
    # DEBUG: Deallocate 4 bytes of parameter space
    # DEBUG: Return value from $v0 to $t1
    # DEBUG: #t3 = return value in $t1 (dirty)
    sw $t0, 8($fp)
    sw $t2, -8($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    jal factorial_i
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 16: 17: #t4 = v_n_factorial_i_s2 * #t3
I17:
    # --- Register Descriptor ---
    # $t1: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [$t1]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = v_n_factorial_i_s2 mul #t3
    # DEBUG: Loaded v_n_factorial_i_s2 from memory at 8($fp)
    # DEBUG: v_n_factorial_i_s2 in $t0
    # DEBUG: #t3 in $t1
    # DEBUG: #t4 = result in $t2 (dirty)
    lw $t0, 8($fp)
    mul $t2, $t0, $t1

    # TAC 17: 18: return #t4
I18:
    # --- Register Descriptor ---
    # $t0: [v_n_factorial_i_s2]
    # $t1: [#t3] (dirty)
    # $t2: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [$t1]
    # #t4: [$t2]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [$t0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 2 dirty registers
    # DEBUG: Spilled #t3 from $t1 to memory at -12($fp)
    # DEBUG: Spilled #t4 from $t2 to memory at -16($fp)
    # === Spilling all dirty registers before return ===
    # return #t4
    # DEBUG: #t4 in $t2
    # DEBUG: Moved return value to $v0
    sw $t1, -12($fp)
    sw $t2, -16($fp)
    move $v0, $t2


    # ======================================
    # === B12_i18_i18 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B12 ===
    # Instr i18 Next-Use:
    #   factorial_i -> N/A
    # === End of Next-Use Computation for Block B12 ===

    # Next-use information computed
    # TAC 18: 19: end function factorial_i
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for factorial_i ===
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
    # End of function: factorial_i


    # ======================================
    # === B13_i19_i26 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B13 ===
    # Instr i26 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i25 Next-Use:
    #   #t6 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i24 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i23 Next-Use:
    # Instr i22 Next-Use:
    #   #t5 -> N/A
    #   v_x_main_s2 -> N/A
    # Instr i21 Next-Use:
    #   #t5 -> N/A
    #   factorial_i -> N/A
    # Instr i20 Next-Use:
    # Instr i19 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B13 ===

    # Next-use information computed
    # TAC 19: 20: function begin : main
I20:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 56 bytes
    addiu $sp, $sp, -56
    # Allocate 56 bytes (8 for $ra+$fp, 56 for locals/temps)
    sw $ra, 52($sp)
    # Save return address at 60($sp)
    sw $fp, 48($sp)
    # Save old frame pointer at 56($sp)
    addiu $fp, $sp, 48
    # Set new frame pointer (points to saved old $fp)

    # TAC 20: 21: param 5
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 5
    # DEBUG: Collected parameter #1: 5

    # TAC 21: 22: #t5 = call factorial_i, 1
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call factorial_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    # DEBUG: Loaded constant param 0 = 5
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Called factorial_i
    # DEBUG: Deallocate 4 bytes of parameter space
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t5 = return value in $t0 (dirty)
    addiu $sp, $sp, -4
    li $t0, 5
    sw $t0, 0($sp)
    move $a0, $t0
    jal factorial_i
    addiu $sp, $sp, 4
    move $t0, $v0

    # TAC 22: 23: v_x_main_s2 = #t5
I23:
    # --- Register Descriptor ---
    # $t0: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = #t5
    # DEBUG: #t5 already in $t0
    # DEBUG: v_x_main_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_x_main_s2 to memory at -4($fp)
    sw $t0, -4($fp)

    # TAC 23: 24: param "Factorial result: %d\n"
I24:
    # --- Register Descriptor ---
    # $t0: [#t5, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param "Factorial result: %d\n"
    # DEBUG: Collected parameter #1: "Factorial result: %d\n"

    # TAC 24: 25: param v_x_main_s2
I25:
    # --- Register Descriptor ---
    # $t0: [#t5, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #2: v_x_main_s2

    # TAC 25: 26: #t6 = call printf_cp1_variadic, 2
I26:
    # --- Register Descriptor ---
    # $t0: [#t5, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t5 from $t0 to -8($fp)
    # DEBUG: Spilled v_x_main_s2 from $t0 to -4($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Factorial result: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_x_main_s2
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t0, -8($fp)
    sw $t0, -4($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 26: 27: return v_x_main_s2
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-8($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return v_x_main_s2
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # DEBUG: v_x_main_s2 in $t0
    # DEBUG: Moved return value to $v0
    lw $t0, -4($fp)
    move $v0, $t0


    # ======================================
    # === B14_i27_i27 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B14 ===
    # Instr i27 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B14 ===

    # Next-use information computed
    # TAC 27: 28: end function main
I28:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # #t4: [memory:-16($fp)]
    # #t5: [memory:-8($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_n_factorial_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-4($fp)]
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

