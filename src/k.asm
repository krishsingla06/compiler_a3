    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 25

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""i: %d\n""
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
    # Block B3: i3-i9
    # Block B4: i10-i10
    # Block B5: i11-i14
    # Block B6: i15-i16
    # Block B7: i17-i18
    # Block B8: i19-i19
    # Block B9: i20-i23
    # Block B10: i24-i24

.data
    # String Literals
str_0: .asciiz "i: %d\n"

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
    # === B3_i3_i9 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i8 Next-Use:
    #   #t4 -> N/A
    # Instr i7 Next-Use:
    #   #t3 -> N/A
    # Instr i6 Next-Use:
    #   #t2 -> N/A
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    #   v_i_main_s2 -> N/A
    # Instr i4 Next-Use:
    #   #t1 -> N/A
    # Instr i3 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : main
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
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

    # TAC 4: 5: #t1 = - 3
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = -3
    # DEBUG: Loaded negated constant -3 into $t0
    # DEBUG: #t1 in $t0 (dirty)
    li $t0, -3

    # TAC 5: 6: v_i_main_s2 = #t1
I6:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_i_main_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_i_main_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 6: 7: #t2 = - 3
I7:
    # --- Register Descriptor ---
    # $t0: [#t1, v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = -3
    # DEBUG: Loaded negated constant -3 into $t1
    # DEBUG: #t2 in $t1 (dirty)
    li $t1, -3

    # TAC 7: 8: #t3 = -3
I8:
    # --- Register Descriptor ---
    # $t0: [#t1, v_i_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = -3
    # DEBUG: #t3 = constant -3 loaded in $t2 (dirty)
    li $t2, -3

    # TAC 8: 9: #t4 = 1
I9:
    # --- Register Descriptor ---
    # $t0: [#t1, v_i_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = 1
    # DEBUG: #t4 = constant 1 loaded in $t3 (dirty)
    li $t3, 1

    # TAC 9: 10: if #t2 < #t3 goto I20
I10:
    # --- Register Descriptor ---
    # $t0: [#t1, v_i_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 4 dirty registers
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)
    # DEBUG: Spilled v_i_main_s2 from $t0 to memory at -8($fp)
    # DEBUG: Spilled #t2 from $t1 to memory at -12($fp)
    # DEBUG: Spilled #t3 from $t2 to memory at -16($fp)
    # DEBUG: Spilled #t4 from $t3 to memory at -20($fp)
    # if #t2 < #t3 goto I20
    # DEBUG: #t2 in $t1
    # DEBUG: #t3 in $t2
    # Branch to I20 if condition true
    sw $t0, -4($fp)
    sw $t0, -8($fp)
    sw $t1, -12($fp)
    sw $t2, -16($fp)
    sw $t3, -20($fp)
    blt $t1, $t2, I20


    # ======================================
    # === B4_i10_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i10 Next-Use:
    #   #t2 -> N/A
    #   #t4 -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 10: 11: if #t2 > #t4 goto I20
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t2 > #t4 goto I20
    # DEBUG: Loaded #t2 from memory at -12($fp)
    # DEBUG: #t2 in $t0
    # DEBUG: Loaded #t4 from memory at -20($fp)
    # DEBUG: #t4 in $t1
    # Branch to I20 if condition true
    lw $t0, -12($fp)
    lw $t1, -20($fp)
    bgt $t0, $t1, I20


    # ======================================
    # === B5_i11_i14 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i14 Next-Use:
    # Instr i13 Next-Use:
    #   v_i_main_s2 -> N/A
    # Instr i12 Next-Use:
    #   #t5 -> N/A
    # Instr i11 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    #   #t5 -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 11: 12: #t5 = #t2 - #t3
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = #t2 sub #t3
    # DEBUG: Loaded #t2 from memory at -12($fp)
    # DEBUG: #t2 in $t0
    # DEBUG: Loaded #t3 from memory at -16($fp)
    # DEBUG: #t3 in $t1
    # DEBUG: #t5 = result in $t2 (dirty)
    lw $t0, -12($fp)
    lw $t1, -16($fp)
    sub $t2, $t0, $t1

    # TAC 12: 13: goto_jump_table(0,#t5)
I13:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3]
    # $t2: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-12($fp)]
    # #t3: [$t1, memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [$t2]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # === Switch-Case Jump Table 0 ===
    # Jump table size: 5
    # DEBUG: Index in $t2
    # DEBUG: Using $t3 for comparison values
    # DEBUG: Spilling before branch to I16
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t5 from $t2 to memory at -24($fp)
    # DEBUG: if index == 0 goto I16
    # DEBUG: Spilling before branch to I20
    # DEBUG: No dirty registers to spill
    # DEBUG: if index == 1 goto I20
    # DEBUG: Spilling before branch to I18
    # DEBUG: No dirty registers to spill
    # DEBUG: if index == 2 goto I18
    # DEBUG: Spilling before branch to I20
    # DEBUG: No dirty registers to spill
    # DEBUG: if index == 3 goto I20
    # DEBUG: Spilling before branch to I14
    # DEBUG: No dirty registers to spill
    # DEBUG: if index == 4 goto I14
    # === End Jump Table ===
    sw $t2, -24($fp)
    li $t3, 0
    beq $t2, $t3, I16
    li $t3, 1
    beq $t2, $t3, I20
    li $t3, 2
    beq $t2, $t3, I18
    li $t3, 3
    beq $t2, $t3, I20
    li $t3, 4
    beq $t2, $t3, I14

    # TAC 13: 14: v_i_main_s2 = 10
I14:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3]
    # $t2: [#t5]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-12($fp)]
    # #t3: [$t1, memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [$t2, memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = 10
    # DEBUG: v_i_main_s2 = constant 10 loaded in $t3 (dirty)
    li $t3, 10

    # TAC 14: 15: goto I21
I15:
    # --- Register Descriptor ---
    # $t0: [#t2]
    # $t1: [#t3]
    # $t2: [#t5]
    # $t3: [v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0, memory:-12($fp)]
    # #t3: [$t1, memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [$t2, memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled v_i_main_s2 from $t3 to memory at -8($fp)
    # Unconditional jump to I21
    sw $t3, -8($fp)
    j I21


    # ======================================
    # === B6_i15_i16 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i16 Next-Use:
    # Instr i15 Next-Use:
    #   v_i_main_s2 -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 15: 16: v_i_main_s2 = 20
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = 20
    # DEBUG: v_i_main_s2 = constant 20 loaded in $t0 (dirty)
    li $t0, 20

    # TAC 16: 17: goto I21
I17:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled v_i_main_s2 from $t0 to memory at -8($fp)
    # Unconditional jump to I21
    sw $t0, -8($fp)
    j I21


    # ======================================
    # === B7_i17_i18 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i18 Next-Use:
    # Instr i17 Next-Use:
    #   v_i_main_s2 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 17: 18: v_i_main_s2 = 25
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = 25
    # DEBUG: v_i_main_s2 = constant 25 loaded in $t0 (dirty)
    li $t0, 25

    # TAC 18: 19: goto I21
I19:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled v_i_main_s2 from $t0 to memory at -8($fp)
    # Unconditional jump to I21
    sw $t0, -8($fp)
    j I21


    # ======================================
    # === B8_i19_i19 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i19 Next-Use:
    #   v_i_main_s2 -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 19: 20: v_i_main_s2 = 30
I20:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = 30
    # DEBUG: v_i_main_s2 = constant 30 loaded in $t0 (dirty)
    li $t0, 30

    # End of block B8 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled v_i_main_s2 from $t0 to memory at -8($fp)

    sw $t0, -8($fp)
    # ======================================
    # === B9_i20_i23 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i23 Next-Use:
    # Instr i22 Next-Use:
    #   #t6 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i21 Next-Use:
    #   v_i_main_s2 -> N/A
    # Instr i20 Next-Use:
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 20: 21: param "i: %d\n"
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param "i: %d\n"
    # DEBUG: Collected parameter #1: "i: %d\n"

    # TAC 21: 22: param v_i_main_s2
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_i_main_s2
    # DEBUG: Collected parameter #2: v_i_main_s2

    # TAC 22: 23: #t6 = call printf_cp1_variadic, 2
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"i: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_i_main_s2
    # DEBUG: Loaded v_i_main_s2 from memory at -8($fp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 23: 24: return 0
I24:
    # --- Register Descriptor ---
    # $t0: [v_i_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B10_i24_i24 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i24 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 24: 25: end function main
I25:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # #t4: [memory:-20($fp)]
    # #t5: [memory:-24($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_main_s2: [memory:-8($fp)]
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

