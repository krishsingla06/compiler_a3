    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 29

.data
    # Global variables

.text
.globl main

    # TAC: 1: function begin : main
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 56($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 2: v_a_main_s2 = 5
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = 5
    li $t0, 5
    # DEBUG: v_a_main_s2 = constant 5 loaded in $t0 (dirty)

    # TAC: 3: v_b_main_s2 = 0
I3:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_b_main_s2 = 0
    li $t1, 0
    # DEBUG: v_b_main_s2 = constant 0 loaded in $t1 (dirty)

    # TAC: 4: v_c_main_s2 = 10
I4:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_c_main_s2 = 10
    li $t2, 10
    # DEBUG: v_c_main_s2 = constant 10 loaded in $t2 (dirty)

    # TAC: 5: if v_a_main_s2   goto I7
I5:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Conditional jump - spilling dirty registers
    # DEBUG: Spilling 3 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t0 to memory at -4($fp)
    sw $t1, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t1 to memory at -8($fp)
    sw $t2, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t2 to memory at -12($fp)
    # if v_a_main_s2 ??  goto I7
    # DEBUG: v_a_main_s2 in $t0
    lw $t3, 0($fp)
    # DEBUG: Loaded  from memory at 0($fp)
    # DEBUG:  in $t3
    beq $t0, $t3, I7
    # Branch to I7 if condition true

    # TAC: 6: goto I11
I6:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I11
    j I11

    # TAC: 7: if v_c_main_s2   goto I9
I7:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Conditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # if v_c_main_s2 ??  goto I9
    # DEBUG: v_c_main_s2 in $t2
    # DEBUG:  in $t3
    beq $t2, $t3, I9
    # Branch to I9 if condition true

    # TAC: 8: goto I11
I8:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I11
    j I11

    # TAC: 9: #t1 = 1
I9:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    li $t4, 1
    # DEBUG: #t1 = constant 1 loaded in $t4 (dirty)

    # TAC: 10: goto I12
I10:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t4]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t4, -28($fp)
    # DEBUG: Spilled #t1 from $t4 to memory at -28($fp)
    # Unconditional jump to I12
    j I12

    # TAC: 11: #t1 = 0
I11:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t4, memory:-28($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    li $t5, 0
    # DEBUG: #t1 = constant 0 loaded in $t5 (dirty)

    # TAC: 12: v_result1_main_s2 = #t1
I12:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result1_main_s2 = #t1
    # DEBUG: #t1 already in $t5
    # DEBUG: v_result1_main_s2 now also in $t5 (dirty)

    # TAC: 13: if v_b_main_s2   goto I16
I13:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5]
    # --- End Storage Descriptor ---
    # Conditional jump - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t5, -28($fp)
    # DEBUG: Spilled #t1 from $t5 to memory at -28($fp)
    sw $t5, -16($fp)
    # DEBUG: Spilled v_result1_main_s2 from $t5 to memory at -16($fp)
    # if v_b_main_s2 ??  goto I16
    # DEBUG: v_b_main_s2 in $t1
    # DEBUG:  in $t3
    beq $t1, $t3, I16
    # Branch to I16 if condition true

    # TAC: 14: if v_c_main_s2   goto I16
I14:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # --- End Storage Descriptor ---
    # Conditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # if v_c_main_s2 ??  goto I16
    # DEBUG: v_c_main_s2 in $t2
    # DEBUG:  in $t3
    beq $t2, $t3, I16
    # Branch to I16 if condition true

    # TAC: 15: goto I18
I15:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I18
    j I18

    # TAC: 16: #t2 = 1
I16:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 1
    li $t6, 1
    # DEBUG: #t2 = constant 1 loaded in $t6 (dirty)

    # TAC: 17: goto I19
I17:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t6]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t6, -32($fp)
    # DEBUG: Spilled #t2 from $t6 to memory at -32($fp)
    # Unconditional jump to I19
    j I19

    # TAC: 18: #t2 = 0
I18:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t6, memory:-32($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = 0
    li $t7, 0
    # DEBUG: #t2 = constant 0 loaded in $t7 (dirty)

    # TAC: 19: v_result2_main_s2 = #t2
I19:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result2_main_s2 = #t2
    # DEBUG: #t2 already in $t7
    # DEBUG: v_result2_main_s2 now also in $t7 (dirty)

    # TAC: 20: if v_b_main_s2   goto I22
I20:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7]
    # --- End Storage Descriptor ---
    # Conditional jump - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t7, -32($fp)
    # DEBUG: Spilled #t2 from $t7 to memory at -32($fp)
    sw $t7, -20($fp)
    # DEBUG: Spilled v_result2_main_s2 from $t7 to memory at -20($fp)
    # if v_b_main_s2 ??  goto I22
    # DEBUG: v_b_main_s2 in $t1
    # DEBUG:  in $t3
    beq $t1, $t3, I22
    # Branch to I22 if condition true

    # TAC: 21: goto I24
I21:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I24
    j I24

    # TAC: 22: #t3 = 0
I22:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 0
    li $t8, 0
    # DEBUG: #t3 = constant 0 loaded in $t8 (dirty)

    # TAC: 23: goto I25
I23:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # $t8: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # #t3: [$t8]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # Unconditional jump - spilling dirty registers
    # DEBUG: Spilling 1 dirty registers
    sw $t8, -36($fp)
    # DEBUG: Spilled #t3 from $t8 to memory at -36($fp)
    # Unconditional jump to I25
    j I25

    # TAC: 24: #t3 = 1
I24:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # $t8: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # #t3: [$t8, memory:-36($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 1
    li $t9, 1
    # DEBUG: #t3 = constant 1 loaded in $t9 (dirty)

    # TAC: 25: v_result3_main_s2 = #t3
I25:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # $t8: [#t3]
    # $t9: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # #t3: [$t9]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result3_main_s2 = #t3
    # DEBUG: #t3 already in $t9
    # DEBUG: v_result3_main_s2 now also in $t9 (dirty)

    # TAC: 26: #t4 = v_result1_main_s2 + v_result2_main_s2
I26:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # $t8: [#t3]
    # $t9: [#t3, v_result3_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # #t3: [$t9]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # v_result3_main_s2: [$t9]
    # --- End Storage Descriptor ---
    # #t4 = v_result1_main_s2 add v_result2_main_s2
    # DEBUG: v_result1_main_s2 in $t5
    # DEBUG: v_result2_main_s2 in $t7
    # DEBUG: Spilling register $t0 due to register pressure
    add $t0, $t5, $t7
    # DEBUG: #t4 = result in $t0 (dirty)

    # TAC: 27: #t5 = #t4 + v_result3_main_s2
I27:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [v_b_main_s2]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # $t8: [#t3]
    # $t9: [#t3, v_result3_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # #t3: [$t9]
    # #t4: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # v_result3_main_s2: [$t9]
    # --- End Storage Descriptor ---
    # #t5 = #t4 add v_result3_main_s2
    # DEBUG: #t4 in $t0
    # DEBUG: v_result3_main_s2 in $t9
    # DEBUG: Spilling register $t1 due to register pressure
    add $t1, $t0, $t9
    # DEBUG: #t5 = result in $t1 (dirty)

    # TAC: 28: return #t5
I28:
    # --- Register Descriptor ---
    # $t0: [#t4] (dirty)
    # $t1: [#t5] (dirty)
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # $t8: [#t3]
    # $t9: [#t3, v_result3_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # #t3: [$t9]
    # #t4: [$t0]
    # #t5: [$t1]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # v_result3_main_s2: [$t9]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 3 dirty registers
    sw $t0, -40($fp)
    # DEBUG: Spilled #t4 from $t0 to memory at -40($fp)
    sw $t1, -44($fp)
    # DEBUG: Spilled #t5 from $t1 to memory at -44($fp)
    sw $t9, -36($fp)
    # DEBUG: Spilled #t3 from $t9 to memory at -36($fp)
    sw $t9, -24($fp)
    # DEBUG: Spilled v_result3_main_s2 from $t9 to memory at -24($fp)

    # TAC: 29: end function main
I29:
    # --- Register Descriptor ---
    # $t0: [#t4]
    # $t1: [#t5]
    # $t2: [v_c_main_s2]
    # $t3: []
    # $t4: [#t1]
    # $t5: [#t1, v_result1_main_s2]
    # $t6: [#t2]
    # $t7: [#t2, v_result2_main_s2]
    # $t8: [#t3]
    # $t9: [#t3, v_result3_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # : [$t3]
    # #t1: [$t5, memory:-28($fp)]
    # #t2: [$t7, memory:-32($fp)]
    # #t3: [$t9, memory:-36($fp)]
    # #t4: [$t0, memory:-40($fp)]
    # #t5: [$t1, memory:-44($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t2, memory:-12($fp)]
    # v_result1_main_s2: [$t5, memory:-16($fp)]
    # v_result2_main_s2: [$t7, memory:-20($fp)]
    # v_result3_main_s2: [$t9, memory:-24($fp)]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 60
    # Deallocate frame (60 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main

    # End of code
