    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 22

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
    # Block B5: i6-i20
    # Block B6: i21-i21

.data
    # String Literals
    # (no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
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
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) at 8($fp)
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) also in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 0
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: end function print_int_i
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: function begin : print_newline
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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


    # TAC 4: 5: return 0
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: end function print_newline
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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
    # === B5_i6_i20 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 88 bytes
    addiu $sp, $sp, -88
    # Allocate 88 bytes (8 for $ra+$fp, 88 for locals/temps)
    sw $ra, 84($sp)
    # Save return address at 92($sp)
    sw $fp, 80($sp)
    # Save old frame pointer at 88($sp)
    addiu $fp, $sp, 80
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 7: 8: v_x_main_s2 = 10
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = 10
    li $t0, 10
    # DEBUG: v_x_main_s2 = constant 10 loaded in $t0 (dirty)

    # TAC 8: 9: v_y_main_s2 = 20
I9:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = 20
    li $t1, 20
    # DEBUG: v_y_main_s2 = constant 20 loaded in $t1 (dirty)

    # TAC 9: 10: #t1 = v_x_main_s2 + v_y_main_s2
I10:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t1 = v_x_main_s2 add v_y_main_s2
    # DEBUG: v_x_main_s2 in $t0
    # DEBUG: v_y_main_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # TAC 10: 11: v_z_main_s2 = #t1
I11:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_z_main_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_z_main_s2 now also in $t2 (dirty)

    # TAC 11: 12: param v_z_main_s2
I12:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # param v_z_main_s2
    # DEBUG: Collected parameter #1: v_z_main_s2

    # TAC 12: 13: #t2 = call print_int_i, 1
I13:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    move $a0, $t2
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 13: 14: #t3 = call print_newline, 0
I14:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 14: 15: param v_x_main_s2
I15:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #1: v_x_main_s2

    # TAC 15: 16: #t4 = call print_int_i, 1
I16:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    move $a0, $t0
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 16: 17: #t5 = call print_newline, 0
I17:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 17: 18: param v_y_main_s2
I18:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # param v_y_main_s2
    # DEBUG: Collected parameter #1: v_y_main_s2

    # TAC 18: 19: #t6 = call print_int_i, 1
I19:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    move $a0, $t1
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 19: 20: #t7 = call print_newline, 0
I20:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 20: 21: return v_z_main_s2
I21:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2] (dirty)
    # $t1: [v_y_main_s2] (dirty)
    # $t2: [#t1, v_z_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_x_main_s2: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t1]
    # v_z_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 3 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_x_main_s2 from $t0 to memory at -4($fp)
    sw $t1, -8($fp)
    # DEBUG: Spilled v_y_main_s2 from $t1 to memory at -8($fp)
    sw $t2, -12($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -12($fp)
    sw $t2, -16($fp)
    # DEBUG: Spilled v_z_main_s2 from $t2 to memory at -16($fp)
    # return v_z_main_s2
    # DEBUG: v_z_main_s2 in $t2
    move $v0, $t2
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B6_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # TAC 21: 22: end function main
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # v_x_main_s2: [memory:-4($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # v_z_main_s2: [memory:-16($fp)]
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
