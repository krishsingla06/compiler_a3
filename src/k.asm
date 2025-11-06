    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 19

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i7
    # Block B6: i8-i8
    # Block B7: i9-i17
    # Block B8: i18-i18

.data
    # String Literals
    # (no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : print_float_f
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_print_float_f_s2) at 8($fp)
    # DEBUG: Float parameter 0 (v_x_print_float_f_s2) in $f12
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return (void)


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: end function print_float_f
I3:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
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
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: function begin : print_int_i
I4:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
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
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # $a0: [v_x_print_int_i_s2]
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return (void)


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: end function print_int_i
I6:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : print_newline
I7:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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


    # TAC 7: 8: return 
I8:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return (void)


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # TAC 8: 9: end function print_newline
I9:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
    # === B7_i9_i17 ===
    # ======================================
    # Registers cleared at block start
    # TAC 9: 10: function begin : main
I10:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 64 bytes
    addiu $sp, $sp, -64
    # Allocate 64 bytes (8 for $ra+$fp, 64 for locals/temps)
    sw $ra, 60($sp)
    # Save return address at 68($sp)
    sw $fp, 56($sp)
    # Save old frame pointer at 64($sp)
    addiu $fp, $sp, 56
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 10: 11: #t1 = & v_x_main_s2
I11:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_x_main_s2
    addiu $t0, $fp, -8
    # DEBUG: #t1 = address of v_x_main_s2 at -8($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)

    # TAC 11: 12: v_ptr_main_s2 = #t1
I12:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_ptr_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_ptr_main_s2 now also in $t0 (dirty)
    sw $t0, -4($fp)
    # DEBUG: Saved v_ptr_main_s2 to memory at -4($fp)

    # TAC 12: 13: #t2 = v_ptr_main_s2
I13:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_ptr_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = v_ptr_main_s2
    # DEBUG: Float assignment
    # DEBUG: v_ptr_main_s2 in $t0
    # DEBUG: #t2 = v_ptr_main_s2 in $t0 (dirty, float)

    # TAC 13: 14: *(#t2) = 1.100000
I14:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_ptr_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t2 = 1.100000
    # DEBUG: Pointer #t2 in $t0
    # Loading float constant: 1.100000
    li.s $f0, 1.100000
    # DEBUG: Loaded float constant 1.100000 into $f0
    # DEBUG: Float value 1.100000 in $f0
    s.s $f0, 0($t0)
    # DEBUG: Stored float 1.100000 through pointer #t2

    # TAC 14: 15: param v_x_main_s2
I15:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_ptr_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #1: v_x_main_s2

    # TAC 15: 16: #t3 = call print_float_f, 1
I16:
    # --- Register Descriptor ---
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_ptr_main_s2: [$t0, memory:-4($fp)]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_float_f with 1 arguments
    # === Built-in print_float function ===
    l.s $f1, -8($fp)
    # DEBUG: Loaded float v_x_main_s2 from -8($fp) into $f1
    mov.s $f12, $f1
    # DEBUG: Moved float from $f1 to $f12
    li $v0, 2
    syscall
    # === End print_float ===

    # TAC 16: 17: #t4 = call print_newline, 0
I17:
    # --- Register Descriptor ---
    # $f1: [v_x_main_s2]
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_ptr_main_s2: [$t0, memory:-4($fp)]
    # v_x_main_s2: [$f1]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 17: 18: return 0
I18:
    # --- Register Descriptor ---
    # $f1: [v_x_main_s2]
    # $f12: [v_x_print_float_f_s2]
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_ptr_main_s2: [$t0, memory:-4($fp)]
    # v_x_main_s2: [$f1]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -12($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -12($fp)
    sw $t0, -16($fp)
    # DEBUG: Spilled #t2 from $t0 to memory at -16($fp)
    sw $t0, -4($fp)
    # DEBUG: Spilled v_ptr_main_s2 from $t0 to memory at -4($fp)
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B8_i18_i18 ===
    # ======================================
    # Registers cleared at block start
    # TAC 18: 19: end function main
I19:
    # --- Register Descriptor ---
    # $f1: [v_x_main_s2]
    # $f12: [v_x_print_float_f_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_ptr_main_s2: [memory:-4($fp)]
    # v_x_main_s2: [$f1]
    # v_x_print_float_f_s2: [$f12, memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
