    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 24

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
    # Block B5: i6-i22
    # Block B6: i23-i23

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
    # DEBUG: Integer parameter 0 (v_x_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_x_print_int_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


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


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


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
    # === B5_i6_i22 ===
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
    # Frame size: 80 bytes
    addiu $sp, $sp, -80
    # Allocate 80 bytes (8 for $ra+$fp, 80 for locals/temps)
    sw $ra, 76($sp)
    # Save return address at 84($sp)
    sw $fp, 72($sp)
    # Save old frame pointer at 80($sp)
    addiu $fp, $sp, 72
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 7: 8: #t1 = & v_a_main_s2
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_a_main_s2
    addiu $t0, $fp, -12
    # DEBUG: #t1 = address of v_a_main_s2 at -12($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)

    # TAC 8: 9: v_y_main_s2 = #t1
I9:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_y_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_y_main_s2 now also in $t0 (dirty)
    sw $t0, -8($fp)
    # DEBUG: Saved pointer v_y_main_s2 to memory for later dereference

    # TAC 9: 10: #t2 = v_x_main_s2
I10:
    # --- Register Descriptor ---
    # $t0: [#t1, v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = v_x_main_s2
    lw $t1, -4($fp)
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # DEBUG: #t2 loaded in $t1 (dirty)
    sw $t1, -20($fp)
    # DEBUG: Saved pointer #t2 to memory for later dereference

    # TAC 10: 11: *(#t2) = v_y_main_s2
I11:
    # --- Register Descriptor ---
    # $t0: [#t1, v_y_main_s2] (dirty)
    # $t1: [#t2, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1, memory:-20($fp)]
    # v_x_main_s2: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t0, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # *#t2 = v_y_main_s2
    # DEBUG: Pointer #t2 in $t1
    # DEBUG: Integer value v_y_main_s2 in $t0
    sw $t0, 0($t1)
    # DEBUG: Stored integer v_y_main_s2 through pointer #t2
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_y_main_s2 in $t0
    # DEBUG: Invalidating cached value of v_x_main_s2 in $t1

    # TAC 11: 12: #t3 = v_y_main_s2
I12:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1, memory:-20($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = v_y_main_s2
    lw $t2, -8($fp)
    # DEBUG: Loaded v_y_main_s2 from memory at -8($fp)
    # DEBUG: #t3 loaded in $t2 (dirty)

    # TAC 12: 13: *(#t3) = 10
I13:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3, v_y_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [$t2, memory:-8($fp)]
    # --- End Storage Descriptor ---
    # *#t3 = 10
    # DEBUG: Pointer #t3 in $t2
    li $t3, 10
    # DEBUG: Loaded constant 10 into $t3
    # DEBUG: Integer value 10 in $t3
    sw $t3, 0($t2)
    # DEBUG: Stored integer 10 through pointer #t3
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_y_main_s2 in $t2

    # TAC 13: 14: param v_a_main_s2
I14:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2]
    # <CONSTANT>: [$t3]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_a_main_s2
    # DEBUG: Collected parameter #1: v_a_main_s2

    # TAC 14: 15: #t4 = call print_int_i, 1
I15:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2]
    # <CONSTANT>: [$t3]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    lw $t4, -12($fp)
    # DEBUG: Loaded v_a_main_s2 from memory at -12($fp)
    move $a0, $t4
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 15: 16: #t5 = call print_newline, 0
I16:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [v_a_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2]
    # <CONSTANT>: [$t3]
    # v_a_main_s2: [$t4]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 16: 17: #t6 = * v_x_main_s2
I17:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [v_a_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1, memory:-20($fp)]
    # #t3: [$t2]
    # <CONSTANT>: [$t3]
    # v_a_main_s2: [$t4]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = *v_x_main_s2
    lw $t1, -4($fp)
    # DEBUG: Loaded pointer v_x_main_s2 from memory at -4($fp)
    sw $t2, -24($fp)
    # DEBUG: Spilled #t3 from $t2 to memory
    lw $t2, 0($t1)
    # DEBUG: Dereferenced *v_x_main_s2 into $t2
    # DEBUG: #t6 = *v_x_main_s2 in $t2 (dirty)

    # TAC 17: 18: #t7 = #t6
I18:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [v_x_main_s2] (dirty)
    # $t2: [#t6] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [v_a_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:#t3]
    # #t6: [$t2]
    # <CONSTANT>: [$t3]
    # v_a_main_s2: [$t4]
    # v_x_main_s2: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t7 = #t6
    # DEBUG: #t6 already in $t2
    # DEBUG: #t7 now also in $t2 (dirty)

    # TAC 18: 19: *(#t7) = 20
I19:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [v_x_main_s2] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONSTANT>]
    # $t4: [v_a_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:#t3]
    # #t6: [$t2]
    # #t7: [$t2]
    # <CONSTANT>: [$t3]
    # v_a_main_s2: [$t4]
    # v_x_main_s2: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # *#t7 = 20
    # DEBUG: Pointer #t7 in $t2
    li $t5, 20
    # DEBUG: Loaded constant 20 into $t5
    # DEBUG: Integer value 20 in $t5
    sw $t5, 0($t2)
    # DEBUG: Stored integer 20 through pointer #t7
    # DEBUG: Invalidating all cached values due to pointer store
    # DEBUG: Invalidating cached value of v_x_main_s2 in $t1
    # DEBUG: Invalidating cached value of v_a_main_s2 in $t4

    # TAC 19: 20: param v_a_main_s2
I20:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:#t3]
    # #t6: [$t2]
    # #t7: [$t2]
    # <CONSTANT>: [$t5]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # param v_a_main_s2
    # DEBUG: Collected parameter #1: v_a_main_s2

    # TAC 20: 21: #t8 = call print_int_i, 1
I21:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:#t3]
    # #t6: [$t2]
    # #t7: [$t2]
    # <CONSTANT>: [$t5]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    lw $t1, -12($fp)
    # DEBUG: Loaded v_a_main_s2 from memory at -12($fp)
    move $a0, $t1
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 21: 22: #t9 = call print_newline, 0
I22:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [v_a_main_s2] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:#t3]
    # #t6: [$t2]
    # #t7: [$t2]
    # <CONSTANT>: [$t5]
    # v_a_main_s2: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Call print_newline with 0 arguments
    # === Built-in print_newline function ===
    li $a0, 10
    li $v0, 11
    syscall
    # === End print_newline ===

    # TAC 22: 23: return 0
I23:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [v_a_main_s2] (dirty)
    # $t2: [#t6, #t7] (dirty)
    # $t3: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:#t3]
    # #t6: [$t2]
    # #t7: [$t2]
    # <CONSTANT>: [$t5]
    # v_a_main_s2: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 3 dirty registers
    sw $t0, -16($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at -16($fp)
    sw $t1, -12($fp)
    # DEBUG: Spilled v_a_main_s2 from $t1 to memory at -12($fp)
    sw $t2, -28($fp)
    # DEBUG: Spilled #t6 from $t2 to memory at -28($fp)
    sw $t2, -32($fp)
    # DEBUG: Spilled #t7 from $t2 to memory at -32($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B6_i23_i23 ===
    # ======================================
    # Registers cleared at block start
    # TAC 23: 24: end function main
I24:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:#t3]
    # #t6: [memory:-28($fp)]
    # #t7: [memory:-32($fp)]
    # v_a_main_s2: [memory:-12($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # v_y_main_s2: [memory:-8($fp)]
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
