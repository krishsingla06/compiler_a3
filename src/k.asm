    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 33

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""%d\n""
    # Found 1 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i3
    # Block B3: i4-i4
    # Block B4: i5-i8
    # Block B5: i9-i10
    # Block B6: i11-i28
    # Block B7: i29-i32

.data
    # String Literals
str_0: .asciiz "%d\n"

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
    #   b -> N/A
    # Instr i2 Next-Use:
    #   B::funcB -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: function begin : B::funcB
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
B__funcB:
    # Function: B::funcB
    # === Function Prologue for B::funcB ===
    # Frame size: 40 bytes
    addiu $sp, $sp, -40
    # Allocate 40 bytes (8 for $ra+$fp, 40 for locals/temps)
    sw $ra, 36($sp)
    # Save return address at 44($sp)
    sw $fp, 32($sp)
    # Save old frame pointer at 40($sp)
    addiu $fp, $sp, 32
    # Set new frame pointer (points to saved old $fp)

    # TAC 3: 4: return b
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return b
    # DEBUG: 'b' is a member variable in B::funcB
    # DEBUG: Loading member variable: b
    # DEBUG: Member 'b' at offset 4 in class B
    # DEBUG: Loaded 'this' pointer from 8($fp) into $t0
    # DEBUG: Loaded member 'b' value into $t0
    # DEBUG: b in $t0
    # DEBUG: Moved return value to $v0
    lw $t0, 8($fp)
    addiu $t0, $t0, 4
    lw $t0, 0($t0)
    move $v0, $t0


    # ======================================
    # === B3_i4_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i4 Next-Use:
    #   B::funcB -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 4: 5: end function B::funcB
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for B::funcB ===
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
    # End of function: B::funcB


    # ======================================
    # === B4_i5_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i8 Next-Use:
    #   B::B -> N/A
    # Instr i7 Next-Use:
    #   yy -> N/A
    # Instr i6 Next-Use:
    #   b -> N/A
    # Instr i5 Next-Use:
    #   B::B -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 15: 16: function begin : main
I16:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 96 bytes
    addiu $sp, $sp, -96
    # Allocate 96 bytes (8 for $ra+$fp, 96 for locals/temps)
    sw $ra, 92($sp)
    # Save return address at 100($sp)
    sw $fp, 88($sp)
    # Save old frame pointer at 96($sp)
    addiu $fp, $sp, 88
    # Set new frame pointer (points to saved old $fp)

    # TAC 12: 13: #t1 = & v_b1_main_s2
I13:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_b1_main_s2
    # DEBUG: #t1 = address of v_b1_main_s2 at -8($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t1 to memory at -12($fp)
    addiu $t0, $fp, -8
    sw $t0, -12($fp)

    # TAC 13: 14: param #t1
I14:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t1
    # DEBUG: Collected parameter #1: #t1

    # TAC 14: 15: call B::B, 1
I15:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0, memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call B::B with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t1 from $t0 to -12($fp)
    # === End Caller-Save ===
    # === Class member function call: B::B ===
    # Constructor: yes, Destructor: no, Member function: yes
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    # DEBUG: Loaded #t1 from memory at -12($fp)
    # DEBUG: Param 0 (#t1) in $t0
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Called B::B
    # DEBUG: Deallocate 4 bytes of parameter space
    # DEBUG: Return value from $v0 to $t1
    # DEBUG:  = return value in $t1 (dirty)
    sw $t0, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -12($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    jal B__B
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 15: 16: #t2 = & v_b1_main_s2
I16:
    # --- Register Descriptor ---
    # $t1: [] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t1]
    # #t1: [memory:-12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = &v_b1_main_s2
    # DEBUG: Spilled  from $t1 to home location 0($fp)
    # DEBUG: #t2 = address of v_b1_main_s2 at -8($fp)
    # DEBUG: #t2 (pointer) in $t1 (dirty)
    # DEBUG: Also stored #t2 to memory at -16($fp)
    sw $t1, 0($fp)
    addiu $t1, $fp, -8
    sw $t1, -16($fp)

    # TAC 16: 17: #t3 = #t2 + 4
I17:
    # --- Register Descriptor ---
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [$t1, memory:-16($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add 4
    # DEBUG: #t2 in $t1
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: #t3 = result in $t2 (dirty)
    li $t0, 4
    add $t2, $t1, $t0

    # TAC 17: 18: #t4 = * #t3
I18:
    # --- Register Descriptor ---
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [$t1, memory:-16($fp)]
    # #t3: [$t2]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = *#t3
    # DEBUG: Set dereference marker for #t4 from pointer #t3
    # DEBUG: Pointer #t3 already in $t2
    # DEBUG: Spilled #t2 from $t1 to home location -16($fp)
    # DEBUG: Dereferenced *#t3 (int*) into $t1 using lw
    # DEBUG: #t4 = *#t3 in $t1 (dirty)
    sw $t1, -16($fp)
    lw $t1, 0($t2)

    # TAC 18: 19: #t4 = 10
I19:
    # --- Register Descriptor ---
    # $t1: [#t4] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t2]
    # #t4: [$t1]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = 10
    # DEBUG: Detected store-indirect pattern: *ptr = 10
    # DEBUG: Pointer #t3 in $t2
    # DEBUG: Stored 10 through pointer to member
    li $t0, 10
    sw $t0, 0($t2)

    # TAC 19: 20: #t5 = & v_b1_main_s2
I20:
    # --- Register Descriptor ---
    # $t1: [#t4] (dirty)
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t2]
    # #t4: [$t1]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = &v_b1_main_s2
    # DEBUG: Spilled #t3 from $t2 to home location -20($fp)
    # DEBUG: #t5 = address of v_b1_main_s2 at -8($fp)
    # DEBUG: #t5 (pointer) in $t2 (dirty)
    # DEBUG: Also stored #t5 to memory at -28($fp)
    sw $t2, -20($fp)
    addiu $t2, $fp, -8
    sw $t2, -28($fp)

    # TAC 20: 21: #t6 = #t5 + 4
I21:
    # --- Register Descriptor ---
    # $t1: [#t4] (dirty)
    # $t2: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t1]
    # #t5: [$t2, memory:-28($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = #t5 add 4
    # DEBUG: #t5 in $t2
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: #t6 = result in $t3 (dirty)
    li $t0, 4
    add $t3, $t2, $t0

    # TAC 21: 22: #t7 = * #t6
I22:
    # --- Register Descriptor ---
    # $t1: [#t4] (dirty)
    # $t2: [#t5] (dirty)
    # $t3: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t1]
    # #t5: [$t2, memory:-28($fp)]
    # #t6: [$t3]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = *#t6
    # DEBUG: Set dereference marker for #t7 from pointer #t6
    # DEBUG: Pointer #t6 already in $t3
    # DEBUG: Spilled #t5 from $t2 to home location -28($fp)
    # DEBUG: Dereferenced *#t6 (int*) into $t2 using lw
    # DEBUG: #t7 = *#t6 in $t2 (dirty)
    sw $t2, -28($fp)
    lw $t2, 0($t3)

    # TAC 22: 23: param "%d\n"
I23:
    # --- Register Descriptor ---
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t1]
    # #t5: [memory:-28($fp)]
    # #t6: [$t3]
    # #t7: [$t2]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 23: 24: param #t7
I24:
    # --- Register Descriptor ---
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t1]
    # #t5: [memory:-28($fp)]
    # #t6: [$t3]
    # #t7: [$t2]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t7
    # DEBUG: Collected parameter #2: #t7

    # TAC 24: 25: #t8 = call printf_cp1_variadic, 2
I25:
    # --- Register Descriptor ---
    # $t1: [#t4] (dirty)
    # $t2: [#t7] (dirty)
    # $t3: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [$t1]
    # #t5: [memory:-28($fp)]
    # #t6: [$t3]
    # #t7: [$t2]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t4 from $t1 to -24($fp)
    # DEBUG: Spilled #t7 from $t2 to -36($fp)
    # DEBUG: Spilled #t6 from $t3 to -32($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t7
    # DEBUG: Loaded #t7 from memory at -36($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t1, -24($fp)
    sw $t2, -36($fp)
    sw $t3, -32($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -36($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 25: 26: #t9 = & v_b1_main_s2
I26:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t9 = &v_b1_main_s2
    # DEBUG: #t9 = address of v_b1_main_s2 at -8($fp)
    # DEBUG: #t9 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t9 to memory at -40($fp)
    addiu $t0, $fp, -8
    sw $t0, -40($fp)

    # TAC 26: 27: param #t9
I27:
    # --- Register Descriptor ---
    # $t0: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # #t9: [$t0, memory:-40($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t9
    # DEBUG: Collected parameter #1: #t9

    # TAC 27: 28: #t10 = call B::funcB, 1
I28:
    # --- Register Descriptor ---
    # $t0: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # #t9: [$t0, memory:-40($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call B::funcB with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t9 from $t0 to -40($fp)
    # === End Caller-Save ===
    # === Class member function call: B::funcB ===
    # Constructor: no, Destructor: no, Member function: yes
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    # DEBUG: Loaded #t9 from memory at -40($fp)
    # DEBUG: Param 0 (#t9) in $t0
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Called B::funcB
    # DEBUG: Deallocate 4 bytes of parameter space
    # DEBUG: Return value from $v0 to $t1
    # DEBUG: #t10 = return value in $t1 (dirty)
    sw $t0, -40($fp)
    addiu $sp, $sp, -4
    lw $t0, -40($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    jal B__funcB
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 28: 29: return 0
I29:
    # --- Register Descriptor ---
    # $t1: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t10: [$t1]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t10 from $t1 to memory at -44($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    sw $t1, -44($fp)
    li $v0, 0


    # ======================================
    # === B7_i29_i32 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i32 Next-Use:
    #   main -> N/A
    # Instr i31 Next-Use:
    #   B::~B -> N/A
    # Instr i30 Next-Use:
    #   #t11 -> N/A
    # Instr i29 Next-Use:
    #   #t11 -> N/A
    #   v_b1_main_s2 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 29: 30: #t11 = & v_b1_main_s2
I30:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t10: [memory:-44($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t11 = &v_b1_main_s2
    # DEBUG: #t11 = address of v_b1_main_s2 at -8($fp)
    # DEBUG: #t11 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t11 to memory at -48($fp)
    addiu $t0, $fp, -8
    sw $t0, -48($fp)

    # TAC 30: 31: param #t11
I31:
    # --- Register Descriptor ---
    # $t0: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [$t0, memory:-48($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t11
    # DEBUG: Collected parameter #1: #t11

    # TAC 31: 32: call B::~B, 1
I32:
    # --- Register Descriptor ---
    # $t0: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [memory:0($fp)]
    # #t1: [memory:-12($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [$t0, memory:-48($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call B::~B with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t11 from $t0 to -48($fp)
    # === End Caller-Save ===
    # === Class member function call: B::~B ===
    # Constructor: no, Destructor: yes, Member function: yes
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    # DEBUG: Loaded #t11 from memory at -48($fp)
    # DEBUG: Param 0 (#t11) in $t0
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Called B::~B
    # DEBUG: Deallocate 4 bytes of parameter space
    # DEBUG: Return value from $v0 to $t1
    # DEBUG:  = return value in $t1 (dirty)
    sw $t0, -48($fp)
    addiu $sp, $sp, -4
    lw $t0, -48($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    jal B___dtor_B
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 32: 33: end function main
I33:
    # --- Register Descriptor ---
    # $t1: [] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t1]
    # #t1: [memory:-12($fp)]
    # #t10: [memory:-44($fp)]
    # #t11: [memory:-48($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # #t4: [memory:-24($fp)]
    # #t5: [memory:-28($fp)]
    # #t6: [memory:-32($fp)]
    # #t7: [memory:-36($fp)]
    # #t9: [memory:-40($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
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

