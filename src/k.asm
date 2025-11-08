    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 22

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated global/static variable 'v_global_var_s1' at offset 0($gp)
    # Allocated space for 1 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i4
    # Block B4: i5-i5
<<<<<<< HEAD
    # Block B5: i6-i6
    # Block B6: i7-i10
    # Block B7: i11-i11
    # Block B8: i12-i20
    # Block B9: i21-i21
=======
    # Block B5: i6-i7
    # Block B6: i8-i8
    # Block B7: i9-i21
>>>>>>> 478ce81 (Arrays and pointers)

.data
    # String Literals
    # (no string literals)

    # Global and Static Variables
v_global_var_s1: .word 0  # int (global/static) at 0($gp)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i1 Next-Use:
    # Instr i0 Next-Use:
    #   print_int_i -> N/A
    # === End of Next-Use Computation for Block B1 ===

    # Next-use information computed
    # TAC 0: 1: function begin : print_int_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
print_int_i:
    # Function: print_int_i
    # === Function Prologue for print_int_i ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_n_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_n_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_n_print_int_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [$a0, memory:8($fp)]
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
    #   print_int_i -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: end function print_int_i
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_int_i ===
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
    # End of function: print_int_i


    # ======================================
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i4 Next-Use:
    # Instr i3 Next-Use:
    #   print_newline -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : print_newline
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_newline:
    # Function: print_newline
    # === Function Prologue for print_newline ===
    # Frame size: 48 bytes
    addiu $sp, $sp, -48
    # Allocate 48 bytes (8 for $ra+$fp, 48 for locals/temps)
    sw $ra, 44($sp)
    # Save return address at 52($sp)
    sw $fp, 40($sp)
    # Save old frame pointer at 48($sp)
    addiu $fp, $sp, 40
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
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
    #   print_newline -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: end function print_newline
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_newline ===
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
    # End of function: print_newline


    # ======================================
<<<<<<< HEAD
    # === B5_i6_i6 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: v_global_var_s1 = 10
=======
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : print_float_f
>>>>>>> 478ce81 (Arrays and pointers)
    # === Computing Next-Use Information for Block B5 ===
    # Instr i10 Next-Use:
    #   #t1 -> N/A
    #   v_dec_main_s2 -> N/A
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    # Instr i8 Next-Use:
    #   #t1 -> N/A
    # Instr i7 Next-Use:
    #   v_dec_main_s2 -> N/A
    # Instr i6 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
<<<<<<< HEAD
    # Assignment: v_global_var_s1 = 10
    li $t0, 10
    # DEBUG: v_global_var_s1 = constant 10 loaded in $t0 (dirty)

    # End of block B5 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, 0($gp)
    # DEBUG: Spilled global/static v_global_var_s1 from $t0 to 0($gp)

    # ======================================
    # === B6_i7_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 7: 8: function begin : add_to_global_i
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 68 bytes
    addiu $sp, $sp, -68
    # Allocate 68 bytes (8 for $ra+$fp, 68 for locals/temps)
    sw $ra, 64($sp)
    # Save return address at 72($sp)
    sw $fp, 60($sp)
    # Save old frame pointer at 68($sp)
    addiu $fp, $sp, 60
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 7: 8: v_dec_main_s2 = 10
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_global_var_s1: [memory:0($gp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
add_to_global_i:
    # Function: add_to_global_i
    # === Function Prologue for add_to_global_i ===
    # Frame size: 56 bytes
    addiu $sp, $sp, -56
    # Allocate 56 bytes (8 for $ra+$fp, 56 for locals/temps)
    sw $ra, 52($sp)
    # Save return address at 60($sp)
    sw $fp, 48($sp)
    # Save old frame pointer at 56($sp)
    addiu $fp, $sp, 48
=======
print_float_f:
    # Function: print_float_f
    # === Function Prologue for print_float_f ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
>>>>>>> 478ce81 (Arrays and pointers)
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
<<<<<<< HEAD
    # DEBUG: Parameter 0 (v_x_add_to_global_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_add_to_global_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 8: 9: #t1 = 10 + v_x_add_to_global_i_s2
    # Assignment: v_dec_main_s2 = 10
    li $t0, 10
    # DEBUG: v_dec_main_s2 = constant 10 loaded in $t0 (dirty)

    # TAC 8: 9: #t1 = 1
I9:
    # --- Register Descriptor ---
    # $a0: [v_x_add_to_global_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_global_var_s1: [memory:0($gp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = 10 add v_x_add_to_global_i_s2
    li $t0, 10
    # DEBUG: Loaded constant 10 into $t0
    # DEBUG: 10 in $t0
    # DEBUG: v_x_add_to_global_i_s2 in $a0
    add $t1, $t0, $a0
    # DEBUG: #t1 = result in $t1 (dirty)

    # TAC 9: 10: v_global_var_s1 = #t1
I10:
    # --- Register Descriptor ---
    # $a0: [v_x_add_to_global_i_s2]
    # $t0: [<CONSTANT>]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # <CONSTANT>: [$t0]
    # v_global_var_s1: [memory:0($gp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_global_var_s1 = #t1
    # DEBUG: #t1 already in $t1
    # DEBUG: v_global_var_s1 now also in $t1 (dirty)
    sw $t1, 0($gp)
    # DEBUG: Saved global/static v_global_var_s1 to memory at 0($gp)

    # TAC 10: 11: return v_global_var_s1
I11:
    # --- Register Descriptor ---
    # $a0: [v_x_add_to_global_i_s2]
    # $t0: [<CONSTANT>]
    # $t1: [#t1, v_global_var_s1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # <CONSTANT>: [$t0]
    # v_global_var_s1: [$t1, memory:0($gp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t1, -4($fp)
    # DEBUG: Spilled #t1 from $t1 to memory at -4($fp)
    sw $t1, 0($gp)
    # DEBUG: Spilled global/static v_global_var_s1 from $t1 to 0($gp)
    # === Spilling all dirty registers before return ===
    # return v_global_var_s1
    # DEBUG: v_global_var_s1 in $t1
    move $v0, $t1
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B7_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: end function add_to_global_i
    # === Computing Next-Use Information for Block B6 ===
    # Instr i11 Next-Use:
    #   #t2 -> N/A
    #   v_dec_main_s2 -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 11: 12: if v_dec_main_s2 > #t2 goto I21
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_global_var_s1: [memory:0($gp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for add_to_global_i ===
=======
    # DEBUG: Parameter 0 (v_f_print_float_f_s2) at 8($fp)
    # DEBUG: Float parameter 0 (v_f_print_float_f_s2) in $f12
    # === End Parameter Initialization ===


    # TAC 7: 8: return 
I8:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # TAC 8: 9: end function print_float_f
I9:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_float_f ===
>>>>>>> 478ce81 (Arrays and pointers)
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
<<<<<<< HEAD
    # End of function: add_to_global_i


    # ======================================
    # === B8_i12_i20 ===
    # ======================================
    # Registers cleared at block start
    # TAC 12: 13: function begin : main
    # === Computing Next-Use Information for Block B7 ===
    # Instr i16 Next-Use:
    # Instr i15 Next-Use:
    #   #t4 -> N/A
    #   print_int_i -> N/A
    # Instr i14 Next-Use:
    # Instr i13 Next-Use:
    #   #t3 -> N/A
    # Instr i12 Next-Use:
    #   #t1 -> N/A
    #   #t3 -> N/A
    #   v_dec_main_s2 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 12: 13: #t3 = v_dec_main_s2 - #t1
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_global_var_s1: [memory:0($gp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
=======
    # End of function: print_float_f


    # ======================================
    # === B7_i9_i21 ===
    # ======================================
    # Registers cleared at block start
    # TAC 9: 10: function begin : main
I10:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
>>>>>>> 478ce81 (Arrays and pointers)
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
<<<<<<< HEAD
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
=======
    # Frame size: 120 bytes
    addiu $sp, $sp, -120
    # Allocate 120 bytes (8 for $ra+$fp, 120 for locals/temps)
    sw $ra, 116($sp)
    # Save return address at 124($sp)
    sw $fp, 112($sp)
    # Save old frame pointer at 120($sp)
    addiu $fp, $sp, 112
>>>>>>> 478ce81 (Arrays and pointers)
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


<<<<<<< HEAD
    # TAC 13: 14: v_local_main_s2 = 5
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_global_var_s1: [memory:0($gp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_local_main_s2 = 5
    li $t0, 5
    # DEBUG: v_local_main_s2 = constant 5 loaded in $t0 (dirty)

    # TAC 14: 15: param v_local_main_s2
I15:
    # --- Register Descriptor ---
    # $t0: [v_local_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_local_main_s2
    # DEBUG: Collected parameter #1: v_local_main_s2

    # TAC 15: 16: #t2 = call add_to_global_i, 1
I16:
    # --- Register Descriptor ---
    # $t0: [v_local_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call add_to_global_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -4($fp)
    # DEBUG: Spilled v_local_main_s2 from $t0 to -4($fp)
    # === End Caller-Save (spilled 1 registers) ===
    addiu $sp, $sp, -4
    # DEBUG: Allocate 4 bytes for 1 parameters + $ra/$fp
    lw $t0, -4($fp)
    # DEBUG: Loaded v_local_main_s2 from memory at -4($fp)
    # DEBUG: Param 0 (v_local_main_s2) in $t0
    sw $t0, 0($sp)
    # DEBUG: Stored param 0 on stack at 0($sp)
    move $a0, $t0
    # DEBUG: Copied param 0 to $a0
    jal add_to_global_i
    # DEBUG: Called add_to_global_i
    addiu $sp, $sp, 4
    # DEBUG: Deallocate 4 bytes of parameter space
    move $t1, $v0
    # DEBUG: Return value from $v0 to $t1
    # DEBUG: #t2 = return value in $t1 (dirty)

    # TAC 16: 17: v_result_main_s2 = #t2
I17:
    # --- Register Descriptor ---
    # $t0: [v_local_main_s2]
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t1]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t2
    # DEBUG: #t2 already in $t1
    # DEBUG: v_result_main_s2 now also in $t1 (dirty)
    sw $t1, -8($fp)
    # DEBUG: Saved v_result_main_s2 to memory at -8($fp)

    # TAC 17: 18: param v_result_main_s2
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I23
    j I23


    # ======================================
    # === B8_i17_i19 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i19 Next-Use:
    # Instr i18 Next-Use:
    #   #t5 -> N/A
    #   print_int_i -> N/A
    # Instr i17 Next-Use:
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 17: 18: param 20
I18:
    # --- Register Descriptor ---
    # $t0: [v_local_main_s2]
    # $t1: [#t2, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t1]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_result_main_s2: [$t1, memory:-8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_result_main_s2
    # DEBUG: Collected parameter #1: v_result_main_s2

    # TAC 18: 19: #t3 = call print_int_i, 1
I19:
    # --- Register Descriptor ---
    # $t0: [v_local_main_s2]
    # $t1: [#t2, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t1]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_result_main_s2: [$t1, memory:-8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    move $a0, $t1
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 19: 20: #t4 = call print_newline, 0
I20:
    # --- Register Descriptor ---
    # $t0: [v_local_main_s2]
    # $t1: [#t2, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t1]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_result_main_s2: [$t1, memory:-8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 20: 21: return v_result_main_s2
I21:
    # --- Register Descriptor ---
    # $t0: [v_local_main_s2]
    # $t1: [#t2, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t1]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [$t0, memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_result_main_s2: [$t1, memory:-8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t1, -12($fp)
    # DEBUG: Spilled #t2 from $t1 to memory at -12($fp)
    sw $t1, -8($fp)
    # DEBUG: Spilled v_result_main_s2 from $t1 to memory at -8($fp)
    # === Spilling all dirty registers before return ===
    # return v_result_main_s2
    # DEBUG: v_result_main_s2 in $t1
    move $v0, $t1
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B9_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # TAC 21: 22: end function main
I22:
    # === Computing Next-Use Information for Block B9 ===
    # Instr i21 Next-Use:
    #   #t6 -> N/A
    #   print_int_i -> N/A
    # Instr i20 Next-Use:
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 20: 21: param 30
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-12($fp)]
    # v_global_var_s1: [memory:0($gp)]
    # v_local_main_s2: [memory:-4($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_result_main_s2: [memory:-8($fp)]
    # v_x_add_to_global_i_s2: [memory:8($fp)]
=======
    # TAC 10: 11: #t1 = (v_m_main_s2)int*
I11:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Cast: #t1 = (int*)v_m_main_s2
    # DEBUG: Integer cast (possibly truncation/extension)
    lw $t0, -40($fp)
    # DEBUG: Loaded v_m_main_s2 from memory at -40($fp)
    # DEBUG: #t1 = (cast)v_m_main_s2 in $t0

    # TAC 11: 12: v_x_main_s2 = #t1
I12:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t1, v_m_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_m_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_x_main_s2 now also in $t0 (dirty)
    sw $t0, -44($fp)
    # DEBUG: Saved pointer v_x_main_s2 to memory for later dereference

    # TAC 12: 13: #t2 = v_x_main_s2
I13:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t1, v_m_main_s2, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_m_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-44($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = v_x_main_s2
    # DEBUG: v_x_main_s2 already in $t0
    # DEBUG: #t2 now also in $t0 (dirty)

    # TAC 13: 14: *(#t2) = 1
I14:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t1, #t2, v_m_main_s2, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_m_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0, memory:-44($fp)]
    # --- End Storage Descriptor ---
    # *#t2 = 1
    # DEBUG: Pointer #t2 in $t0
    li $t1, 1
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: Integer value 1 in $t1
    sw $t1, 0($t0)
    # DEBUG: Stored integer 1 through pointer #t2
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_m_main_s2 in $t0
    # DEBUG: Invalidating cached value of v_x_main_s2 in $t0

    # TAC 14: 15: #t3 = 0 * 4
I15:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t1, #t2] (dirty)
    # $t1: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # <CONSTANT>: [$t1]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # --- End Storage Descriptor ---
    # #t3 = 0 mul 4
    li $t2, 0
    # DEBUG: Loaded constant 0 into $t2
    # DEBUG: 0 in $t2
    li $t3, 4
    # DEBUG: Loaded constant 4 into $t3
    # DEBUG: 4 in $t3
    mul $t4, $t2, $t3
    # DEBUG: #t3 = result in $t4 (dirty)

    # TAC 15: 16: #t4 = & v_m_main_s2
I16:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t1, #t2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [<CONSTANT>]
    # $t3: [<CONSTANT>]
    # $t4: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # #t3: [$t4]
    # <CONSTANT>: [$t3]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # --- End Storage Descriptor ---
    # #t4 = &v_m_main_s2
    sw $t0, -52($fp)
    # DEBUG: Spilled #t1 from $t0 to memory
    sw $t0, -56($fp)
    # DEBUG: Spilled #t2 from $t0 to memory
    addiu $t0, $fp, -40
    # DEBUG: #t4 = address of v_m_main_s2 at -40($fp)
    # DEBUG: #t4 (pointer) in $t0 (dirty)

    # TAC 16: 17: #t5 = #t4 + #t3
I17:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t4] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [<CONSTANT>]
    # $t3: [<CONSTANT>]
    # $t4: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [memory:#t2]
    # #t3: [$t4]
    # #t4: [$t0]
    # <CONSTANT>: [$t3]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # --- End Storage Descriptor ---
    # #t5 = #t4 add #t3
    # DEBUG: #t4 in $t0
    # DEBUG: #t3 in $t4
    add $t5, $t0, $t4
    # DEBUG: #t5 = result in $t5 (dirty)

    # TAC 17: 18: #t6 = * #t5
I18:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t4] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [<CONSTANT>]
    # $t3: [<CONSTANT>]
    # $t4: [#t3] (dirty)
    # $t5: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [memory:#t2]
    # #t3: [$t4]
    # #t4: [$t0]
    # #t5: [$t5]
    # <CONSTANT>: [$t3]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # --- End Storage Descriptor ---
    # #t6 = *#t5
    # DEBUG: Pointer #t5 already in $t5
    lw $t1, 0($t5)
    # DEBUG: Dereferenced *#t5 into $t1
    # DEBUG: #t6 = *#t5 in $t1 (dirty)

    # TAC 18: 19: v_y_main_s2 = #t6
I19:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t4] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [<CONSTANT>]
    # $t3: [<CONSTANT>]
    # $t4: [#t3] (dirty)
    # $t5: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [memory:#t2]
    # #t3: [$t4]
    # #t4: [$t0]
    # #t5: [$t5]
    # #t6: [$t1]
    # <CONSTANT>: [$t3]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = #t6
    # DEBUG: #t6 already in $t1
    # DEBUG: v_y_main_s2 now also in $t1 (dirty)

    # TAC 19: 20: param v_y_main_s2
I20:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t4] (dirty)
    # $t1: [#t6, v_y_main_s2] (dirty)
    # $t2: [<CONSTANT>]
    # $t3: [<CONSTANT>]
    # $t4: [#t3] (dirty)
    # $t5: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [memory:#t2]
    # #t3: [$t4]
    # #t4: [$t0]
    # #t5: [$t5]
    # #t6: [$t1]
    # <CONSTANT>: [$t3]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # param v_y_main_s2
    # DEBUG: Collected parameter #1: v_y_main_s2

    # TAC 20: 21: #t7 = call print_int_i, 1
I21:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t4] (dirty)
    # $t1: [#t6, v_y_main_s2] (dirty)
    # $t2: [<CONSTANT>]
    # $t3: [<CONSTANT>]
    # $t4: [#t3] (dirty)
    # $t5: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [memory:#t2]
    # #t3: [$t4]
    # #t4: [$t0]
    # #t5: [$t5]
    # #t6: [$t1]
    # <CONSTANT>: [$t3]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    sw $t0, -64($fp)
    # DEBUG: Spilled #t4 from $t0 to -64($fp)
    sw $t1, -72($fp)
    # DEBUG: Spilled #t6 from $t1 to -72($fp)
    sw $t1, -48($fp)
    # DEBUG: Spilled v_y_main_s2 from $t1 to -48($fp)
    sw $t4, -60($fp)
    # DEBUG: Spilled #t3 from $t4 to -60($fp)
    sw $t5, -68($fp)
    # DEBUG: Spilled #t5 from $t5 to -68($fp)
    # === End Caller-Save ===
    # === Built-in print_int function ===
    lw $t0, -48($fp)
    # DEBUG: Loaded v_y_main_s2 from memory at -48($fp)
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 21: 22: end function main
I22:
    # End of block B9 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B10_i22_i22 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i22 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 22: 23: end function main
I23:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [v_y_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [memory:#t2]
    # #t3: [memory:-60($fp)]
    # #t4: [memory:-64($fp)]
    # #t5: [memory:-68($fp)]
    # #t6: [memory:-72($fp)]
    # <CONSTANT>: [$t3]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # v_x_main_s2: [memory:-44($fp)]
    # v_y_main_s2: [$t0, memory:-48($fp)]
>>>>>>> 478ce81 (Arrays and pointers)
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
