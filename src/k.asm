    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 17

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
    # Block B5: i6-i16

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
    # === B5_i6_i16 ===
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
    # Frame size: 880 bytes
    addiu $sp, $sp, -880
    # Allocate 880 bytes (8 for $ra+$fp, 880 for locals/temps)
    sw $ra, 876($sp)
    # Save return address at 884($sp)
    sw $fp, 872($sp)
    # Save old frame pointer at 880($sp)
    addiu $fp, $sp, 872
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 7: 8: #t1 = 5 * 80
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = 5 mul 80
    li $t0, 5
    # DEBUG: Loaded constant 5 into $t0
    # DEBUG: 5 in $t0
    li $t1, 80
    # DEBUG: Loaded constant 80 into $t1
    # DEBUG: 80 in $t1
    mul $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # TAC 8: 9: #t2 = & v_arr_main_s2
I9:
    # --- Register Descriptor ---
    # $t0: [<CONSTANT>]
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = &v_arr_main_s2
    addiu $t0, $fp, -800
    # DEBUG: #t2 = address of v_arr_main_s2 at -800($fp)
    # DEBUG: #t2 (pointer) in $t0 (dirty)

    # TAC 9: 10: #t3 = #t2 + #t1
I10:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # <CONSTANT>: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = #t2 add #t1
    # DEBUG: #t2 in $t0
    # DEBUG: #t1 in $t2
    add $t3, $t0, $t2
    # DEBUG: #t3 = result in $t3 (dirty)

    # TAC 10: 11: #t4 = * #t3
I11:
    # --- Register Descriptor ---
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
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t4 = *#t3
    # DEBUG: Pointer #t3 already in $t3
    lw $t1, 0($t3)
    # DEBUG: Dereferenced *#t3 into $t1
    # DEBUG: #t4 = *#t3 in $t1 (dirty)

    # TAC 11: 12: #t5 = 3 * 4
I12:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t1]
    # <CONSTANT>: [$t1]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t5 = 3 mul 4
    li $t4, 3
    # DEBUG: Loaded constant 3 into $t4
    # DEBUG: 3 in $t4
    li $t5, 4
    # DEBUG: Loaded constant 4 into $t5
    # DEBUG: 4 in $t5
    mul $t6, $t4, $t5
    # DEBUG: #t5 = result in $t6 (dirty)

    # TAC 12: 13: #t6 = & #t4
I13:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t3] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t1]
    # #t5: [$t6]
    # <CONSTANT>: [$t5]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t6 = &#t4
    sw $t2, -804($fp)
    addiu $t2, $fp, -816
    # DEBUG: #t6 = address of #t4 at -816($fp)
    # DEBUG: #t6 (pointer) in $t2 (dirty)

    # TAC 13: 14: #t7 = #t6 + #t5
I14:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t6] (dirty)
    # $t3: [#t3] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t1]
    # #t5: [$t6]
    # #t6: [$t2]
    # <CONSTANT>: [$t5]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t7 = #t6 add #t5
    # DEBUG: #t6 in $t2
    # DEBUG: #t5 in $t6
    add $t7, $t2, $t6
    # DEBUG: #t7 = result in $t7 (dirty)

    # TAC 14: 15: #t8 = #t7
I15:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t6] (dirty)
    # $t3: [#t3] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [#t5] (dirty)
    # $t7: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t1]
    # #t5: [$t6]
    # #t6: [$t2]
    # #t7: [$t7]
    # <CONSTANT>: [$t5]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t8 = #t7
    # DEBUG: #t7 already in $t7
    # DEBUG: #t8 now also in $t7 (dirty)

    # TAC 15: 16: *(#t8) = 1
I16:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t6] (dirty)
    # $t3: [#t3] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [#t5] (dirty)
    # $t7: [#t7, #t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t1]
    # #t5: [$t6]
    # #t6: [$t2]
    # #t7: [$t7]
    # #t8: [$t7]
    # <CONSTANT>: [$t5]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # *#t8 = 1
    # DEBUG: Pointer #t8 in $t7
    li $t8, 1
    # DEBUG: Loaded constant 1 into $t8
    # DEBUG: Value 1 in $t8
    sw $t8, 0($t7)
    # DEBUG: Stored 1 through pointer #t8

    # TAC 16: 17: end function main
I17:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # $t1: [#t4] (dirty)
    # $t2: [#t6] (dirty)
    # $t3: [#t3] (dirty)
    # $t4: [<CONSTANT>]
    # $t5: [<CONSTANT>]
    # $t6: [#t5] (dirty)
    # $t7: [#t7, #t8] (dirty)
    # $t8: [<CONSTANT>]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:#t1]
    # #t2: [$t0]
    # #t3: [$t3]
    # #t4: [$t1]
    # #t5: [$t6]
    # #t6: [$t2]
    # #t7: [$t7]
    # #t8: [$t7]
    # <CONSTANT>: [$t8]
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
