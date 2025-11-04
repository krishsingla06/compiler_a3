    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 29

.data
    # Global variables

.text
.globl main

    # TAC: 1: function begin : main
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main:
    # Function: main

    # TAC: 2: v_a_main_s2 = 1
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = 1
    li $t0, 1
    # DEBUG: v_a_main_s2 = constant 1 loaded in $t0 (dirty)

    # TAC: 3: v_b_main_s2 = 2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_b_main_s2 = 2
    li $t1, 2
    # DEBUG: v_b_main_s2 = constant 2 loaded in $t1 (dirty)

    # TAC: 4: v_c_main_s2 = 3
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_c_main_s2 = 3
    li $t2, 3
    # DEBUG: v_c_main_s2 = constant 3 loaded in $t2 (dirty)

    # TAC: 5: v_d_main_s2 = 4
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
    # Assignment: v_d_main_s2 = 4
    li $t3, 4
    # DEBUG: v_d_main_s2 = constant 4 loaded in $t3 (dirty)

    # TAC: 6: v_e_main_s2 = 5
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Assignment: v_e_main_s2 = 5
    li $t4, 5
    # DEBUG: v_e_main_s2 = constant 5 loaded in $t4 (dirty)

    # TAC: 7: #t1 = v_a_main_s2 + v_b_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t1 = v_a_main_s2 add v_b_main_s2
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: v_b_main_s2 in $t1
    add $t5, $t0, $t1
    # DEBUG: #t1 = result in $t5 (dirty)

    # TAC: 8: #t2 = v_c_main_s2 + v_d_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t2 = v_c_main_s2 add v_d_main_s2
    # DEBUG: v_c_main_s2 in $t2
    # DEBUG: v_d_main_s2 in $t3
    add $t6, $t2, $t3
    # DEBUG: #t2 = result in $t6 (dirty)

    # TAC: 9: #t3 = #t1 * #t2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t6]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t3 = #t1 mul #t2
    # DEBUG: #t1 in $t5
    # DEBUG: #t2 in $t6
    mul $t7, $t5, $t6
    # DEBUG: #t3 = result in $t7 (dirty)

    # TAC: 10: #t4 = v_a_main_s2 - v_b_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t2] (dirty)
    # $t7: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t6]
    # #t3: [$t7]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t4 = v_a_main_s2 sub v_b_main_s2
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: v_b_main_s2 in $t1
    sub $t8, $t0, $t1
    # DEBUG: #t4 = result in $t8 (dirty)

    # TAC: 11: #t5 = v_c_main_s2 - v_d_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t2] (dirty)
    # $t7: [#t3] (dirty)
    # $t8: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t6]
    # #t3: [$t7]
    # #t4: [$t8]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t5 = v_c_main_s2 sub v_d_main_s2
    # DEBUG: v_c_main_s2 in $t2
    # DEBUG: v_d_main_s2 in $t3
    sub $t9, $t2, $t3
    # DEBUG: #t5 = result in $t9 (dirty)

    # TAC: 12: #t6 = #t4 * #t5
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t2] (dirty)
    # $t7: [#t3] (dirty)
    # $t8: [#t4] (dirty)
    # $t9: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t6]
    # #t3: [$t7]
    # #t4: [$t8]
    # #t5: [$t9]
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t6 = #t4 mul #t5
    # DEBUG: #t4 in $t8
    # DEBUG: #t5 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t0 to memory at -4($fp)
    mul $t0, $t8, $t9
    # DEBUG: #t6 = result in $t0 (dirty)

    # TAC: 13: #t7 = #t3 + #t6
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t2] (dirty)
    # $t7: [#t3] (dirty)
    # $t8: [#t4] (dirty)
    # $t9: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t6]
    # #t3: [$t7]
    # #t4: [$t8]
    # #t5: [$t9]
    # #t6: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t7 = #t3 add #t6
    # DEBUG: #t3 in $t7
    # DEBUG: #t6 in $t0
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t1 to memory at -8($fp)
    add $t1, $t7, $t0
    # DEBUG: #t7 = result in $t1 (dirty)

    # TAC: 14: #t8 = v_a_main_s2 * v_b_main_s2
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # $t1: [#t7] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t2] (dirty)
    # $t7: [#t3] (dirty)
    # $t8: [#t4] (dirty)
    # $t9: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t6]
    # #t3: [$t7]
    # #t4: [$t8]
    # #t5: [$t9]
    # #t6: [$t0]
    # #t7: [$t1]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t8 = v_a_main_s2 mul v_b_main_s2
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t2 to memory at -12($fp)
    lw $t2, -4($fp)
    # DEBUG: Loaded v_a_main_s2 from memory at -4($fp)
    # DEBUG: v_a_main_s2 in $t2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, -16($fp)
    # DEBUG: Spilled v_d_main_s2 from $t3 to memory at -16($fp)
    lw $t3, -8($fp)
    # DEBUG: Loaded v_b_main_s2 from memory at -8($fp)
    # DEBUG: v_b_main_s2 in $t3
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, -20($fp)
    # DEBUG: Spilled v_e_main_s2 from $t4 to memory at -20($fp)
    mul $t4, $t2, $t3
    # DEBUG: #t8 = result in $t4 (dirty)

    # TAC: 15: #t9 = v_c_main_s2 * v_d_main_s2
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # $t1: [#t7] (dirty)
    # $t2: [v_a_main_s2] (dirty)
    # $t3: [v_b_main_s2] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [#t1] (dirty)
    # $t6: [#t2] (dirty)
    # $t7: [#t3] (dirty)
    # $t8: [#t4] (dirty)
    # $t9: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t5]
    # #t2: [$t6]
    # #t3: [$t7]
    # #t4: [$t8]
    # #t5: [$t9]
    # #t6: [$t0]
    # #t7: [$t1]
    # #t8: [$t4]
    # v_a_main_s2: [$t2, memory:-4($fp)]
    # v_b_main_s2: [$t3, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t9 = v_c_main_s2 mul v_d_main_s2
    # DEBUG: Spilling register $t5 due to register pressure
    sw $t5, 0($fp)
    # DEBUG: Spilled #t1 from $t5 to memory at 0($fp)
    lw $t5, -12($fp)
    # DEBUG: Loaded v_c_main_s2 from memory at -12($fp)
    # DEBUG: v_c_main_s2 in $t5
    # DEBUG: Spilling register $t6 due to register pressure
    sw $t6, 0($fp)
    # DEBUG: Spilled #t2 from $t6 to memory at 0($fp)
    lw $t6, -16($fp)
    # DEBUG: Loaded v_d_main_s2 from memory at -16($fp)
    # DEBUG: v_d_main_s2 in $t6
    # DEBUG: Spilling register $t7 due to register pressure
    sw $t7, 0($fp)
    # DEBUG: Spilled #t3 from $t7 to memory at 0($fp)
    mul $t7, $t5, $t6
    # DEBUG: #t9 = result in $t7 (dirty)

    # TAC: 16: #t10 = #t8 + #t9
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # $t1: [#t7] (dirty)
    # $t2: [v_a_main_s2] (dirty)
    # $t3: [v_b_main_s2] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [v_c_main_s2] (dirty)
    # $t6: [v_d_main_s2] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t4] (dirty)
    # $t9: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [$t8]
    # #t5: [$t9]
    # #t6: [$t0]
    # #t7: [$t1]
    # #t8: [$t4]
    # #t9: [$t7]
    # v_a_main_s2: [$t2, memory:-4($fp)]
    # v_b_main_s2: [$t3, memory:-8($fp)]
    # v_c_main_s2: [$t5, memory:-12($fp)]
    # v_d_main_s2: [$t6, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t10 = #t8 add #t9
    # DEBUG: #t8 in $t4
    # DEBUG: #t9 in $t7
    # DEBUG: Spilling register $t8 due to register pressure
    sw $t8, 0($fp)
    # DEBUG: Spilled #t4 from $t8 to memory at 0($fp)
    add $t8, $t4, $t7
    # DEBUG: #t10 = result in $t8 (dirty)

    # TAC: 17: #t11 = #t7 + #t10
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # $t1: [#t7] (dirty)
    # $t2: [v_a_main_s2] (dirty)
    # $t3: [v_b_main_s2] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [v_c_main_s2] (dirty)
    # $t6: [v_d_main_s2] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t10] (dirty)
    # $t9: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t8]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [$t9]
    # #t6: [$t0]
    # #t7: [$t1]
    # #t8: [$t4]
    # #t9: [$t7]
    # v_a_main_s2: [$t2, memory:-4($fp)]
    # v_b_main_s2: [$t3, memory:-8($fp)]
    # v_c_main_s2: [$t5, memory:-12($fp)]
    # v_d_main_s2: [$t6, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t11 = #t7 add #t10
    # DEBUG: #t7 in $t1
    # DEBUG: #t10 in $t8
    # DEBUG: Spilling register $t9 due to register pressure
    sw $t9, 0($fp)
    # DEBUG: Spilled #t5 from $t9 to memory at 0($fp)
    add $t9, $t1, $t8
    # DEBUG: #t11 = result in $t9 (dirty)

    # TAC: 18: #t12 = v_a_main_s2 + v_c_main_s2
    # --- Register Descriptor ---
    # $t0: [#t6] (dirty)
    # $t1: [#t7] (dirty)
    # $t2: [v_a_main_s2] (dirty)
    # $t3: [v_b_main_s2] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [v_c_main_s2] (dirty)
    # $t6: [v_d_main_s2] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t10] (dirty)
    # $t9: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t8]
    # #t11: [$t9]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [$t0]
    # #t7: [$t1]
    # #t8: [$t4]
    # #t9: [$t7]
    # v_a_main_s2: [$t2, memory:-4($fp)]
    # v_b_main_s2: [$t3, memory:-8($fp)]
    # v_c_main_s2: [$t5, memory:-12($fp)]
    # v_d_main_s2: [$t6, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t12 = v_a_main_s2 add v_c_main_s2
    # DEBUG: v_a_main_s2 in $t2
    # DEBUG: v_c_main_s2 in $t5
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, 0($fp)
    # DEBUG: Spilled #t6 from $t0 to memory at 0($fp)
    add $t0, $t2, $t5
    # DEBUG: #t12 = result in $t0 (dirty)

    # TAC: 19: #t13 = v_b_main_s2 + v_d_main_s2
    # --- Register Descriptor ---
    # $t0: [#t12] (dirty)
    # $t1: [#t7] (dirty)
    # $t2: [v_a_main_s2] (dirty)
    # $t3: [v_b_main_s2] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [v_c_main_s2] (dirty)
    # $t6: [v_d_main_s2] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t10] (dirty)
    # $t9: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t8]
    # #t11: [$t9]
    # #t12: [$t0]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [$t1]
    # #t8: [$t4]
    # #t9: [$t7]
    # v_a_main_s2: [$t2, memory:-4($fp)]
    # v_b_main_s2: [$t3, memory:-8($fp)]
    # v_c_main_s2: [$t5, memory:-12($fp)]
    # v_d_main_s2: [$t6, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t13 = v_b_main_s2 add v_d_main_s2
    # DEBUG: v_b_main_s2 in $t3
    # DEBUG: v_d_main_s2 in $t6
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, 0($fp)
    # DEBUG: Spilled #t7 from $t1 to memory at 0($fp)
    add $t1, $t3, $t6
    # DEBUG: #t13 = result in $t1 (dirty)

    # TAC: 20: #t14 = #t12 * #t13
    # --- Register Descriptor ---
    # $t0: [#t12] (dirty)
    # $t1: [#t13] (dirty)
    # $t2: [v_a_main_s2] (dirty)
    # $t3: [v_b_main_s2] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [v_c_main_s2] (dirty)
    # $t6: [v_d_main_s2] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t10] (dirty)
    # $t9: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t8]
    # #t11: [$t9]
    # #t12: [$t0]
    # #t13: [$t1]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [$t4]
    # #t9: [$t7]
    # v_a_main_s2: [$t2, memory:-4($fp)]
    # v_b_main_s2: [$t3, memory:-8($fp)]
    # v_c_main_s2: [$t5, memory:-12($fp)]
    # v_d_main_s2: [$t6, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t14 = #t12 mul #t13
    # DEBUG: #t12 in $t0
    # DEBUG: #t13 in $t1
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t2 to memory at -4($fp)
    mul $t2, $t0, $t1
    # DEBUG: #t14 = result in $t2 (dirty)

    # TAC: 21: #t15 = #t11 + #t14
    # --- Register Descriptor ---
    # $t0: [#t12] (dirty)
    # $t1: [#t13] (dirty)
    # $t2: [#t14] (dirty)
    # $t3: [v_b_main_s2] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [v_c_main_s2] (dirty)
    # $t6: [v_d_main_s2] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t10] (dirty)
    # $t9: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t8]
    # #t11: [$t9]
    # #t12: [$t0]
    # #t13: [$t1]
    # #t14: [$t2]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [$t4]
    # #t9: [$t7]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [$t3, memory:-8($fp)]
    # v_c_main_s2: [$t5, memory:-12($fp)]
    # v_d_main_s2: [$t6, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t15 = #t11 add #t14
    # DEBUG: #t11 in $t9
    # DEBUG: #t14 in $t2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t3 to memory at -8($fp)
    add $t3, $t9, $t2
    # DEBUG: #t15 = result in $t3 (dirty)

    # TAC: 22: #t16 = v_a_main_s2 + v_b_main_s2
    # --- Register Descriptor ---
    # $t0: [#t12] (dirty)
    # $t1: [#t13] (dirty)
    # $t2: [#t14] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [#t8] (dirty)
    # $t5: [v_c_main_s2] (dirty)
    # $t6: [v_d_main_s2] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t10] (dirty)
    # $t9: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t8]
    # #t11: [$t9]
    # #t12: [$t0]
    # #t13: [$t1]
    # #t14: [$t2]
    # #t15: [$t3]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [$t4]
    # #t9: [$t7]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t5, memory:-12($fp)]
    # v_d_main_s2: [$t6, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t16 = v_a_main_s2 add v_b_main_s2
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, 0($fp)
    # DEBUG: Spilled #t8 from $t4 to memory at 0($fp)
    lw $t4, -4($fp)
    # DEBUG: Loaded v_a_main_s2 from memory at -4($fp)
    # DEBUG: v_a_main_s2 in $t4
    # DEBUG: Spilling register $t5 due to register pressure
    sw $t5, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t5 to memory at -12($fp)
    lw $t5, -8($fp)
    # DEBUG: Loaded v_b_main_s2 from memory at -8($fp)
    # DEBUG: v_b_main_s2 in $t5
    # DEBUG: Spilling register $t6 due to register pressure
    sw $t6, -16($fp)
    # DEBUG: Spilled v_d_main_s2 from $t6 to memory at -16($fp)
    add $t6, $t4, $t5
    # DEBUG: #t16 = result in $t6 (dirty)

    # TAC: 23: #t17 = #t16 + v_c_main_s2
    # --- Register Descriptor ---
    # $t0: [#t12] (dirty)
    # $t1: [#t13] (dirty)
    # $t2: [#t14] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [v_a_main_s2] (dirty)
    # $t5: [v_b_main_s2] (dirty)
    # $t6: [#t16] (dirty)
    # $t7: [#t9] (dirty)
    # $t8: [#t10] (dirty)
    # $t9: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t8]
    # #t11: [$t9]
    # #t12: [$t0]
    # #t13: [$t1]
    # #t14: [$t2]
    # #t15: [$t3]
    # #t16: [$t6]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [$t7]
    # v_a_main_s2: [$t4, memory:-4($fp)]
    # v_b_main_s2: [$t5, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t17 = #t16 add v_c_main_s2
    # DEBUG: #t16 in $t6
    # DEBUG: Spilling register $t7 due to register pressure
    sw $t7, 0($fp)
    # DEBUG: Spilled #t9 from $t7 to memory at 0($fp)
    lw $t7, -12($fp)
    # DEBUG: Loaded v_c_main_s2 from memory at -12($fp)
    # DEBUG: v_c_main_s2 in $t7
    # DEBUG: Spilling register $t8 due to register pressure
    sw $t8, 0($fp)
    # DEBUG: Spilled #t10 from $t8 to memory at 0($fp)
    add $t8, $t6, $t7
    # DEBUG: #t17 = result in $t8 (dirty)

    # TAC: 24: #t18 = #t17 + v_d_main_s2
    # --- Register Descriptor ---
    # $t0: [#t12] (dirty)
    # $t1: [#t13] (dirty)
    # $t2: [#t14] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [v_a_main_s2] (dirty)
    # $t5: [v_b_main_s2] (dirty)
    # $t6: [#t16] (dirty)
    # $t7: [v_c_main_s2] (dirty)
    # $t8: [#t17] (dirty)
    # $t9: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [$t9]
    # #t12: [$t0]
    # #t13: [$t1]
    # #t14: [$t2]
    # #t15: [$t3]
    # #t16: [$t6]
    # #t17: [$t8]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t4, memory:-4($fp)]
    # v_b_main_s2: [$t5, memory:-8($fp)]
    # v_c_main_s2: [$t7, memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t18 = #t17 add v_d_main_s2
    # DEBUG: #t17 in $t8
    # DEBUG: Spilling register $t9 due to register pressure
    sw $t9, 0($fp)
    # DEBUG: Spilled #t11 from $t9 to memory at 0($fp)
    lw $t9, -16($fp)
    # DEBUG: Loaded v_d_main_s2 from memory at -16($fp)
    # DEBUG: v_d_main_s2 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, 0($fp)
    # DEBUG: Spilled #t12 from $t0 to memory at 0($fp)
    add $t0, $t8, $t9
    # DEBUG: #t18 = result in $t0 (dirty)

    # TAC: 25: #t19 = v_e_main_s2 * #t18
    # --- Register Descriptor ---
    # $t0: [#t18] (dirty)
    # $t1: [#t13] (dirty)
    # $t2: [#t14] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [v_a_main_s2] (dirty)
    # $t5: [v_b_main_s2] (dirty)
    # $t6: [#t16] (dirty)
    # $t7: [v_c_main_s2] (dirty)
    # $t8: [#t17] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [$t1]
    # #t14: [$t2]
    # #t15: [$t3]
    # #t16: [$t6]
    # #t17: [$t8]
    # #t18: [$t0]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t4, memory:-4($fp)]
    # v_b_main_s2: [$t5, memory:-8($fp)]
    # v_c_main_s2: [$t7, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t19 = v_e_main_s2 mul #t18
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, 0($fp)
    # DEBUG: Spilled #t13 from $t1 to memory at 0($fp)
    lw $t1, -20($fp)
    # DEBUG: Loaded v_e_main_s2 from memory at -20($fp)
    # DEBUG: v_e_main_s2 in $t1
    # DEBUG: #t18 in $t0
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, 0($fp)
    # DEBUG: Spilled #t14 from $t2 to memory at 0($fp)
    mul $t2, $t1, $t0
    # DEBUG: #t19 = result in $t2 (dirty)

    # TAC: 26: #t20 = #t15 + #t19
    # --- Register Descriptor ---
    # $t0: [#t18] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [#t19] (dirty)
    # $t3: [#t15] (dirty)
    # $t4: [v_a_main_s2] (dirty)
    # $t5: [v_b_main_s2] (dirty)
    # $t6: [#t16] (dirty)
    # $t7: [v_c_main_s2] (dirty)
    # $t8: [#t17] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [$t3]
    # #t16: [$t6]
    # #t17: [$t8]
    # #t18: [$t0]
    # #t19: [$t2]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t4, memory:-4($fp)]
    # v_b_main_s2: [$t5, memory:-8($fp)]
    # v_c_main_s2: [$t7, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # #t20 = #t15 add #t19
    # DEBUG: #t15 in $t3
    # DEBUG: #t19 in $t2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, 0($fp)
    # DEBUG: Spilled #t15 from $t3 to memory at 0($fp)
    add $t3, $t3, $t2
    # DEBUG: #t20 = result in $t3 (dirty)

    # TAC: 27: v_result_main_s2 = #t20
    # --- Register Descriptor ---
    # $t0: [#t18] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [#t19] (dirty)
    # $t3: [#t20] (dirty)
    # $t4: [v_a_main_s2] (dirty)
    # $t5: [v_b_main_s2] (dirty)
    # $t6: [#t16] (dirty)
    # $t7: [v_c_main_s2] (dirty)
    # $t8: [#t17] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [memory:0($fp)]
    # #t16: [$t6]
    # #t17: [$t8]
    # #t18: [$t0]
    # #t19: [$t2]
    # #t2: [memory:0($fp)]
    # #t20: [$t3]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t4, memory:-4($fp)]
    # v_b_main_s2: [$t5, memory:-8($fp)]
    # v_c_main_s2: [$t7, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t20
    # DEBUG: #t20 already in $t3
    # DEBUG: v_result_main_s2 now also in $t3 (dirty)

    # TAC: 28: return v_result_main_s2
    # --- Register Descriptor ---
    # $t0: [#t18] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [#t19] (dirty)
    # $t3: [#t20, v_result_main_s2] (dirty)
    # $t4: [v_a_main_s2] (dirty)
    # $t5: [v_b_main_s2] (dirty)
    # $t6: [#t16] (dirty)
    # $t7: [v_c_main_s2] (dirty)
    # $t8: [#t17] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [memory:0($fp)]
    # #t16: [$t6]
    # #t17: [$t8]
    # #t18: [$t0]
    # #t19: [$t2]
    # #t2: [memory:0($fp)]
    # #t20: [$t3]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t4, memory:-4($fp)]
    # v_b_main_s2: [$t5, memory:-8($fp)]
    # v_c_main_s2: [$t7, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_result_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 10 dirty registers
    sw $t0, 0($fp)
    # DEBUG: Spilled #t18 from $t0 to memory at 0($fp)
    sw $t1, -20($fp)
    # DEBUG: Spilled v_e_main_s2 from $t1 to memory at -20($fp)
    sw $t2, 0($fp)
    # DEBUG: Spilled #t19 from $t2 to memory at 0($fp)
    sw $t3, 0($fp)
    # DEBUG: Spilled #t20 from $t3 to memory at 0($fp)
    sw $t3, -104($fp)
    # DEBUG: Spilled v_result_main_s2 from $t3 to memory at -104($fp)
    sw $t4, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t4 to memory at -4($fp)
    sw $t5, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t5 to memory at -8($fp)
    sw $t6, 0($fp)
    # DEBUG: Spilled #t16 from $t6 to memory at 0($fp)
    sw $t7, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t7 to memory at -12($fp)
    sw $t8, 0($fp)
    # DEBUG: Spilled #t17 from $t8 to memory at 0($fp)
    sw $t9, -16($fp)
    # DEBUG: Spilled v_d_main_s2 from $t9 to memory at -16($fp)

    # TAC: 29: end function main
    # --- Register Descriptor ---
    # $t0: [#t18]
    # $t1: [v_e_main_s2]
    # $t2: [#t19]
    # $t3: [#t20, v_result_main_s2]
    # $t4: [v_a_main_s2]
    # $t5: [v_b_main_s2]
    # $t6: [#t16]
    # $t7: [v_c_main_s2]
    # $t8: [#t17]
    # $t9: [v_d_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [memory:0($fp)]
    # #t16: [$t6, memory:0($fp)]
    # #t17: [$t8, memory:0($fp)]
    # #t18: [$t0, memory:0($fp)]
    # #t19: [$t2, memory:0($fp)]
    # #t2: [memory:0($fp)]
    # #t20: [$t3, memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t4, memory:-4($fp)]
    # v_b_main_s2: [$t5, memory:-8($fp)]
    # v_c_main_s2: [$t7, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_result_main_s2: [$t3, memory:-104($fp)]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # End of function: main

    # End of code
