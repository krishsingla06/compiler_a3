    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 22

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
    # Frame size: 84 bytes
    addiu $sp, $sp, -92
    # Allocate 92 bytes (8 for $ra+$fp, 84 for locals/temps)
    sw $ra, 88($sp)
    # Save return address at 88($sp)
    sw $fp, 84($sp)
    # Save old frame pointer at 84($sp)
    addiu $fp, $sp, 84
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC: 2: v_a_main_s2 = 12
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = 12
    li $t0, 12
    # DEBUG: v_a_main_s2 = constant 12 loaded in $t0 (dirty)

    # TAC: 3: v_b_main_s2 = 10
I3:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_b_main_s2 = 10
    li $t1, 10
    # DEBUG: v_b_main_s2 = constant 10 loaded in $t1 (dirty)

    # TAC: 4: #t1 = v_a_main_s2 & v_b_main_s2
I4:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t1 = v_a_main_s2 & v_b_main_s2
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: v_b_main_s2 in $t1
    and $t2, $t0, $t1
    # DEBUG: #t1 in $t2 (dirty)

    # TAC: 5: v_c_main_s2 = #t1
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
    # Assignment: v_c_main_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_c_main_s2 now also in $t2 (dirty)

    # TAC: 6: #t2 = v_a_main_s2 | v_b_main_s2
I6:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # #t2 = v_a_main_s2 | v_b_main_s2
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: v_b_main_s2 in $t1
    or $t3, $t0, $t1
    # DEBUG: #t2 in $t3 (dirty)

    # TAC: 7: v_d_main_s2 = #t2
I7:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Assignment: v_d_main_s2 = #t2
    # DEBUG: #t2 already in $t3
    # DEBUG: v_d_main_s2 now also in $t3 (dirty)

    # TAC: 8: #t3 = v_a_main_s2 ^ v_b_main_s2
I8:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # #t3 = v_a_main_s2 ^ v_b_main_s2
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: v_b_main_s2 in $t1
    xor $t4, $t0, $t1
    # DEBUG: #t3 in $t4 (dirty)

    # TAC: 9: v_e_main_s2 = #t3
I9:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Assignment: v_e_main_s2 = #t3
    # DEBUG: #t3 already in $t4
    # DEBUG: v_e_main_s2 now also in $t4 (dirty)

    # TAC: 10: #t4 = ~ v_a_main_s2
I10:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t4 = ~v_a_main_s2
    # DEBUG: v_a_main_s2 in $t0
    nor $t5, $t0, $zero
    # DEBUG: #t4 in $t5 (dirty)

    # TAC: 11: v_f_main_s2 = #t4
I11:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # Assignment: v_f_main_s2 = #t4
    # DEBUG: #t4 already in $t5
    # DEBUG: v_f_main_s2 now also in $t5 (dirty)

    # TAC: 12: #t5 = v_a_main_s2 << 2
I12:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # --- End Storage Descriptor ---
    # #t5 = v_a_main_s2 << 2
    # DEBUG: v_a_main_s2 in $t0
    sll $t6, $t0, 2
    # DEBUG: Shift by constant 2
    # DEBUG: #t5 in $t6 (dirty)

    # TAC: 13: v_g_main_s2 = v_a_main_s2
I13:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # --- End Storage Descriptor ---
    # Assignment: v_g_main_s2 = v_a_main_s2
    # DEBUG: v_a_main_s2 already in $t0
    # DEBUG: v_g_main_s2 now also in $t0 (dirty)

    # TAC: 14: #t6 = v_b_main_s2 >> 1
I14:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2, v_g_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t6 = v_b_main_s2 >> 1
    # DEBUG: v_b_main_s2 in $t1
    srl $t7, $t1, 1
    # DEBUG: Shift by constant 1
    # DEBUG: #t6 in $t7 (dirty)

    # TAC: 15: v_h_main_s2 = v_b_main_s2
I15:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2, v_g_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # #t6: [$t7]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_h_main_s2 = v_b_main_s2
    # DEBUG: v_b_main_s2 already in $t1
    # DEBUG: v_h_main_s2 now also in $t1 (dirty)

    # TAC: 16: #t7 = v_c_main_s2 + v_d_main_s2
I16:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2, v_g_main_s2] (dirty)
    # $t1: [v_b_main_s2, v_h_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # #t6: [$t7]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t0]
    # v_h_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t7 = v_c_main_s2 add v_d_main_s2
    # DEBUG: v_c_main_s2 in $t2
    # DEBUG: v_d_main_s2 in $t3
    add $t8, $t2, $t3
    # DEBUG: #t7 = result in $t8 (dirty)

    # TAC: 17: #t8 = #t7 + v_e_main_s2
I17:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2, v_g_main_s2] (dirty)
    # $t1: [v_b_main_s2, v_h_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t6] (dirty)
    # $t8: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # #t6: [$t7]
    # #t7: [$t8]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t0]
    # v_h_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t8 = #t7 add v_e_main_s2
    # DEBUG: #t7 in $t8
    # DEBUG: v_e_main_s2 in $t4
    add $t9, $t8, $t4
    # DEBUG: #t8 = result in $t9 (dirty)

    # TAC: 18: #t9 = #t8 + v_f_main_s2
I18:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2, v_g_main_s2] (dirty)
    # $t1: [v_b_main_s2, v_h_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t6] (dirty)
    # $t8: [#t7] (dirty)
    # $t9: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # #t6: [$t7]
    # #t7: [$t8]
    # #t8: [$t9]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t0]
    # v_h_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t9 = #t8 add v_f_main_s2
    # DEBUG: #t8 in $t9
    # DEBUG: v_f_main_s2 in $t5
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t0 to memory at -4($fp)
    sw $t0, -28($fp)
    # DEBUG: Spilled v_g_main_s2 from $t0 to memory at -28($fp)
    add $t0, $t9, $t5
    # DEBUG: #t9 = result in $t0 (dirty)

    # TAC: 19: #t10 = #t9 + v_g_main_s2
I19:
    # --- Register Descriptor ---
    # $t0: [#t9] (dirty)
    # $t1: [v_b_main_s2, v_h_main_s2] (dirty)
    # $t2: [#t1, v_c_main_s2] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t6] (dirty)
    # $t8: [#t7] (dirty)
    # $t9: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # #t6: [$t7]
    # #t7: [$t8]
    # #t8: [$t9]
    # #t9: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t10 = #t9 add v_g_main_s2
    # DEBUG: #t9 in $t0
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t1 to memory at -8($fp)
    sw $t1, -32($fp)
    # DEBUG: Spilled v_h_main_s2 from $t1 to memory at -32($fp)
    lw $t1, -28($fp)
    # DEBUG: Loaded v_g_main_s2 from memory at -28($fp)
    # DEBUG: v_g_main_s2 in $t1
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, -36($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -36($fp)
    sw $t2, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t2 to memory at -12($fp)
    add $t2, $t0, $t1
    # DEBUG: #t10 = result in $t2 (dirty)

    # TAC: 20: #t11 = #t10 + v_h_main_s2
I20:
    # --- Register Descriptor ---
    # $t0: [#t9] (dirty)
    # $t1: [v_g_main_s2] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [#t2, v_d_main_s2] (dirty)
    # $t4: [#t3, v_e_main_s2] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t6] (dirty)
    # $t8: [#t7] (dirty)
    # $t9: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-36($fp)]
    # #t10: [$t2]
    # #t2: [$t3]
    # #t3: [$t4]
    # #t4: [$t5]
    # #t5: [$t6]
    # #t6: [$t7]
    # #t7: [$t8]
    # #t8: [$t9]
    # #t9: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t1, memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # --- End Storage Descriptor ---
    # #t11 = #t10 add v_h_main_s2
    # DEBUG: #t10 in $t2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, -40($fp)
    # DEBUG: Spilled #t2 from $t3 to memory at -40($fp)
    sw $t3, -16($fp)
    # DEBUG: Spilled v_d_main_s2 from $t3 to memory at -16($fp)
    lw $t3, -32($fp)
    # DEBUG: Loaded v_h_main_s2 from memory at -32($fp)
    # DEBUG: v_h_main_s2 in $t3
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, -44($fp)
    # DEBUG: Spilled #t3 from $t4 to memory at -44($fp)
    sw $t4, -20($fp)
    # DEBUG: Spilled v_e_main_s2 from $t4 to memory at -20($fp)
    add $t4, $t2, $t3
    # DEBUG: #t11 = result in $t4 (dirty)

    # TAC: 21: return #t11
I21:
    # --- Register Descriptor ---
    # $t0: [#t9] (dirty)
    # $t1: [v_g_main_s2] (dirty)
    # $t2: [#t10] (dirty)
    # $t3: [v_h_main_s2] (dirty)
    # $t4: [#t11] (dirty)
    # $t5: [#t4, v_f_main_s2] (dirty)
    # $t6: [#t5] (dirty)
    # $t7: [#t6] (dirty)
    # $t8: [#t7] (dirty)
    # $t9: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-36($fp)]
    # #t10: [$t2]
    # #t11: [$t4]
    # #t2: [memory:-40($fp)]
    # #t3: [memory:-44($fp)]
    # #t4: [$t5]
    # #t5: [$t6]
    # #t6: [$t7]
    # #t7: [$t8]
    # #t8: [$t9]
    # #t9: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t1, memory:-28($fp)]
    # v_h_main_s2: [$t3, memory:-32($fp)]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 10 dirty registers
    sw $t0, -68($fp)
    # DEBUG: Spilled #t9 from $t0 to memory at -68($fp)
    sw $t1, -28($fp)
    # DEBUG: Spilled v_g_main_s2 from $t1 to memory at -28($fp)
    sw $t2, -72($fp)
    # DEBUG: Spilled #t10 from $t2 to memory at -72($fp)
    sw $t3, -32($fp)
    # DEBUG: Spilled v_h_main_s2 from $t3 to memory at -32($fp)
    sw $t4, -76($fp)
    # DEBUG: Spilled #t11 from $t4 to memory at -76($fp)
    sw $t5, -48($fp)
    # DEBUG: Spilled #t4 from $t5 to memory at -48($fp)
    sw $t5, -24($fp)
    # DEBUG: Spilled v_f_main_s2 from $t5 to memory at -24($fp)
    sw $t6, -52($fp)
    # DEBUG: Spilled #t5 from $t6 to memory at -52($fp)
    sw $t7, -56($fp)
    # DEBUG: Spilled #t6 from $t7 to memory at -56($fp)
    sw $t8, -60($fp)
    # DEBUG: Spilled #t7 from $t8 to memory at -60($fp)
    sw $t9, -64($fp)
    # DEBUG: Spilled #t8 from $t9 to memory at -64($fp)

    # TAC: 22: end function main
I22:
    # --- Register Descriptor ---
    # $t0: [#t9]
    # $t1: [v_g_main_s2]
    # $t2: [#t10]
    # $t3: [v_h_main_s2]
    # $t4: [#t11]
    # $t5: [#t4, v_f_main_s2]
    # $t6: [#t5]
    # $t7: [#t6]
    # $t8: [#t7]
    # $t9: [#t8]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-36($fp)]
    # #t10: [$t2, memory:-72($fp)]
    # #t11: [$t4, memory:-76($fp)]
    # #t2: [memory:-40($fp)]
    # #t3: [memory:-44($fp)]
    # #t4: [$t5, memory:-48($fp)]
    # #t5: [$t6, memory:-52($fp)]
    # #t6: [$t7, memory:-56($fp)]
    # #t7: [$t8, memory:-60($fp)]
    # #t8: [$t9, memory:-64($fp)]
    # #t9: [$t0, memory:-68($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [$t5, memory:-24($fp)]
    # v_g_main_s2: [$t1, memory:-28($fp)]
    # v_h_main_s2: [$t3, memory:-32($fp)]
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
    addiu $sp, $sp, 92
    # Deallocate frame (92 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main

    # End of code
