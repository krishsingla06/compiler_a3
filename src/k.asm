    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 23

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
    # Block B5: i6-i10
    # Block B6: i11-i11
    # Block B7: i12-i16
    # Block B8: i17-i19
    # Block B9: i20-i21
    # Block B10: i22-i22

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
    # === B5_i6_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
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


    # TAC 7: 8: v_dec_main_s2 = 3
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_dec_main_s2 = 3
    li $t0, 3
    # DEBUG: v_dec_main_s2 = constant 3 loaded in $t0 (dirty)

    # TAC 8: 9: #t1 = 1
I9:
    # --- Register Descriptor ---
    # $t0: [v_dec_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_dec_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    li $t1, 1
    # DEBUG: #t1 = constant 1 loaded in $t1 (dirty)

    # TAC 9: 10: #t2 = 2
I10:
    # --- Register Descriptor ---
    # $t0: [v_dec_main_s2] (dirty)
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_dec_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 2
    li $t2, 2
    # DEBUG: #t2 = constant 2 loaded in $t2 (dirty)

    # TAC 10: 11: if v_dec_main_s2 < #t1 goto I21
I11:
    # --- Register Descriptor ---
    # $t0: [v_dec_main_s2] (dirty)
    # $t1: [#t1] (dirty)
    # $t2: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # #t2: [$t2]
    # v_dec_main_s2: [$t0]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 3 dirty registers
    sw $t0, -8($fp)
    # DEBUG: Spilled v_dec_main_s2 from $t0 to memory at -8($fp)
    sw $t1, -12($fp)
    # DEBUG: Spilled #t1 from $t1 to memory at -12($fp)
    sw $t2, -16($fp)
    # DEBUG: Spilled #t2 from $t2 to memory at -16($fp)
    # if v_dec_main_s2 < #t1 goto I21
    # DEBUG: v_dec_main_s2 in $t0
    # DEBUG: #t1 in $t1
    blt $t0, $t1, I21
    # Branch to I21 if condition true


    # ======================================
    # === B6_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: if v_dec_main_s2 > #t2 goto I21
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_dec_main_s2 > #t2 goto I21
    lw $t0, -8($fp)
    # DEBUG: Loaded v_dec_main_s2 from memory at -8($fp)
    # DEBUG: v_dec_main_s2 in $t0
    lw $t1, -16($fp)
    # DEBUG: Loaded #t2 from memory at -16($fp)
    # DEBUG: #t2 in $t1
    bgt $t0, $t1, I21
    # Branch to I21 if condition true


    # ======================================
    # === B7_i12_i16 ===
    # ======================================
    # Registers cleared at block start
    # TAC 12: 13: #t3 = v_dec_main_s2 - #t1
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = v_dec_main_s2 sub #t1
    lw $t0, -8($fp)
    # DEBUG: Loaded v_dec_main_s2 from memory at -8($fp)
    # DEBUG: v_dec_main_s2 in $t0
    lw $t1, -12($fp)
    # DEBUG: Loaded #t1 from memory at -12($fp)
    # DEBUG: #t1 in $t1
    sub $t2, $t0, $t1
    # DEBUG: #t3 = result in $t2 (dirty)

    # TAC 13: 14: goto_jump_table(0,#t3)
I14:
    # --- Register Descriptor ---
    # $t0: [v_dec_main_s2]
    # $t1: [#t1]
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1, memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t2]
    # v_dec_main_s2: [$t0, memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Switch-Case Jump Table 0 ===
    # Jump table size: 2
    # DEBUG: Index in $t2
    # DEBUG: Using $t3 for comparison values
    # DEBUG: Spilling before branch to I15
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -20($fp)
    # DEBUG: Spilled #t3 from $t2 to memory at -20($fp)
    li $t3, 0
    beq $t2, $t3, I15
    # DEBUG: if index == 0 goto I15
    # DEBUG: Spilling before branch to I18
    # DEBUG: No dirty registers to spill
    li $t3, 1
    beq $t2, $t3, I18
    # DEBUG: if index == 1 goto I18
    # === End Jump Table ===

    # TAC 14: 15: param 10
I15:
    # --- Register Descriptor ---
    # $t0: [v_dec_main_s2]
    # $t1: [#t1]
    # $t2: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1, memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t2, memory:-20($fp)]
    # v_dec_main_s2: [$t0, memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 10
    # DEBUG: Collected parameter #1: 10

    # TAC 15: 16: #t4 = call print_int_i, 1
I16:
    # --- Register Descriptor ---
    # $t0: [v_dec_main_s2]
    # $t1: [#t1]
    # $t2: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1, memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t2, memory:-20($fp)]
    # v_dec_main_s2: [$t0, memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    li $a0, 10
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 16: 17: goto I23
I17:
    # --- Register Descriptor ---
    # $t0: [v_dec_main_s2]
    # $t1: [#t1]
    # $t2: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1, memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [$t2, memory:-20($fp)]
    # v_dec_main_s2: [$t0, memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I23
    j I23


    # ======================================
    # === B8_i17_i19 ===
    # ======================================
    # Registers cleared at block start
    # TAC 17: 18: param 20
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 20
    # DEBUG: Collected parameter #1: 20

    # TAC 18: 19: #t5 = call print_int_i, 1
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    li $a0, 20
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 19: 20: goto I23
I20:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I23
    j I23


    # ======================================
    # === B9_i20_i21 ===
    # ======================================
    # Registers cleared at block start
    # TAC 20: 21: param 30
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 30
    # DEBUG: Collected parameter #1: 30

    # TAC 21: 22: #t6 = call print_int_i, 1
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    li $a0, 30
    li $v0, 1
    syscall
    # === End print_int ===

    # End of block B9 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B10_i22_i22 ===
    # ======================================
    # Registers cleared at block start
    # TAC 22: 23: end function main
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-12($fp)]
    # #t2: [memory:-16($fp)]
    # #t3: [memory:-20($fp)]
    # v_dec_main_s2: [memory:-8($fp)]
    # v_n_print_int_i_s2: [memory:8($fp)]
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
