    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 49

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

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
    # Block B7: i9-i10
    # Block B8: i11-i11
    # Block B9: i12-i13
    # Block B10: i14-i14
    # Block B11: i15-i47
    # Block B12: i48-i48

.data
    # String Literals
    # (no string literals)

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
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_i_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_i_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_i_print_int_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_print_int_i_s2: [$a0, memory:8($fp)]
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
    # v_i_print_int_i_s2: [memory:8($fp)]
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
    #   print_float_f -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : print_float_f
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
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
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_f_print_float_f_s2) at 8($fp)
    # DEBUG: Float parameter 0 (v_f_print_float_f_s2) in $f12
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
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
    #   print_float_f -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: end function print_float_f
I6:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_float_f ===
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
    # End of function: print_float_f


    # ======================================
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i7 Next-Use:
    # Instr i6 Next-Use:
    #   print_char_c -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : print_char_c
I7:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_char_c:
    # Function: print_char_c
    # === Function Prologue for print_char_c ===
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
    # DEBUG: Parameter 0 (v_c_print_char_c_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_c_print_char_c_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 7: 8: return 
I8:
    # --- Register Descriptor ---
    # $a0: [v_c_print_char_c_s2]
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [$a0, memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i8 Next-Use:
    #   print_char_c -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 8: 9: end function print_char_c
I9:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_char_c ===
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
    # End of function: print_char_c


    # ======================================
    # === B7_i9_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i10 Next-Use:
    # Instr i9 Next-Use:
    #   print_string_cp1 -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 9: 10: function begin : print_string_cp1
I10:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_string_cp1:
    # Function: print_string_cp1
    # === Function Prologue for print_string_cp1 ===
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
    # DEBUG: Parameter 0 (v_s_print_string_cp1_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_s_print_string_cp1_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 10: 11: return 
I11:
    # --- Register Descriptor ---
    # $a0: [v_s_print_string_cp1_s2]
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B8_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i11 Next-Use:
    #   print_string_cp1 -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 11: 12: end function print_string_cp1
I12:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_string_cp1 ===
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
    # End of function: print_string_cp1


    # ======================================
    # === B9_i12_i13 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i13 Next-Use:
    #   v_inp_myfunc_c_s2 -> N/A
    # Instr i12 Next-Use:
    #   myfunc_c -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 12: 13: function begin : myfunc_c
I13:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
myfunc_c:
    # Function: myfunc_c
    # === Function Prologue for myfunc_c ===
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
    # DEBUG: Parameter 0 (v_inp_myfunc_c_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_inp_myfunc_c_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 13: 14: return v_inp_myfunc_c_s2
I14:
    # --- Register Descriptor ---
    # $a0: [v_inp_myfunc_c_s2]
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [$a0, memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return v_inp_myfunc_c_s2
    # DEBUG: v_inp_myfunc_c_s2 in $a0
    # DEBUG: Moved return value to $v0
    move $v0, $a0


    # ======================================
    # === B10_i14_i14 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i14 Next-Use:
    #   myfunc_c -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 14: 15: end function myfunc_c
I15:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for myfunc_c ===
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
    # End of function: myfunc_c


    # ======================================
    # === B11_i15_i47 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B11 ===
    # Instr i47 Next-Use:
    # Instr i46 Next-Use:
    #   #t25 -> N/A
    #   print_char_c -> N/A
    # Instr i45 Next-Use:
    #   #t24 -> N/A
    # Instr i44 Next-Use:
    #   #t23 -> N/A
    #   #t24 -> N/A
    # Instr i43 Next-Use:
    #   #t21 -> N/A
    #   #t22 -> N/A
    #   #t23 -> N/A
    # Instr i42 Next-Use:
    #   #t22 -> N/A
    #   v_arr_main_s2 -> N/A
    # Instr i41 Next-Use:
    #   #t21 -> N/A
    # Instr i40 Next-Use:
    #   #t20 -> N/A
    # Instr i39 Next-Use:
    #   #t19 -> N/A
    #   #t20 -> N/A
    # Instr i38 Next-Use:
    #   #t17 -> N/A
    #   #t18 -> N/A
    #   #t19 -> N/A
    # Instr i37 Next-Use:
    #   #t18 -> N/A
    #   v_arr_main_s2 -> i42
    # Instr i36 Next-Use:
    #   #t17 -> N/A
    # Instr i35 Next-Use:
    #   #t16 -> N/A
    # Instr i34 Next-Use:
    #   #t15 -> N/A
    #   #t16 -> N/A
    # Instr i33 Next-Use:
    #   #t13 -> N/A
    #   #t14 -> N/A
    #   #t15 -> N/A
    # Instr i32 Next-Use:
    #   #t14 -> N/A
    #   v_arr_main_s2 -> i37
    # Instr i31 Next-Use:
    #   #t13 -> N/A
    # Instr i30 Next-Use:
    #   #t12 -> N/A
    # Instr i29 Next-Use:
    #   #t11 -> N/A
    #   #t12 -> N/A
    # Instr i28 Next-Use:
    #   #t10 -> N/A
    #   #t11 -> N/A
    #   #t9 -> N/A
    # Instr i27 Next-Use:
    #   #t10 -> N/A
    #   v_arr_main_s2 -> i32
    # Instr i26 Next-Use:
    #   #t9 -> N/A
    # Instr i25 Next-Use:
    #   #t8 -> N/A
    # Instr i24 Next-Use:
    #   #t7 -> N/A
    #   #t8 -> N/A
    # Instr i23 Next-Use:
    #   #t5 -> N/A
    #   #t6 -> N/A
    #   #t7 -> N/A
    # Instr i22 Next-Use:
    #   #t6 -> N/A
    #   v_arr_main_s2 -> i27
    # Instr i21 Next-Use:
    #   #t5 -> N/A
    # Instr i20 Next-Use:
    #   #t4 -> N/A
    # Instr i19 Next-Use:
    #   #t3 -> N/A
    #   #t4 -> N/A
    # Instr i18 Next-Use:
    #   #t1 -> N/A
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i17 Next-Use:
    #   #t2 -> N/A
    #   v_arr_main_s2 -> i22
    # Instr i16 Next-Use:
    #   #t1 -> N/A
    # Instr i15 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B11 ===

    # Next-use information computed
    # TAC 15: 16: function begin : main
I16:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 164 bytes
    addiu $sp, $sp, -164
    # Allocate 164 bytes (8 for $ra+$fp, 164 for locals/temps)
    sw $ra, 160($sp)
    # Save return address at 168($sp)
    sw $fp, 156($sp)
    # Save old frame pointer at 164($sp)
    addiu $fp, $sp, 156
    # Set new frame pointer (points to saved old $fp)

    # TAC 16: 17: #t1 = 0 * 4
I17:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = 0 mul 4
    # DEBUG: Loaded constant 0 into $t0
    # DEBUG: 0 in $t0
    # DEBUG: Loaded constant 4 into $t1
    # DEBUG: 4 in $t1
    # DEBUG: #t1 = result in $t2 (dirty)
    li $t0, 0
    li $t1, 4
    mul $t2, $t0, $t1

    # TAC 17: 18: #t2 = & v_arr_main_s2
I18:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [<CONSTANT>]
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = &v_arr_main_s2
    # DEBUG: #t2 = address of v_arr_main_s2 at -20($fp)
    # DEBUG: #t2 (pointer) in $t0 (dirty)
    addiu $t0, $fp, -20

    # TAC 18: 19: #t3 = #t2 + #t1
I19:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # <CONSTANT>: [$t1]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add #t1
    # DEBUG: #t2 in $t0
    # DEBUG: #t1 in $t2
    # DEBUG: #t3 = result in $t3 (dirty)
    add $t3, $t0, $t2

    # TAC 19: 20: #t4 = #t3
I20:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # $t3: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # <CONSTANT>: [$t1]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t4 = #t3
    # DEBUG: #t3 already in $t3
    # DEBUG: #t4 now also in $t3 (dirty)
    # DEBUG: Saved #t4 to memory at -36($fp)
    sw $t3, -36($fp)

    # TAC 20: 21: *(#t4) = 97
I21:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # <CONSTANT>: [$t1]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t4 = 97
    # DEBUG: Pointer #t4 in $t3
    # DEBUG: Loaded constant 97 into $t4
    # DEBUG: Integer value 97 in $t4
    # DEBUG: Stored integer 97 through pointer #t4
    # DEBUG: Invalidating all cached values due to pointer store
    li $t4, 97
    sw $t4, 0($t3)

    # TAC 21: 22: #t5 = 1 * 4
I22:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # <CONSTANT>: [$t4]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = 1 mul 4
    # DEBUG: Loaded constant 1 into $t5
    # DEBUG: 1 in $t5
    # DEBUG: Loaded constant 4 into $t6
    # DEBUG: 4 in $t6
    # DEBUG: #t5 = result in $t7 (dirty)
    li $t5, 1
    li $t6, 4
    mul $t7, $t5, $t6

    # TAC 22: 23: #t6 = & v_arr_main_s2
I23:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # <CONSTANT>: [$t6]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = &v_arr_main_s2
    # DEBUG: #t6 = address of v_arr_main_s2 at -20($fp)
    # DEBUG: #t6 (pointer) in $t1 (dirty)
    addiu $t1, $fp, -20

    # TAC 23: 24: #t7 = #t6 + #t5
I24:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # <CONSTANT>: [$t6]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = #t6 add #t5
    # DEBUG: #t6 in $t1
    # DEBUG: #t5 in $t7
    # DEBUG: #t7 = result in $t8 (dirty)
    add $t8, $t1, $t7

    # TAC 24: 25: #t8 = #t7
I25:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # <CONSTANT>: [$t6]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t8 = #t7
    # DEBUG: #t7 already in $t8
    # DEBUG: #t8 now also in $t8 (dirty)
    # DEBUG: Saved #t8 to memory at -52($fp)
    sw $t8, -52($fp)

    # TAC 25: 26: *(#t8) = 98
I26:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # <CONSTANT>: [$t6]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t8 = 98
    # DEBUG: Pointer #t8 in $t8
    # DEBUG: Loaded constant 98 into $t9
    # DEBUG: Integer value 98 in $t9
    # DEBUG: Stored integer 98 through pointer #t8
    # DEBUG: Invalidating all cached values due to pointer store
    li $t9, 98
    sw $t9, 0($t8)

    # TAC 26: 27: #t9 = 2 * 4
I27:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t2] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # <CONSTANT>: [$t9]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t9 = 2 mul 4
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t2 from $t0 to memory at -28($fp)
    # DEBUG: Loaded constant 2 into $t0
    # DEBUG: 2 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: #t9 = result in $t0 (dirty)
    sw $t0, -28($fp)
    li $t0, 2
    li $t0, 4
    mul $t0, $t0, $t0

    # TAC 27: 28: #t10 = & v_arr_main_s2
I28:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t9] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [memory:-28($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [$t0]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t10 = &v_arr_main_s2
    # DEBUG: Spilled #t1 from $t2 to memory
    # DEBUG: #t10 = address of v_arr_main_s2 at -20($fp)
    # DEBUG: #t10 (pointer) in $t2 (dirty)
    sw $t2, -24($fp)
    addiu $t2, $fp, -20

    # TAC 28: 29: #t11 = #t10 + #t9
I29:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t9] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t2: [memory:-28($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [$t0]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t11 = #t10 add #t9
    # DEBUG: #t10 in $t2
    # DEBUG: #t9 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t9 from $t0 to memory at -56($fp)
    # DEBUG: #t11 = result in $t0 (dirty)
    sw $t0, -56($fp)
    add $t0, $t2, $t0

    # TAC 29: 30: #t12 = #t11
I30:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t11] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [$t0]
    # #t2: [memory:-28($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t12 = #t11
    # DEBUG: #t11 already in $t0
    # DEBUG: #t12 now also in $t0 (dirty)
    # DEBUG: Saved #t12 to memory at -68($fp)
    sw $t0, -68($fp)

    # TAC 30: 31: *(#t12) = 99
I31:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t11, #t12] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [$t0]
    # #t12: [$t0, memory:-68($fp)]
    # #t2: [memory:-28($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t12 = 99
    # DEBUG: Pointer #t12 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t11 from $t0 to memory at -64($fp)
    # DEBUG: Spilled #t12 from $t0 to memory at -68($fp)
    # DEBUG: Loaded constant 99 into $t0
    # DEBUG: Integer value 99 in $t0
    # DEBUG: Stored integer 99 through pointer #t12
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t0, -64($fp)
    sw $t0, -68($fp)
    li $t0, 99
    sw $t0, 0($t0)

    # TAC 31: 32: #t13 = 3 * 4
I32:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [<CONSTANT>] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t2: [memory:-28($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t13 = 3 mul 4
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: Loaded constant 3 into $t0
    # DEBUG: 3 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: #t13 = result in $t0 (dirty)
    li $t0, 3
    li $t0, 4
    mul $t0, $t0, $t0

    # TAC 32: 33: #t14 = & v_arr_main_s2
I33:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t13] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t3, #t4] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [$t0]
    # #t2: [memory:-28($fp)]
    # #t3: [$t3]
    # #t4: [$t3, memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t14 = &v_arr_main_s2
    # DEBUG: Spilled #t3 from $t3 to memory
    # DEBUG: #t14 = address of v_arr_main_s2 at -20($fp)
    # DEBUG: #t14 (pointer) in $t3 (dirty)
    sw $t3, -32($fp)
    addiu $t3, $fp, -20

    # TAC 33: 34: #t15 = #t14 + #t13
I34:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t13] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [$t0]
    # #t14: [$t3]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t15 = #t14 add #t13
    # DEBUG: #t14 in $t3
    # DEBUG: #t13 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t13 from $t0 to memory at -72($fp)
    # DEBUG: #t15 = result in $t0 (dirty)
    sw $t0, -72($fp)
    add $t0, $t3, $t0

    # TAC 34: 35: #t16 = #t15
I35:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t15] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [$t0]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t16 = #t15
    # DEBUG: #t15 already in $t0
    # DEBUG: #t16 now also in $t0 (dirty)
    # DEBUG: Saved #t16 to memory at -84($fp)
    sw $t0, -84($fp)

    # TAC 35: 36: *(#t16) = 100
I36:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t15, #t16] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [$t0]
    # #t16: [$t0, memory:-84($fp)]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t16 = 100
    # DEBUG: Pointer #t16 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t15 from $t0 to memory at -80($fp)
    # DEBUG: Spilled #t16 from $t0 to memory at -84($fp)
    # DEBUG: Loaded constant 100 into $t0
    # DEBUG: Integer value 100 in $t0
    # DEBUG: Stored integer 100 through pointer #t16
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t0, -80($fp)
    sw $t0, -84($fp)
    li $t0, 100
    sw $t0, 0($t0)

    # TAC 36: 37: #t17 = 4 * 4
I37:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [<CONSTANT>] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t17 = 4 mul 4
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: #t17 = result in $t0 (dirty)
    li $t0, 4
    li $t0, 4
    mul $t0, $t0, $t0

    # TAC 37: 38: #t18 = & v_arr_main_s2
I38:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t17] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [$t0]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t18 = &v_arr_main_s2
    # DEBUG: #t18 = address of v_arr_main_s2 at -20($fp)
    # DEBUG: #t18 (pointer) in $t4 (dirty)
    addiu $t4, $fp, -20

    # TAC 38: 39: #t19 = #t18 + #t17
I39:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t17] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [$t0]
    # #t18: [$t4]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t19 = #t18 add #t17
    # DEBUG: #t18 in $t4
    # DEBUG: #t17 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t17 from $t0 to memory at -88($fp)
    # DEBUG: #t19 = result in $t0 (dirty)
    sw $t0, -88($fp)
    add $t0, $t4, $t0

    # TAC 39: 40: #t20 = #t19
I40:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t19] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [$t0]
    # #t2: [memory:-28($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t20 = #t19
    # DEBUG: #t19 already in $t0
    # DEBUG: #t20 now also in $t0 (dirty)
    # DEBUG: Saved #t20 to memory at -100($fp)
    sw $t0, -100($fp)

    # TAC 40: 41: *(#t20) = 101
I41:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t19, #t20] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [$t0]
    # #t2: [memory:-28($fp)]
    # #t20: [$t0, memory:-100($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t20 = 101
    # DEBUG: Pointer #t20 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t19 from $t0 to memory at -96($fp)
    # DEBUG: Spilled #t20 from $t0 to memory at -100($fp)
    # DEBUG: Loaded constant 101 into $t0
    # DEBUG: Integer value 101 in $t0
    # DEBUG: Stored integer 101 through pointer #t20
    # DEBUG: Invalidating all cached values due to pointer store
    sw $t0, -96($fp)
    sw $t0, -100($fp)
    li $t0, 101
    sw $t0, 0($t0)

    # TAC 41: 42: #t21 = 2 * 4
I42:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [<CONSTANT>] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t21 = 2 mul 4
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: Loaded constant 2 into $t0
    # DEBUG: 2 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: Loaded constant 4 into $t0
    # DEBUG: 4 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Skipping spill of constant in $t0
    # DEBUG: #t21 = result in $t0 (dirty)
    li $t0, 2
    li $t0, 4
    mul $t0, $t0, $t0

    # TAC 42: 43: #t22 = & v_arr_main_s2
I43:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t21] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [<CONSTANT>]
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t21: [$t0]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t22 = &v_arr_main_s2
    # DEBUG: #t22 = address of v_arr_main_s2 at -20($fp)
    # DEBUG: #t22 (pointer) in $t5 (dirty)
    addiu $t5, $fp, -20

    # TAC 43: 44: #t23 = #t22 + #t21
I44:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t21] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t21: [$t0]
    # #t22: [$t5]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t23 = #t22 add #t21
    # DEBUG: #t22 in $t5
    # DEBUG: #t21 in $t0
    # DEBUG: Spilling register $t0 due to register pressure
    # DEBUG: Spilled #t21 from $t0 to memory at -104($fp)
    # DEBUG: #t23 = result in $t0 (dirty)
    sw $t0, -104($fp)
    add $t0, $t5, $t0

    # TAC 44: 45: #t24 = * #t23
I45:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [<CONSTANT>]
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [$t5]
    # #t23: [$t0]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t24 = *#t23
    # DEBUG: Pointer #t23 already in $t0
    # DEBUG: Dereferenced *#t23 into $t6
    # DEBUG: #t24 = *#t23 in $t6 (dirty)
    lw $t6, 0($t0)

    # TAC 45: 46: param #t24
I46:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [#t24] (dirty)
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [$t5]
    # #t23: [$t0]
    # #t24: [$t6]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t24
    # DEBUG: Collected parameter #1: #t24

    # TAC 46: 47: #t25 = call print_char_c, 1
I47:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t23] (dirty)
    # $t1: [#t6] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t14] (dirty)
    # $t4: [#t18] (dirty)
    # $t5: [#t22] (dirty)
    # $t6: [#t24] (dirty)
    # $t7: [#t5] (dirty)
    # $t8: [#t7, #t8] (dirty)
    # $t9: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [$t2]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [$t3]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [$t4]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [$t5]
    # #t23: [$t0]
    # #t24: [$t6]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [$t7]
    # #t6: [$t1]
    # #t7: [$t8]
    # #t8: [$t8, memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_char_c with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t23 from $t0 to -112($fp)
    # DEBUG: Spilled #t6 from $t1 to -44($fp)
    # DEBUG: Spilled #t10 from $t2 to -60($fp)
    # DEBUG: Spilled #t14 from $t3 to -76($fp)
    # DEBUG: Spilled #t18 from $t4 to -92($fp)
    # DEBUG: Spilled #t22 from $t5 to -108($fp)
    # DEBUG: Spilled #t24 from $t6 to -116($fp)
    # DEBUG: Spilled #t5 from $t7 to -40($fp)
    # DEBUG: Spilled #t7 from $t8 to -48($fp)
    # DEBUG: Spilled #t8 from $t8 to -52($fp)
    # === End Caller-Save ===
    # === Built-in print_char function ===
    # DEBUG: Loaded #t24 from memory at -116($fp)
    sw $t0, -112($fp)
    # DEBUG: Moved char from $t0 to $a0
    sw $t1, -44($fp)
    sw $t2, -60($fp)
    # === End print_char ===
    sw $t3, -76($fp)
    sw $t4, -92($fp)
    sw $t5, -108($fp)
    sw $t6, -116($fp)
    sw $t7, -40($fp)
    sw $t8, -48($fp)
    sw $t8, -52($fp)
    lw $t0, -116($fp)
    move $a0, $t0
    li $v0, 11
    syscall

    # TAC 47: 48: return 0
I48:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # $t0: [#t24]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [$t0, memory:-116($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B12_i48_i48 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B12 ===
    # Instr i48 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B12 ===

    # Next-use information computed
    # TAC 48: 49: end function main
I49:
    # --- Register Descriptor ---
    # $f12: [v_f_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t10: [memory:-60($fp)]
    # #t11: [memory:-64($fp)]
    # #t12: [memory:-68($fp)]
    # #t13: [memory:-72($fp)]
    # #t14: [memory:-76($fp)]
    # #t15: [memory:-80($fp)]
    # #t16: [memory:-84($fp)]
    # #t17: [memory:-88($fp)]
    # #t18: [memory:-92($fp)]
    # #t19: [memory:-96($fp)]
    # #t2: [memory:-28($fp)]
    # #t20: [memory:-100($fp)]
    # #t21: [memory:-104($fp)]
    # #t22: [memory:-108($fp)]
    # #t23: [memory:-112($fp)]
    # #t24: [memory:-116($fp)]
    # #t3: [memory:#t3]
    # #t4: [memory:-36($fp)]
    # #t5: [memory:-40($fp)]
    # #t6: [memory:-44($fp)]
    # #t7: [memory:-48($fp)]
    # #t8: [memory:-52($fp)]
    # #t9: [memory:-56($fp)]
    # <CONSTANT>: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_f_print_float_f_s2: [$f12, memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_inp_myfunc_c_s2: [memory:8($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
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
