    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 40

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Result: %d\n""
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
    # Block B3: i3-i5
    # Block B4: i6-i6
    # Block B5: i7-i9
    # Block B6: i10-i10
    # Block B7: i11-i17
    # Block B8: i18-i18
    # Block B9: i19-i38
    # Block B10: i39-i39

.data
    # String Literals
str_0: .asciiz "Result: %d\n"

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
    # === B3_i3_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    # Instr i4 Next-Use:
    #   #t1 -> N/A
    #   v_x_add_i_i_s2 -> N/A
    #   v_y_add_i_i_s2 -> N/A
    # Instr i3 Next-Use:
    #   add_i_i -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : add_i_i
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
add_i_i:
    # Function: add_i_i
    # === Function Prologue for add_i_i ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_add_i_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_add_i_i_s2) in $a0
    # DEBUG: Parameter 1 (v_y_add_i_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_y_add_i_i_s2) in $a1
    # === End Parameter Initialization ===


    # TAC 4: 5: #t1 = v_x_add_i_i_s2 + v_y_add_i_i_s2
I5:
    # --- Register Descriptor ---
    # $a0: [v_x_add_i_i_s2]
    # $a1: [v_y_add_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [$a0, memory:8($fp)]
    # v_y_add_i_i_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t1 = v_x_add_i_i_s2 add v_y_add_i_i_s2
    # DEBUG: v_x_add_i_i_s2 in $a0
    # DEBUG: v_y_add_i_i_s2 in $a1
    # DEBUG: #t1 = result in $t0 (dirty)
    add $t0, $a0, $a1

    # TAC 5: 6: return #t1
I6:
    # --- Register Descriptor ---
    # $a0: [v_x_add_i_i_s2]
    # $a1: [v_y_add_i_i_s2]
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [$a0, memory:8($fp)]
    # v_y_add_i_i_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)
    # === Spilling all dirty registers before return ===
    # return #t1
    # DEBUG: #t1 in $t0
    # DEBUG: Moved return value to $v0
    sw $t0, -4($fp)
    move $v0, $t0


    # ======================================
    # === B4_i6_i6 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i6 Next-Use:
    #   add_i_i -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 6: 7: end function add_i_i
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for add_i_i ===
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
    # End of function: add_i_i


    # ======================================
    # === B5_i7_i9 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    # Instr i8 Next-Use:
    #   #t2 -> N/A
    #   v_x_subtract_i_i_s2 -> N/A
    #   v_y_subtract_i_i_s2 -> N/A
    # Instr i7 Next-Use:
    #   subtract_i_i -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 7: 8: function begin : subtract_i_i
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
subtract_i_i:
    # Function: subtract_i_i
    # === Function Prologue for subtract_i_i ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_subtract_i_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_subtract_i_i_s2) in $a0
    # DEBUG: Parameter 1 (v_y_subtract_i_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_y_subtract_i_i_s2) in $a1
    # === End Parameter Initialization ===


    # TAC 8: 9: #t2 = v_x_subtract_i_i_s2 - v_y_subtract_i_i_s2
I9:
    # --- Register Descriptor ---
    # $a0: [v_x_subtract_i_i_s2]
    # $a1: [v_y_subtract_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_subtract_i_i_s2: [$a0, memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t2 = v_x_subtract_i_i_s2 sub v_y_subtract_i_i_s2
    # DEBUG: v_x_subtract_i_i_s2 in $a0
    # DEBUG: v_y_subtract_i_i_s2 in $a1
    # DEBUG: #t2 = result in $t0 (dirty)
    sub $t0, $a0, $a1

    # TAC 9: 10: return #t2
I10:
    # --- Register Descriptor ---
    # $a0: [v_x_subtract_i_i_s2]
    # $a1: [v_y_subtract_i_i_s2]
    # $t0: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_subtract_i_i_s2: [$a0, memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t2 from $t0 to memory at -4($fp)
    # === Spilling all dirty registers before return ===
    # return #t2
    # DEBUG: #t2 in $t0
    # DEBUG: Moved return value to $v0
    sw $t0, -4($fp)
    move $v0, $t0


    # ======================================
    # === B6_i10_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i10 Next-Use:
    #   subtract_i_i -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 10: 11: end function subtract_i_i
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for subtract_i_i ===
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
    # End of function: subtract_i_i


    # ======================================
    # === B7_i11_i17 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i17 Next-Use:
    #   #t4 -> N/A
    # Instr i16 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    # Instr i15 Next-Use:
    #   #t3 -> N/A
    #   v_operation_apply_operation_u_i_i_s2 -> N/A
    # Instr i14 Next-Use:
    #   v_b_apply_operation_u_i_i_s2 -> N/A
    # Instr i13 Next-Use:
    #   v_a_apply_operation_u_i_i_s2 -> N/A
    # Instr i12 Next-Use:
    #   v_x_apply_operation_u_i_i_s2 -> N/A
    # Instr i11 Next-Use:
    #   apply_operation_fp_ri_pii_i_i -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 11: 12: function begin : apply_operation_fp_ri_pii_i_i
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
apply_operation_fp_ri_pii_i_i:
    # Function: apply_operation_fp_ri_pii_i_i
    # === Function Prologue for apply_operation_fp_ri_pii_i_i ===
    # Frame size: 72 bytes
    addiu $sp, $sp, -72
    # Allocate 72 bytes (8 for $ra+$fp, 72 for locals/temps)
    sw $ra, 68($sp)
    # Save return address at 76($sp)
    sw $fp, 64($sp)
    # Save old frame pointer at 72($sp)
    addiu $fp, $sp, 64
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_operation_apply_operation_fp_ri_pii_i_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_operation_apply_operation_fp_ri_pii_i_i_s2) in $a0
    # DEBUG: Parameter 1 (v_a_apply_operation_fp_ri_pii_i_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_a_apply_operation_fp_ri_pii_i_i_s2) in $a1
    # DEBUG: Parameter 2 (v_b_apply_operation_fp_ri_pii_i_i_s2) at 16($fp)
    # DEBUG: Integer parameter 2 (v_b_apply_operation_fp_ri_pii_i_i_s2) in $a2
    # === End Parameter Initialization ===


    # TAC 12: 13: v_x_apply_operation_u_i_i_s2 = 1
I13:
    # --- Register Descriptor ---
    # $a0: [v_operation_apply_operation_fp_ri_pii_i_i_s2]
    # $a1: [v_a_apply_operation_fp_ri_pii_i_i_s2]
    # $a2: [v_b_apply_operation_fp_ri_pii_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [$a1, memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [$a2, memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [$a0, memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_apply_operation_u_i_i_s2 = 1
    # DEBUG: v_x_apply_operation_u_i_i_s2 = constant 1 loaded in $t0 (dirty)
    # DEBUG: Saved variable v_x_apply_operation_u_i_i_s2 to home location -4($fp)
    li $t0, 1
    sw $t0, -4($fp)

    # TAC 13: 14: param v_a_apply_operation_u_i_i_s2
I14:
    # --- Register Descriptor ---
    # $a0: [v_operation_apply_operation_fp_ri_pii_i_i_s2]
    # $a1: [v_a_apply_operation_fp_ri_pii_i_i_s2]
    # $a2: [v_b_apply_operation_fp_ri_pii_i_i_s2]
    # $t0: [v_x_apply_operation_u_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [$a1, memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [$a2, memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [$a0, memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [$t0, memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param v_a_apply_operation_u_i_i_s2
    # DEBUG: Collected parameter #1: v_a_apply_operation_u_i_i_s2

    # TAC 14: 15: param v_b_apply_operation_u_i_i_s2
I15:
    # --- Register Descriptor ---
    # $a0: [v_operation_apply_operation_fp_ri_pii_i_i_s2]
    # $a1: [v_a_apply_operation_fp_ri_pii_i_i_s2]
    # $a2: [v_b_apply_operation_fp_ri_pii_i_i_s2]
    # $t0: [v_x_apply_operation_u_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [$a1, memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [$a2, memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [$a0, memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [$t0, memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param v_b_apply_operation_u_i_i_s2
    # DEBUG: Collected parameter #2: v_b_apply_operation_u_i_i_s2

    # TAC 15: 16: #t3 = * v_operation_apply_operation_u_i_i_s2
I16:
    # --- Register Descriptor ---
    # $a0: [v_operation_apply_operation_fp_ri_pii_i_i_s2]
    # $a1: [v_a_apply_operation_fp_ri_pii_i_i_s2]
    # $a2: [v_b_apply_operation_fp_ri_pii_i_i_s2]
    # $t0: [v_x_apply_operation_u_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [$a1, memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [$a2, memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [$a0, memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [$t0, memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t3 = *v_operation_apply_operation_u_i_i_s2
    # DEBUG: Function pointer dereference - copying address
    # DEBUG: Loaded function pointer v_operation_apply_operation_u_i_i_s2 from memory at 8($fp)
    # DEBUG: #t3 = v_operation_apply_operation_u_i_i_s2 (function address in $t0)
    lw $t0, 8($fp)

    # TAC 16: 17: #t4 = call #t3, 2
I17:
    # --- Register Descriptor ---
    # $a0: [v_operation_apply_operation_fp_ri_pii_i_i_s2]
    # $a1: [v_a_apply_operation_fp_ri_pii_i_i_s2]
    # $a2: [v_b_apply_operation_fp_ri_pii_i_i_s2]
    # $t0: [#t3, v_operation_apply_operation_u_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [$t0]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [$a1, memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [$a2, memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [$a0, memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [$t0]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Call #t3 with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t3 from $t0 to -8($fp)
    # DEBUG: Spilled v_operation_apply_operation_u_i_i_s2 from $t0 to 8($fp)
    # === End Caller-Save ===
    # DEBUG: Allocate 8 bytes for 2 parameters + $ra/$fp
    # DEBUG: Loaded v_a_apply_operation_u_i_i_s2 from memory at 12($fp)
    # DEBUG: Param 0 (v_a_apply_operation_u_i_i_s2) in $t0
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Loaded v_b_apply_operation_u_i_i_s2 from memory at 16($fp)
    # DEBUG: Param 1 (v_b_apply_operation_u_i_i_s2) in $t1
    # DEBUG: Stored param 1 on stack at 4($sp)
    # DEBUG: Copied param 1 to $a1
    # DEBUG: Indirect call through function pointer #t3
    # DEBUG: Loaded #t3 from memory at -8($fp)
    # DEBUG: Function pointer in $t2
    # DEBUG: Indirect call via jalr $ra, $t2
    sw $t0, -8($fp)
    # DEBUG: Deallocate 8 bytes of parameter space
    sw $t0, 8($fp)
    # DEBUG: Return value from $v0 to $t3
    # DEBUG: #t4 = return value in $t3 (dirty)
    addiu $sp, $sp, -8
    lw $t0, 12($fp)
    sw $t0, 0($sp)
    move $a0, $t0
    lw $t1, 16($fp)
    sw $t1, 4($sp)
    move $a1, $t1
    lw $t2, -8($fp)
    jalr $ra, $t2
    addiu $sp, $sp, 8
    move $t3, $v0

    # TAC 17: 18: return #t4
I18:
    # --- Register Descriptor ---
    # $t3: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [$t3]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [$a1, memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [$a2, memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [$a0, memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t4 from $t3 to memory at -12($fp)
    # === Spilling all dirty registers before return ===
    # return #t4
    # DEBUG: #t4 in $t3
    # DEBUG: Moved return value to $v0
    sw $t3, -12($fp)
    move $v0, $t3


    # ======================================
    # === B8_i18_i18 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i18 Next-Use:
    #   apply_operation_fp_ri_pii_i_i -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 18: 19: end function apply_operation_fp_ri_pii_i_i
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for apply_operation_fp_ri_pii_i_i ===
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
    # End of function: apply_operation_fp_ri_pii_i_i


    # ======================================
    # === B9_i19_i38 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i38 Next-Use:
    # Instr i37 Next-Use:
    #   #t11 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i36 Next-Use:
    #   v_result1_main_s2 -> N/A
    # Instr i35 Next-Use:
    # Instr i34 Next-Use:
    #   #t10 -> N/A
    #   v_result1_main_s2 -> N/A
    # Instr i33 Next-Use:
    #   #t10 -> N/A
    #   apply_operation_fp_ri_pii_i_i -> N/A
    # Instr i32 Next-Use:
    # Instr i31 Next-Use:
    # Instr i30 Next-Use:
    #   #t9 -> N/A
    # Instr i29 Next-Use:
    #   #t9 -> N/A
    #   subtract_i_i -> N/A
    # Instr i28 Next-Use:
    #   #t8 -> N/A
    #   v_funcPtr_main_s2 -> N/A
    # Instr i27 Next-Use:
    #   #t8 -> N/A
    #   subtract_i_i -> i29
    # Instr i26 Next-Use:
    #   #t7 -> N/A
    #   v_result1_main_s2 -> N/A
    # Instr i25 Next-Use:
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i24 Next-Use:
    #   #t6 -> N/A
    #   v_funcPtr_main_s2 -> N/A
    # Instr i23 Next-Use:
    # Instr i22 Next-Use:
    # Instr i21 Next-Use:
    #   #t5 -> N/A
    #   v_funcPtr_main_s2 -> N/A
    # Instr i20 Next-Use:
    #   #t5 -> N/A
    #   add_i_i -> N/A
    # Instr i19 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 19: 20: function begin : main
I20:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 80 bytes
    addiu $sp, $sp, -80
    # Allocate 80 bytes (8 for $ra+$fp, 80 for locals/temps)
    sw $ra, 76($sp)
    # Save return address at 84($sp)
    sw $fp, 72($sp)
    # Save old frame pointer at 80($sp)
    addiu $fp, $sp, 72
    # Set new frame pointer (points to saved old $fp)

    # TAC 20: 21: #t5 = & add_i_i
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t5 = &add_i_i
    # DEBUG: #t5 = address of function add_i_i
    # DEBUG: #t5 (pointer) in $t0 (dirty)
    # DEBUG: Also stored #t5 to memory at -4($fp)
    la $t0, add_i_i
    sw $t0, -4($fp)

    # TAC 21: 22: v_funcPtr_main_s2 = #t5
I22:
    # --- Register Descriptor ---
    # $t0: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [$t0, memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_funcPtr_main_s2 = #t5
    # DEBUG: #t5 already in $t0
    # DEBUG: v_funcPtr_main_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_funcPtr_main_s2 to memory at -8($fp)
    sw $t0, -8($fp)

    # TAC 22: 23: param 5
I23:
    # --- Register Descriptor ---
    # $t0: [#t5, v_funcPtr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [$t0, memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t0, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param 5
    # DEBUG: Collected parameter #1: 5

    # TAC 23: 24: param 3
I24:
    # --- Register Descriptor ---
    # $t0: [#t5, v_funcPtr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [$t0, memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t0, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param 3
    # DEBUG: Collected parameter #2: 3

    # TAC 24: 25: #t6 = * v_funcPtr_main_s2
I25:
    # --- Register Descriptor ---
    # $t0: [#t5, v_funcPtr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [$t0, memory:-4($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t0, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t6 = *v_funcPtr_main_s2
    # DEBUG: Function pointer dereference - copying address
    # DEBUG: Function pointer v_funcPtr_main_s2 already in $t0
    # DEBUG: #t6 = v_funcPtr_main_s2 (function address in $t0)

    # TAC 25: 26: #t7 = call #t6, 2
I26:
    # --- Register Descriptor ---
    # $t0: [#t5, #t6, v_funcPtr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [$t0, memory:-4($fp)]
    # #t6: [$t0]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t0, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Call #t6 with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t5 from $t0 to -4($fp)
    # DEBUG: Spilled #t6 from $t0 to -12($fp)
    # DEBUG: Spilled v_funcPtr_main_s2 from $t0 to -8($fp)
    # === End Caller-Save ===
    # DEBUG: Allocate 8 bytes for 2 parameters + $ra/$fp
    # DEBUG: Loaded constant param 0 = 5
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Loaded constant param 1 = 3
    # DEBUG: Stored param 1 on stack at 4($sp)
    # DEBUG: Copied param 1 to $a1
    # DEBUG: Indirect call through function pointer #t6
    # DEBUG: Loaded #t6 from memory at -12($fp)
    # DEBUG: Function pointer in $t0
    sw $t0, -4($fp)
    # DEBUG: Indirect call via jalr $ra, $t0
    sw $t0, -12($fp)
    # DEBUG: Deallocate 8 bytes of parameter space
    sw $t0, -8($fp)
    # DEBUG: Return value from $v0 to $t1
    # DEBUG: #t7 = return value in $t1 (dirty)
    addiu $sp, $sp, -8
    li $t0, 5
    sw $t0, 0($sp)
    move $a0, $t0
    li $t0, 3
    sw $t0, 4($sp)
    move $a1, $t0
    lw $t0, -12($fp)
    jalr $ra, $t0
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 26: 27: v_result1_main_s2 = #t7
I27:
    # --- Register Descriptor ---
    # $t1: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [$t1]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result1_main_s2 = #t7
    # DEBUG: #t7 already in $t1
    # DEBUG: v_result1_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_result1_main_s2 to memory at -20($fp)
    sw $t1, -20($fp)

    # TAC 27: 28: #t8 = & subtract_i_i
I28:
    # --- Register Descriptor ---
    # $t1: [#t7, v_result1_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [$t1]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [$t1, memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t8 = &subtract_i_i
    # DEBUG: Spilled #t7 from $t1 to home location -16($fp)
    # DEBUG: Spilled v_result1_main_s2 from $t1 to home location -20($fp)
    # DEBUG: #t8 = address of function subtract_i_i
    # DEBUG: #t8 (pointer) in $t1 (dirty)
    # DEBUG: Also stored #t8 to memory at -24($fp)
    sw $t1, -16($fp)
    sw $t1, -20($fp)
    la $t1, subtract_i_i
    sw $t1, -24($fp)

    # TAC 28: 29: v_funcPtr_main_s2 = #t8
I29:
    # --- Register Descriptor ---
    # $t1: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [$t1, memory:-24($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_funcPtr_main_s2 = #t8
    # DEBUG: #t8 already in $t1
    # DEBUG: v_funcPtr_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_funcPtr_main_s2 to memory at -8($fp)
    sw $t1, -8($fp)

    # TAC 29: 30: #t9 = & subtract_i_i
I30:
    # --- Register Descriptor ---
    # $t1: [#t8, v_funcPtr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [$t1, memory:-24($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t1, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # #t9 = &subtract_i_i
    # DEBUG: #t9 = address of function subtract_i_i
    # DEBUG: #t9 (pointer) in $t2 (dirty)
    # DEBUG: Also stored #t9 to memory at -28($fp)
    la $t2, subtract_i_i
    sw $t2, -28($fp)

    # TAC 30: 31: param #t9
I31:
    # --- Register Descriptor ---
    # $t1: [#t8, v_funcPtr_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [$t1, memory:-24($fp)]
    # #t9: [$t2, memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t1, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param #t9
    # DEBUG: Collected parameter #1: #t9

    # TAC 31: 32: param 2
I32:
    # --- Register Descriptor ---
    # $t1: [#t8, v_funcPtr_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [$t1, memory:-24($fp)]
    # #t9: [$t2, memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t1, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param 2
    # DEBUG: Collected parameter #2: 2

    # TAC 32: 33: param 4
I33:
    # --- Register Descriptor ---
    # $t1: [#t8, v_funcPtr_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [$t1, memory:-24($fp)]
    # #t9: [$t2, memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t1, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param 4
    # DEBUG: Collected parameter #3: 4

    # TAC 33: 34: #t10 = call apply_operation_fp_ri_pii_i_i, 3
I34:
    # --- Register Descriptor ---
    # $t1: [#t8, v_funcPtr_main_s2] (dirty)
    # $t2: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [$t1, memory:-24($fp)]
    # #t9: [$t2, memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [$t1, memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Call apply_operation_fp_ri_pii_i_i with 3 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t8 from $t1 to -24($fp)
    # DEBUG: Spilled v_funcPtr_main_s2 from $t1 to -8($fp)
    # DEBUG: Spilled #t9 from $t2 to -28($fp)
    # === End Caller-Save ===
    # DEBUG: Allocate 12 bytes for 3 parameters + $ra/$fp
    # DEBUG: Loaded #t9 from memory at -28($fp)
    # DEBUG: Param 0 (#t9) in $t0
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Loaded constant param 1 = 2
    # DEBUG: Stored param 1 on stack at 4($sp)
    # DEBUG: Copied param 1 to $a1
    # DEBUG: Loaded constant param 2 = 4
    sw $t1, -24($fp)
    # DEBUG: Stored param 2 on stack at 8($sp)
    sw $t1, -8($fp)
    # DEBUG: Copied param 2 to $a2
    sw $t2, -28($fp)
    # DEBUG: Called apply_operation_fp_ri_pii_i_i
    addiu $sp, $sp, -12
    # DEBUG: Deallocate 12 bytes of parameter space
    lw $t0, -28($fp)
    # DEBUG: Return value from $v0 to $t1
    # DEBUG: #t10 = return value in $t1 (dirty)
    sw $t0, 0($sp)
    move $a0, $t0
    li $t1, 2
    sw $t1, 4($sp)
    move $a1, $t1
    li $t1, 4
    sw $t1, 8($sp)
    move $a2, $t1
    jal apply_operation_fp_ri_pii_i_i
    addiu $sp, $sp, 12
    move $t1, $v0

    # TAC 34: 35: v_result1_main_s2 = #t10
I35:
    # --- Register Descriptor ---
    # $t1: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t1]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-24($fp)]
    # #t9: [memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result1_main_s2 = #t10
    # DEBUG: #t10 already in $t1
    # DEBUG: v_result1_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_result1_main_s2 to memory at -20($fp)
    sw $t1, -20($fp)

    # TAC 35: 36: param "Result: %d\n"
I36:
    # --- Register Descriptor ---
    # $t1: [#t10, v_result1_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t1]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-24($fp)]
    # #t9: [memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [$t1, memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param "Result: %d\n"
    # DEBUG: Collected parameter #1: "Result: %d\n"

    # TAC 36: 37: param v_result1_main_s2
I37:
    # --- Register Descriptor ---
    # $t1: [#t10, v_result1_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t1]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-24($fp)]
    # #t9: [memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [$t1, memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # param v_result1_main_s2
    # DEBUG: Collected parameter #2: v_result1_main_s2

    # TAC 37: 38: #t11 = call printf_cp1_variadic, 2
I38:
    # --- Register Descriptor ---
    # $t1: [#t10, v_result1_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [$t1]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-24($fp)]
    # #t9: [memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [$t1, memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t10 from $t1 to -32($fp)
    # DEBUG: Spilled v_result1_main_s2 from $t1 to -20($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Result: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_result1_main_s2
    # DEBUG: Loaded v_result1_main_s2 from memory at -20($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t1, -32($fp)
    sw $t1, -20($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -20($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 38: 39: return 0
I39:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-32($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-24($fp)]
    # #t9: [memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B10_i39_i39 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i39 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 39: 40: end function main
I40:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t10: [memory:-32($fp)]
    # #t2: [memory:-4($fp)]
    # #t3: [memory:-8($fp)]
    # #t4: [memory:-12($fp)]
    # #t5: [memory:-4($fp)]
    # #t6: [memory:-12($fp)]
    # #t7: [memory:-16($fp)]
    # #t8: [memory:-24($fp)]
    # #t9: [memory:-28($fp)]
    # v_a_apply_operation_fp_ri_pii_i_i_s2: [memory:12($fp)]
    # v_b_apply_operation_fp_ri_pii_i_i_s2: [memory:16($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_funcPtr_main_s2: [memory:-8($fp)]
    # v_operation_apply_operation_fp_ri_pii_i_i_s2: [memory:8($fp)]
    # v_operation_apply_operation_u_i_i_s2: [memory:8($fp)]
    # v_result1_main_s2: [memory:-20($fp)]
    # v_x_add_i_i_s2: [memory:8($fp)]
    # v_x_apply_operation_u_i_i_s2: [memory:-4($fp)]
    # v_x_subtract_i_i_s2: [memory:8($fp)]
    # v_y_add_i_i_s2: [memory:12($fp)]
    # v_y_subtract_i_i_s2: [memory:12($fp)]
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

