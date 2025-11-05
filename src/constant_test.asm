

-------------------------------------------------------------------------
Parsing completed. TAC output written to constant_test.tac
MIPS assembly written to constant_test.asm
Error log written to constant_test.c.errors
Debug log written to debug.log
Symbol table log written to symtab.log
Function table log written to function_table.log
Jump table log written to jump_table.log
-------------------------------------------------------------------------
-------------------------------------------------------------------------



  # Block B5: i11-i11
    # Block B6: i12-i12
    # Block B7: i13-i14
    # Block B8: i15-i15
    # Block B9: i16-i16

.data
    # String Literals
    # (no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i6 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : main
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 36 bytes
    addiu $sp, $sp, -36
    # Allocate 36 bytes (8 for $ra+$fp, 36 for locals/temps)
    sw $ra, 32($sp)
    # Save return address at 40($sp)
    sw $fp, 28($sp)
    # Save old frame pointer at 36($sp)
    addiu $fp, $sp, 28
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 1: 2: v_a_main_s2 = 10
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = 10
    li $t0, 10
    # DEBUG: v_a_main_s2 = constant 10 loaded in $t0 (dirty)

    # TAC 2: 3: v_b_main_s2 = 20
I3:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_b_main_s2 = 20
    li $t1, 20
    # DEBUG: v_b_main_s2 = constant 20 loaded in $t1 (dirty)

    # TAC 3: 4: #t1 = v_a_main_s2 + v_b_main_s2
I4:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t1 = v_a_main_s2 add v_b_main_s2
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: v_b_main_s2 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # TAC 4: 5: #t2 = #t1 + 30
I5:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t2 = #t1 add 30
    # DEBUG: #t1 in $t2
    li $t3, 30
    # DEBUG: Loaded constant 30 into $t3
    # DEBUG: 30 in $t3
    add $t3, $t2, $t3
    # DEBUG: #t2 = result in $t3 (dirty)

    # TAC 5: 6: v_c_main_s2 = #t2
I6:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_c_main_s2 = #t2
    # DEBUG: #t2 already in $t3
    # DEBUG: v_c_main_s2 now also in $t3 (dirty)

    # TAC 6: 7: if v_c_main_s2 > 50 goto I9
I7:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1] (dirty)
    # $t3: [#t2, v_c_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 4 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t0 to memory at -4($fp)
    sw $t1, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t1 to memory at -8($fp)
    sw $t2, -16($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -16($fp)
    sw $t3, -20($fp)
    # DEBUG: Spilled #t2 from $t3 to memory at -20($fp)
    sw $t3, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t3 to memory at -12($fp)
    # if v_c_main_s2 > 50 goto I9
    # DEBUG: v_c_main_s2 in $t3
    li $t4, 50
    # DEBUG: Loaded constant 50 into $t4
    # DEBUG: 50 in $t4
    bgt $t3, $t4, I9
    # Branch to I9 if condition true


    # ======================================
    # === B2_i7_i7 ===
    # ======================================
    # Registers cleared at block start
    # TAC 7: 8: goto I11
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I11
    j I11


    # ======================================
    # === B3_i8_i9 ===
    # ======================================
    # Registers cleared at block start
    # TAC 8: 9: #t3 = 1
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 1
    li $t0, 1
    # DEBUG: #t3 = constant 1 loaded in $t0 (dirty)

    # TAC 9: 10: goto I12
I10:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -24($fp)
    # DEBUG: Spilled #t3 from $t0 to memory at -24($fp)
    # Unconditional jump to I12
    j I12


    # ======================================
    # === B4_i10_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 10: 11: #t3 = 0
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 0
    li $t0, 0
    # DEBUG: #t3 = constant 0 loaded in $t0 (dirty)

    # End of block B4 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t0, -24($fp)
    # DEBUG: Spilled #t3 from $t0 to memory at -24($fp)

    # ======================================
    # === B5_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: if #t3   goto I14
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t3 ?? 0 goto I14
    lw $t0, -24($fp)
    # DEBUG: Loaded #t3 from memory at -24($fp)
    # DEBUG: #t3 in $t0
    bne $t0, $zero, I14
    # Branch to I14 if condition true


    # ======================================
    # === B6_i12_i12 ===
    # ======================================
    # Registers cleared at block start
    # TAC 12: 13: goto I16
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I16
    j I16


    # ======================================
    # === B7_i13_i14 ===
    # ======================================
    # Registers cleared at block start
    # TAC 13: 14: #t4 = v_c_main_s2 - 10
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # #t4 = v_c_main_s2 sub 10
    lw $t0, -12($fp)
    # DEBUG: Loaded v_c_main_s2 from memory at -12($fp)
    # DEBUG: v_c_main_s2 in $t0
    li $t1, 10
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: 10 in $t1
    sub $t1, $t0, $t1
    # DEBUG: #t4 = result in $t1 (dirty)

    # TAC 14: 15: v_c_main_s2 = #t4
I15:
    # --- Register Descriptor ---
    # $t0: [v_c_main_s2]
    # $t1: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [$t1]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t0, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_c_main_s2 = #t4
    # DEBUG: #t4 already in $t1
    # DEBUG: v_c_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_c_main_s2 now also in $t1 (dirty)

    # End of block B7 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    sw $t1, -28($fp)
    # DEBUG: Spilled #t4 from $t1 to memory at -28($fp)
    sw $t1, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t1 to memory at -12($fp)

    # ======================================
    # === B8_i15_i15 ===
    # ======================================
    # Registers cleared at block start
    # TAC 15: 16: return v_c_main_s2
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # return v_c_main_s2
    lw $t0, -12($fp)
    # DEBUG: Loaded v_c_main_s2 from memory at -12($fp)
    # DEBUG: v_c_main_s2 in $t0
    move $v0, $t0
    # DEBUG: Moved return value to $v0


    # ======================================
    # === B9_i16_i16 ===
    # ======================================
    # Registers cleared at block start
    # TAC 16: 17: end function main
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 36
    # Deallocate frame (36 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main


    # End of code
