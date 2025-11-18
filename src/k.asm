    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 27

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Initial value of global_val: %d\n""
    # Added string literal: str_1 = ""Before: global_val = %d\n""
    # Added string literal: str_2 = ""After:  global_val = %d\n""
    # Found 3 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated global/static variable 'v_another_global_s1' at offset 0($gp)
    # Allocated global/static variable 'v_global_val_s1' at offset 4($gp)
    # Allocated space for 2 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i6
    # Block B4: i7-i12
    # Block B5: i13-i25
    # Block B6: i26-i26

.data
    # String Literals
str_2: .asciiz "After:  global_val = %d\n"
str_1: .asciiz "Before: global_val = %d\n"
str_0: .asciiz "Initial value of global_val: %d\n"

    # Global and Static Variables
v_another_global_s1: .word 0  # int (global/static) at 0($gp)
v_global_val_s1: .word 0  # int (global/static) at 4($gp)

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
    # DEBUG: Parameter 0 (v_format_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_format_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_format_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
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
    #   set_globals -> N/A
    # Instr i5 Next-Use:
    #   v_another_global_s1 -> N/A
    # Instr i4 Next-Use:
    #   v_global_val_s1 -> N/A
    # Instr i3 Next-Use:
    #   set_globals -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : set_globals
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
set_globals:
    # Function: set_globals
    # === Function Prologue for set_globals ===
    # Frame size: 48 bytes
    addiu $sp, $sp, -48
    # Allocate 48 bytes (8 for $ra+$fp, 48 for locals/temps)
    sw $ra, 44($sp)
    # Save return address at 52($sp)
    sw $fp, 40($sp)
    # Save old frame pointer at 48($sp)
    addiu $fp, $sp, 40
    # Set new frame pointer (points to saved old $fp)

    # TAC 4: 5: v_global_val_s1 = 42
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_global_val_s1 = 42
    # DEBUG: v_global_val_s1 = constant 42 loaded in $t0 (dirty)
    # DEBUG: Saved global/static v_global_val_s1 to memory at 4($gp)
    li $t0, 42
    sw $t0, 4($gp)

    # TAC 5: 6: v_another_global_s1 = 99
I6:
    # --- Register Descriptor ---
    # $t0: [v_global_val_s1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [$t0, memory:4($gp)]
    # --- End Storage Descriptor ---
    # Assignment: v_another_global_s1 = 99
    # DEBUG: v_another_global_s1 = constant 99 loaded in $t1 (dirty)
    # DEBUG: Saved global/static v_another_global_s1 to memory at 0($gp)
    li $t1, 99
    sw $t1, 0($gp)

    # TAC 6: 7: end function set_globals
I7:
    # --- Register Descriptor ---
    # $t0: [v_global_val_s1] (dirty)
    # $t1: [v_another_global_s1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_another_global_s1: [$t1, memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [$t0, memory:4($gp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for set_globals ===
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
    # End of function: set_globals


    # ======================================
    # === B4_i7_i12 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i12 Next-Use:
    #   store_global_through_pointer -> N/A
    # Instr i11 Next-Use:
    #   #t2 -> N/A
    #   v_another_global_s1 -> N/A
    # Instr i10 Next-Use:
    #   #t2 -> N/A
    #   v_p_store_global_through_pointer_s2 -> N/A
    # Instr i9 Next-Use:
    #   #t1 -> N/A
    #   v_p_store_global_through_pointer_s2 -> N/A
    # Instr i8 Next-Use:
    #   #t1 -> N/A
    #   v_global_val_s1 -> N/A
    # Instr i7 Next-Use:
    #   store_global_through_pointer -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 7: 8: function begin : store_global_through_pointer
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # --- End Storage Descriptor ---
store_global_through_pointer:
    # Function: store_global_through_pointer
    # === Function Prologue for store_global_through_pointer ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)

    # TAC 8: 9: #t1 = & v_global_val_s1
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_global_val_s1
    # DEBUG: #t1 = address of global/static v_global_val_s1 at 4($gp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    addiu $t0, $gp, 4

    # TAC 9: 10: v_p_store_global_through_pointer_s2 = #t1
I10:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # --- End Storage Descriptor ---
    # Assignment: v_p_store_global_through_pointer_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_p_store_global_through_pointer_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_p_store_global_through_pointer_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 10: 11: #t2 = v_p_store_global_through_pointer_s2
I11:
    # --- Register Descriptor ---
    # $t0: [#t1, v_p_store_global_through_pointer_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = v_p_store_global_through_pointer_s2
    # DEBUG: v_p_store_global_through_pointer_s2 already in $t0
    # DEBUG: #t2 now also in $t0 (dirty)
    # DEBUG: Saved #t2 to memory at -12($fp)
    sw $t0, -12($fp)

    # TAC 11: 12: *(#t2) = v_another_global_s1
I12:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2, v_p_store_global_through_pointer_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0, memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # *#t2 = v_another_global_s1
    # DEBUG: Pointer #t2 in $t0
    # DEBUG: Loaded global/static v_another_global_s1 from 0($gp)
    # DEBUG: Integer value v_another_global_s1 in $t1
    # DEBUG: Stored integer v_another_global_s1 through pointer #t2
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_p_store_global_through_pointer_s2 in $t0
    # DEBUG: Invalidating cached value of v_another_global_s1 in $t1
    lw $t1, 0($gp)
    sw $t1, 0($t0)

    # TAC 12: 13: end function store_global_through_pointer
I13:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0, memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for store_global_through_pointer ===
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
    # End of function: store_global_through_pointer


    # ======================================
    # === B5_i13_i25 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i25 Next-Use:
    # Instr i24 Next-Use:
    #   #t7 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i23 Next-Use:
    #   v_global_val_s1 -> N/A
    # Instr i22 Next-Use:
    # Instr i21 Next-Use:
    #   #t6 -> N/A
    #   store_global_through_pointer -> N/A
    # Instr i20 Next-Use:
    #   #t5 -> N/A
    #   printf_cp1_variadic -> i24
    # Instr i19 Next-Use:
    #   v_global_val_s1 -> N/A
    # Instr i18 Next-Use:
    # Instr i17 Next-Use:
    #   #t4 -> N/A
    #   set_globals -> N/A
    # Instr i16 Next-Use:
    #   #t3 -> N/A
    #   printf_cp1_variadic -> i20
    # Instr i15 Next-Use:
    #   v_global_val_s1 -> N/A
    # Instr i14 Next-Use:
    # Instr i13 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 13: 14: function begin : main
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 48 bytes
    addiu $sp, $sp, -48
    # Allocate 48 bytes (8 for $ra+$fp, 48 for locals/temps)
    sw $ra, 44($sp)
    # Save return address at 52($sp)
    sw $fp, 40($sp)
    # Save old frame pointer at 48($sp)
    addiu $fp, $sp, 40
    # Set new frame pointer (points to saved old $fp)

    # TAC 14: 15: param "Initial value of global_val: %d\n"
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param "Initial value of global_val: %d\n"
    # DEBUG: Collected parameter #1: "Initial value of global_val: %d\n"

    # TAC 15: 16: param v_global_val_s1
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_global_val_s1
    # DEBUG: Collected parameter #2: v_global_val_s1

    # TAC 16: 17: #t3 = call printf_cp1_variadic, 2
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Initial value of global_val: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_global_val_s1
    # DEBUG: Loaded global/static v_global_val_s1 from 4($gp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, 4($gp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 17: 18: #t4 = call set_globals, 0
I18:
    # --- Register Descriptor ---
    # $t0: [v_global_val_s1]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [$t0, memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call set_globals with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled global/static v_global_val_s1 from $t0 to 4($gp)
    # === End Caller-Save ===
    # DEBUG: Called set_globals
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t4 = return value in $t0 (dirty)
    sw $t0, 4($gp)
    jal set_globals
    move $t0, $v0

    # TAC 18: 19: param "Before: global_val = %d\n"
I19:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param "Before: global_val = %d\n"
    # DEBUG: Collected parameter #1: "Before: global_val = %d\n"

    # TAC 19: 20: param v_global_val_s1
I20:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_global_val_s1
    # DEBUG: Collected parameter #2: v_global_val_s1

    # TAC 20: 21: #t5 = call printf_cp1_variadic, 2
I21:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Before: global_val = %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_global_val_s1
    # DEBUG: Loaded global/static v_global_val_s1 from 4($gp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, 4($gp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 21: 22: #t6 = call store_global_through_pointer, 0
I22:
    # --- Register Descriptor ---
    # $t0: [v_global_val_s1]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [$t0, memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call store_global_through_pointer with 0 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled global/static v_global_val_s1 from $t0 to 4($gp)
    # === End Caller-Save ===
    # DEBUG: Called store_global_through_pointer
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t6 = return value in $t0 (dirty)
    sw $t0, 4($gp)
    jal store_global_through_pointer
    move $t0, $v0

    # TAC 22: 23: param "After:  global_val = %d\n"
I23:
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # #t6: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param "After:  global_val = %d\n"
    # DEBUG: Collected parameter #1: "After:  global_val = %d\n"

    # TAC 23: 24: param v_global_val_s1
I24:
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # #t6: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_global_val_s1
    # DEBUG: Collected parameter #2: v_global_val_s1

    # TAC 24: 25: #t7 = call printf_cp1_variadic, 2
I25:
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # #t6: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"After:  global_val = %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_global_val_s1
    # DEBUG: Loaded global/static v_global_val_s1 from 4($gp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, 4($gp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 25: 26: return 0
I26:
    # --- Register Descriptor ---
    # $t0: [v_global_val_s1]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # #t4: [$t0]
    # #t6: [$t0]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [$t0, memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B6_i26_i26 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i26 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 26: 27: end function main
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-12($fp)]
    # v_another_global_s1: [memory:0($gp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_global_val_s1: [memory:4($gp)]
    # v_p_store_global_through_pointer_s2: [memory:-8($fp)]
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

