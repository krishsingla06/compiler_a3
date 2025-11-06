    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 21

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
    # Block B7: i9-i19
    # Block B8: i20-i20

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
    # DEBUG: Parameter 0 (v_x_print_float_f_s2) also in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [$a0, memory:8($fp)]
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
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
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
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
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
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) also in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
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
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
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
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
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
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
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
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
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
    # === B7_i9_i19 ===
    # ======================================
    # Registers cleared at block start
    # TAC 9: 10: function begin : main
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 10: 11: v_x_main_s2 = 1.990000
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 1.990000
    # DEBUG: Float assignment
    # Loading float constant: 1.990000
    li.s $f0, 1.990000
    # DEBUG: Loaded float constant 1.990000 into $f0
    # DEBUG: 1.990000 in $f0
    # DEBUG: v_x_main_s2 = 1.990000 in $f0 (dirty, float)

    # TAC 11: 12: v_y_main_s2 = 2.700000
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = 2.700000
    # DEBUG: Float assignment
    # Loading float constant: 2.700000
    li.s $f1, 2.700000
    # DEBUG: Loaded float constant 2.700000 into $f1
    # DEBUG: 2.700000 in $f1
    # DEBUG: v_y_main_s2 = 2.700000 in $f1 (dirty, float)

    # TAC 12: 13: v_z_main_s2 = 3
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # --- End Storage Descriptor ---
    # Assignment: v_z_main_s2 = 3
    li $t0, 3
    # DEBUG: v_z_main_s2 = constant 3 loaded in $t0 (dirty)

    # TAC 13: 16: param v_p_main_s2
I16:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # param v_p_main_s2
    # DEBUG: Collected parameter #1: v_p_main_s2

    # TAC 14: 17: #t3 = call print_int_i, 1
I17:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    lw $t1, -24($fp)
    # DEBUG: Loaded v_p_main_s2 from memory at -24($fp)
    move $a0, $t1
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 15: 18: #t4 = call print_newline, 0
I18:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2] (dirty)
    # $t1: [v_p_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_main_s2: [$t1]
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 16: 19: param v_z_main_s2
I19:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2] (dirty)
    # $t1: [v_p_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_main_s2: [$t1]
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # param v_z_main_s2
    # DEBUG: Collected parameter #1: v_z_main_s2

    # TAC 17: 20: #t5 = call print_int_i, 1
I20:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2] (dirty)
    # $t1: [v_p_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_main_s2: [$t1]
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 18: 21: #t6 = call print_newline, 0
I21:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2] (dirty)
    # $t1: [v_p_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_main_s2: [$t1]
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 19: 22: return 0.000000
I22:
    # --- Register Descriptor ---
    # $t0: [v_z_main_s2] (dirty)
    # $t1: [v_p_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_p_main_s2: [$t1]
    # v_x_main_s2: [$f0]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1]
    # v_z_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 3 dirty registers
    s.s $f0, -4($fp)
    # DEBUG: Spilled float v_x_main_s2 from $f0 to memory at -4($fp)
    s.s $f1, -8($fp)
    # DEBUG: Spilled float v_y_main_s2 from $f1 to memory at -8($fp)
    sw $t0, -12($fp)
    # DEBUG: Spilled v_z_main_s2 from $t0 to memory at -12($fp)
    # return 0.000000
    # DEBUG: Returning float value
    # Loading float constant: 0.000000
    li.s $f0, 0.000000
    # DEBUG: Loaded float constant 0.000000 into $f0
    # DEBUG: 0.000000 in $f0


    # ======================================
    # === B8_i20_i20 ===
    # ======================================
    # Registers cleared at block start
    # TAC 20: 23: end function main
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$f0, memory:-4($fp)]
    # v_x_print_float_f_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$f1, memory:-8($fp)]
    # v_z_main_s2: [memory:-12($fp)]
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
