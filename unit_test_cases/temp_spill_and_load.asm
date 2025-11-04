    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 46

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

    # TAC: 7: v_f_main_s2 = 6
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
    # Assignment: v_f_main_s2 = 6
    li $t5, 6
    # DEBUG: v_f_main_s2 = constant 6 loaded in $t5 (dirty)

    # TAC: 8: v_g_main_s2 = 7
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # --- End Storage Descriptor ---
    # Assignment: v_g_main_s2 = 7
    li $t6, 7
    # DEBUG: v_g_main_s2 = constant 7 loaded in $t6 (dirty)

    # TAC: 9: v_h_main_s2 = 8
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # --- End Storage Descriptor ---
    # Assignment: v_h_main_s2 = 8
    li $t7, 8
    # DEBUG: v_h_main_s2 = constant 8 loaded in $t7 (dirty)

    # TAC: 10: v_i_main_s2 = 9
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # --- End Storage Descriptor ---
    # Assignment: v_i_main_s2 = 9
    li $t8, 9
    # DEBUG: v_i_main_s2 = constant 9 loaded in $t8 (dirty)

    # TAC: 11: v_j_main_s2 = 10
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # --- End Storage Descriptor ---
    # Assignment: v_j_main_s2 = 10
    li $t9, 10
    # DEBUG: v_j_main_s2 = constant 10 loaded in $t9 (dirty)

    # TAC: 12: #t1 = v_a_main_s2 + v_b_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [$t0]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # --- End Storage Descriptor ---
    # #t1 = v_a_main_s2 add v_b_main_s2
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: v_b_main_s2 in $t1
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t0 to memory at -4($fp)
    add $t0, $t0, $t1
    # DEBUG: #t1 = result in $t0 (dirty)

    # TAC: 13: v_t1_main_s2 = #t1
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # --- End Storage Descriptor ---
    # Assignment: v_t1_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_t1_main_s2 now also in $t0 (dirty)

    # TAC: 14: #t2 = v_c_main_s2 + v_d_main_s2
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [$t1]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t2 = v_c_main_s2 add v_d_main_s2
    # DEBUG: v_c_main_s2 in $t2
    # DEBUG: v_d_main_s2 in $t3
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t1 to memory at -8($fp)
    add $t1, $t2, $t3
    # DEBUG: #t2 = result in $t1 (dirty)

    # TAC: 15: v_t2_main_s2 = #t2
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_t2_main_s2 = #t2
    # DEBUG: #t2 already in $t1
    # DEBUG: v_t2_main_s2 now also in $t1 (dirty)

    # TAC: 16: #t3 = v_e_main_s2 + v_f_main_s2
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [v_c_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t2]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # #t3 = v_e_main_s2 add v_f_main_s2
    # DEBUG: v_e_main_s2 in $t4
    # DEBUG: v_f_main_s2 in $t5
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t2 to memory at -12($fp)
    add $t2, $t4, $t5
    # DEBUG: #t3 = result in $t2 (dirty)

    # TAC: 17: v_t3_main_s2 = #t3
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_t3_main_s2 = #t3
    # DEBUG: #t3 already in $t2
    # DEBUG: v_t3_main_s2 now also in $t2 (dirty)

    # TAC: 18: #t4 = v_g_main_s2 + v_h_main_s2
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [v_d_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [$t3]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # #t4 = v_g_main_s2 add v_h_main_s2
    # DEBUG: v_g_main_s2 in $t6
    # DEBUG: v_h_main_s2 in $t7
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, -16($fp)
    # DEBUG: Spilled v_d_main_s2 from $t3 to memory at -16($fp)
    add $t3, $t6, $t7
    # DEBUG: #t4 = result in $t3 (dirty)

    # TAC: 19: v_t4_main_s2 = #t4
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Assignment: v_t4_main_s2 = #t4
    # DEBUG: #t4 already in $t3
    # DEBUG: v_t4_main_s2 now also in $t3 (dirty)

    # TAC: 20: #t5 = v_i_main_s2 + v_j_main_s2
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4, v_t4_main_s2] (dirty)
    # $t4: [v_e_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [$t4]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # v_t4_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # #t5 = v_i_main_s2 add v_j_main_s2
    # DEBUG: v_i_main_s2 in $t8
    # DEBUG: v_j_main_s2 in $t9
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, -20($fp)
    # DEBUG: Spilled v_e_main_s2 from $t4 to memory at -20($fp)
    add $t4, $t8, $t9
    # DEBUG: #t5 = result in $t4 (dirty)

    # TAC: 21: v_t5_main_s2 = #t5
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4, v_t4_main_s2] (dirty)
    # $t4: [#t5] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t4]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # v_t4_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Assignment: v_t5_main_s2 = #t5
    # DEBUG: #t5 already in $t4
    # DEBUG: v_t5_main_s2 now also in $t4 (dirty)

    # TAC: 22: #t6 = v_a_main_s2 * v_b_main_s2
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4, v_t4_main_s2] (dirty)
    # $t4: [#t5, v_t5_main_s2] (dirty)
    # $t5: [v_f_main_s2] (dirty)
    # $t6: [v_g_main_s2] (dirty)
    # $t7: [v_h_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t4]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [$t5]
    # v_g_main_s2: [$t6]
    # v_h_main_s2: [$t7]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # v_t4_main_s2: [$t3]
    # v_t5_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # #t6 = v_a_main_s2 mul v_b_main_s2
    # DEBUG: Spilling register $t5 due to register pressure
    sw $t5, -24($fp)
    # DEBUG: Spilled v_f_main_s2 from $t5 to memory at -24($fp)
    lw $t5, -4($fp)
    # DEBUG: Loaded v_a_main_s2 from memory at -4($fp)
    # DEBUG: v_a_main_s2 in $t5
    # DEBUG: Spilling register $t6 due to register pressure
    sw $t6, -28($fp)
    # DEBUG: Spilled v_g_main_s2 from $t6 to memory at -28($fp)
    lw $t6, -8($fp)
    # DEBUG: Loaded v_b_main_s2 from memory at -8($fp)
    # DEBUG: v_b_main_s2 in $t6
    # DEBUG: Spilling register $t7 due to register pressure
    sw $t7, -32($fp)
    # DEBUG: Spilled v_h_main_s2 from $t7 to memory at -32($fp)
    mul $t7, $t5, $t6
    # DEBUG: #t6 = result in $t7 (dirty)

    # TAC: 23: v_t6_main_s2 = #t6
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4, v_t4_main_s2] (dirty)
    # $t4: [#t5, v_t5_main_s2] (dirty)
    # $t5: [v_a_main_s2] (dirty)
    # $t6: [v_b_main_s2] (dirty)
    # $t7: [#t6] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t4]
    # #t6: [$t7]
    # v_a_main_s2: [$t5, memory:-4($fp)]
    # v_b_main_s2: [$t6, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # v_t4_main_s2: [$t3]
    # v_t5_main_s2: [$t4]
    # --- End Storage Descriptor ---
    # Assignment: v_t6_main_s2 = #t6
    # DEBUG: #t6 already in $t7
    # DEBUG: v_t6_main_s2 now also in $t7 (dirty)

    # TAC: 24: #t7 = v_c_main_s2 * v_d_main_s2
    # --- Register Descriptor ---
    # $t0: [#t1, v_t1_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4, v_t4_main_s2] (dirty)
    # $t4: [#t5, v_t5_main_s2] (dirty)
    # $t5: [v_a_main_s2] (dirty)
    # $t6: [v_b_main_s2] (dirty)
    # $t7: [#t6, v_t6_main_s2] (dirty)
    # $t8: [v_i_main_s2] (dirty)
    # $t9: [v_j_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t4]
    # #t6: [$t7]
    # v_a_main_s2: [$t5, memory:-4($fp)]
    # v_b_main_s2: [$t6, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [$t8]
    # v_j_main_s2: [$t9]
    # v_t1_main_s2: [$t0]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # v_t4_main_s2: [$t3]
    # v_t5_main_s2: [$t4]
    # v_t6_main_s2: [$t7]
    # --- End Storage Descriptor ---
    # #t7 = v_c_main_s2 mul v_d_main_s2
    # DEBUG: Spilling register $t8 due to register pressure
    sw $t8, -36($fp)
    # DEBUG: Spilled v_i_main_s2 from $t8 to memory at -36($fp)
    lw $t8, -12($fp)
    # DEBUG: Loaded v_c_main_s2 from memory at -12($fp)
    # DEBUG: v_c_main_s2 in $t8
    # DEBUG: Spilling register $t9 due to register pressure
    sw $t9, -40($fp)
    # DEBUG: Spilled v_j_main_s2 from $t9 to memory at -40($fp)
    lw $t9, -16($fp)
    # DEBUG: Loaded v_d_main_s2 from memory at -16($fp)
    # DEBUG: v_d_main_s2 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, 0($fp)
    # DEBUG: Spilled #t1 from $t0 to memory at 0($fp)
    sw $t0, -48($fp)
    # DEBUG: Spilled v_t1_main_s2 from $t0 to memory at -48($fp)
    mul $t0, $t8, $t9
    # DEBUG: #t7 = result in $t0 (dirty)

    # TAC: 25: v_t7_main_s2 = #t7
    # --- Register Descriptor ---
    # $t0: [#t7] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4, v_t4_main_s2] (dirty)
    # $t4: [#t5, v_t5_main_s2] (dirty)
    # $t5: [v_a_main_s2] (dirty)
    # $t6: [v_b_main_s2] (dirty)
    # $t7: [#t6, v_t6_main_s2] (dirty)
    # $t8: [v_c_main_s2] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t4]
    # #t6: [$t7]
    # #t7: [$t0]
    # v_a_main_s2: [$t5, memory:-4($fp)]
    # v_b_main_s2: [$t6, memory:-8($fp)]
    # v_c_main_s2: [$t8, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # v_t4_main_s2: [$t3]
    # v_t5_main_s2: [$t4]
    # v_t6_main_s2: [$t7]
    # --- End Storage Descriptor ---
    # Assignment: v_t7_main_s2 = #t7
    # DEBUG: #t7 already in $t0
    # DEBUG: v_t7_main_s2 now also in $t0 (dirty)

    # TAC: 26: #t8 = v_e_main_s2 * v_f_main_s2
    # --- Register Descriptor ---
    # $t0: [#t7, v_t7_main_s2] (dirty)
    # $t1: [#t2, v_t2_main_s2] (dirty)
    # $t2: [#t3, v_t3_main_s2] (dirty)
    # $t3: [#t4, v_t4_main_s2] (dirty)
    # $t4: [#t5, v_t5_main_s2] (dirty)
    # $t5: [v_a_main_s2] (dirty)
    # $t6: [v_b_main_s2] (dirty)
    # $t7: [#t6, v_t6_main_s2] (dirty)
    # $t8: [v_c_main_s2] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t2: [$t1]
    # #t3: [$t2]
    # #t4: [$t3]
    # #t5: [$t4]
    # #t6: [$t7]
    # #t7: [$t0]
    # v_a_main_s2: [$t5, memory:-4($fp)]
    # v_b_main_s2: [$t6, memory:-8($fp)]
    # v_c_main_s2: [$t8, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [$t1]
    # v_t3_main_s2: [$t2]
    # v_t4_main_s2: [$t3]
    # v_t5_main_s2: [$t4]
    # v_t6_main_s2: [$t7]
    # v_t7_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t8 = v_e_main_s2 mul v_f_main_s2
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, 0($fp)
    # DEBUG: Spilled #t2 from $t1 to memory at 0($fp)
    sw $t1, -56($fp)
    # DEBUG: Spilled v_t2_main_s2 from $t1 to memory at -56($fp)
    lw $t1, -20($fp)
    # DEBUG: Loaded v_e_main_s2 from memory at -20($fp)
    # DEBUG: v_e_main_s2 in $t1
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, 0($fp)
    # DEBUG: Spilled #t3 from $t2 to memory at 0($fp)
    sw $t2, -64($fp)
    # DEBUG: Spilled v_t3_main_s2 from $t2 to memory at -64($fp)
    lw $t2, -24($fp)
    # DEBUG: Loaded v_f_main_s2 from memory at -24($fp)
    # DEBUG: v_f_main_s2 in $t2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, 0($fp)
    # DEBUG: Spilled #t4 from $t3 to memory at 0($fp)
    sw $t3, -72($fp)
    # DEBUG: Spilled v_t4_main_s2 from $t3 to memory at -72($fp)
    mul $t3, $t1, $t2
    # DEBUG: #t8 = result in $t3 (dirty)

    # TAC: 27: v_t8_main_s2 = #t8
    # --- Register Descriptor ---
    # $t0: [#t7, v_t7_main_s2] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [v_f_main_s2] (dirty)
    # $t3: [#t8] (dirty)
    # $t4: [#t5, v_t5_main_s2] (dirty)
    # $t5: [v_a_main_s2] (dirty)
    # $t6: [v_b_main_s2] (dirty)
    # $t7: [#t6, v_t6_main_s2] (dirty)
    # $t8: [v_c_main_s2] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [$t4]
    # #t6: [$t7]
    # #t7: [$t0]
    # #t8: [$t3]
    # v_a_main_s2: [$t5, memory:-4($fp)]
    # v_b_main_s2: [$t6, memory:-8($fp)]
    # v_c_main_s2: [$t8, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_f_main_s2: [$t2, memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [$t4]
    # v_t6_main_s2: [$t7]
    # v_t7_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_t8_main_s2 = #t8
    # DEBUG: #t8 already in $t3
    # DEBUG: v_t8_main_s2 now also in $t3 (dirty)

    # TAC: 28: #t9 = v_g_main_s2 * v_h_main_s2
    # --- Register Descriptor ---
    # $t0: [#t7, v_t7_main_s2] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [v_f_main_s2] (dirty)
    # $t3: [#t8, v_t8_main_s2] (dirty)
    # $t4: [#t5, v_t5_main_s2] (dirty)
    # $t5: [v_a_main_s2] (dirty)
    # $t6: [v_b_main_s2] (dirty)
    # $t7: [#t6, v_t6_main_s2] (dirty)
    # $t8: [v_c_main_s2] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [$t4]
    # #t6: [$t7]
    # #t7: [$t0]
    # #t8: [$t3]
    # v_a_main_s2: [$t5, memory:-4($fp)]
    # v_b_main_s2: [$t6, memory:-8($fp)]
    # v_c_main_s2: [$t8, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_f_main_s2: [$t2, memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [$t4]
    # v_t6_main_s2: [$t7]
    # v_t7_main_s2: [$t0]
    # v_t8_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # #t9 = v_g_main_s2 mul v_h_main_s2
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, 0($fp)
    # DEBUG: Spilled #t5 from $t4 to memory at 0($fp)
    sw $t4, -80($fp)
    # DEBUG: Spilled v_t5_main_s2 from $t4 to memory at -80($fp)
    lw $t4, -28($fp)
    # DEBUG: Loaded v_g_main_s2 from memory at -28($fp)
    # DEBUG: v_g_main_s2 in $t4
    # DEBUG: Spilling register $t5 due to register pressure
    sw $t5, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t5 to memory at -4($fp)
    lw $t5, -32($fp)
    # DEBUG: Loaded v_h_main_s2 from memory at -32($fp)
    # DEBUG: v_h_main_s2 in $t5
    # DEBUG: Spilling register $t6 due to register pressure
    sw $t6, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t6 to memory at -8($fp)
    mul $t6, $t4, $t5
    # DEBUG: #t9 = result in $t6 (dirty)

    # TAC: 29: v_t9_main_s2 = #t9
    # --- Register Descriptor ---
    # $t0: [#t7, v_t7_main_s2] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [v_f_main_s2] (dirty)
    # $t3: [#t8, v_t8_main_s2] (dirty)
    # $t4: [v_g_main_s2] (dirty)
    # $t5: [v_h_main_s2] (dirty)
    # $t6: [#t9] (dirty)
    # $t7: [#t6, v_t6_main_s2] (dirty)
    # $t8: [v_c_main_s2] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [$t7]
    # #t7: [$t0]
    # #t8: [$t3]
    # #t9: [$t6]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t8, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_f_main_s2: [$t2, memory:-24($fp)]
    # v_g_main_s2: [$t4, memory:-28($fp)]
    # v_h_main_s2: [$t5, memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [$t7]
    # v_t7_main_s2: [$t0]
    # v_t8_main_s2: [$t3]
    # --- End Storage Descriptor ---
    # Assignment: v_t9_main_s2 = #t9
    # DEBUG: #t9 already in $t6
    # DEBUG: v_t9_main_s2 now also in $t6 (dirty)

    # TAC: 30: #t10 = v_i_main_s2 * v_j_main_s2
    # --- Register Descriptor ---
    # $t0: [#t7, v_t7_main_s2] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [v_f_main_s2] (dirty)
    # $t3: [#t8, v_t8_main_s2] (dirty)
    # $t4: [v_g_main_s2] (dirty)
    # $t5: [v_h_main_s2] (dirty)
    # $t6: [#t9, v_t9_main_s2] (dirty)
    # $t7: [#t6, v_t6_main_s2] (dirty)
    # $t8: [v_c_main_s2] (dirty)
    # $t9: [v_d_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [$t7]
    # #t7: [$t0]
    # #t8: [$t3]
    # #t9: [$t6]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [$t8, memory:-12($fp)]
    # v_d_main_s2: [$t9, memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_f_main_s2: [$t2, memory:-24($fp)]
    # v_g_main_s2: [$t4, memory:-28($fp)]
    # v_h_main_s2: [$t5, memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [$t7]
    # v_t7_main_s2: [$t0]
    # v_t8_main_s2: [$t3]
    # v_t9_main_s2: [$t6]
    # --- End Storage Descriptor ---
    # #t10 = v_i_main_s2 mul v_j_main_s2
    # DEBUG: Spilling register $t7 due to register pressure
    sw $t7, 0($fp)
    # DEBUG: Spilled #t6 from $t7 to memory at 0($fp)
    sw $t7, -88($fp)
    # DEBUG: Spilled v_t6_main_s2 from $t7 to memory at -88($fp)
    lw $t7, -36($fp)
    # DEBUG: Loaded v_i_main_s2 from memory at -36($fp)
    # DEBUG: v_i_main_s2 in $t7
    # DEBUG: Spilling register $t8 due to register pressure
    sw $t8, -12($fp)
    # DEBUG: Spilled v_c_main_s2 from $t8 to memory at -12($fp)
    lw $t8, -40($fp)
    # DEBUG: Loaded v_j_main_s2 from memory at -40($fp)
    # DEBUG: v_j_main_s2 in $t8
    # DEBUG: Spilling register $t9 due to register pressure
    sw $t9, -16($fp)
    # DEBUG: Spilled v_d_main_s2 from $t9 to memory at -16($fp)
    mul $t9, $t7, $t8
    # DEBUG: #t10 = result in $t9 (dirty)

    # TAC: 31: v_t10_main_s2 = #t10
    # --- Register Descriptor ---
    # $t0: [#t7, v_t7_main_s2] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [v_f_main_s2] (dirty)
    # $t3: [#t8, v_t8_main_s2] (dirty)
    # $t4: [v_g_main_s2] (dirty)
    # $t5: [v_h_main_s2] (dirty)
    # $t6: [#t9, v_t9_main_s2] (dirty)
    # $t7: [v_i_main_s2] (dirty)
    # $t8: [v_j_main_s2] (dirty)
    # $t9: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t9]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [$t0]
    # #t8: [$t3]
    # #t9: [$t6]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_f_main_s2: [$t2, memory:-24($fp)]
    # v_g_main_s2: [$t4, memory:-28($fp)]
    # v_h_main_s2: [$t5, memory:-32($fp)]
    # v_i_main_s2: [$t7, memory:-36($fp)]
    # v_j_main_s2: [$t8, memory:-40($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [$t0]
    # v_t8_main_s2: [$t3]
    # v_t9_main_s2: [$t6]
    # --- End Storage Descriptor ---
    # Assignment: v_t10_main_s2 = #t10
    # DEBUG: #t10 already in $t9
    # DEBUG: v_t10_main_s2 now also in $t9 (dirty)

    # TAC: 32: #t11 = v_a_main_s2 - v_b_main_s2
    # --- Register Descriptor ---
    # $t0: [#t7, v_t7_main_s2] (dirty)
    # $t1: [v_e_main_s2] (dirty)
    # $t2: [v_f_main_s2] (dirty)
    # $t3: [#t8, v_t8_main_s2] (dirty)
    # $t4: [v_g_main_s2] (dirty)
    # $t5: [v_h_main_s2] (dirty)
    # $t6: [#t9, v_t9_main_s2] (dirty)
    # $t7: [v_i_main_s2] (dirty)
    # $t8: [v_j_main_s2] (dirty)
    # $t9: [#t10, v_t10_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t9]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [$t0]
    # #t8: [$t3]
    # #t9: [$t6]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [$t1, memory:-20($fp)]
    # v_f_main_s2: [$t2, memory:-24($fp)]
    # v_g_main_s2: [$t4, memory:-28($fp)]
    # v_h_main_s2: [$t5, memory:-32($fp)]
    # v_i_main_s2: [$t7, memory:-36($fp)]
    # v_j_main_s2: [$t8, memory:-40($fp)]
    # v_t10_main_s2: [$t9]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [$t0]
    # v_t8_main_s2: [$t3]
    # v_t9_main_s2: [$t6]
    # --- End Storage Descriptor ---
    # #t11 = v_a_main_s2 sub v_b_main_s2
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, 0($fp)
    # DEBUG: Spilled #t7 from $t0 to memory at 0($fp)
    sw $t0, -96($fp)
    # DEBUG: Spilled v_t7_main_s2 from $t0 to memory at -96($fp)
    lw $t0, -4($fp)
    # DEBUG: Loaded v_a_main_s2 from memory at -4($fp)
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, -20($fp)
    # DEBUG: Spilled v_e_main_s2 from $t1 to memory at -20($fp)
    lw $t1, -8($fp)
    # DEBUG: Loaded v_b_main_s2 from memory at -8($fp)
    # DEBUG: v_b_main_s2 in $t1
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, -24($fp)
    # DEBUG: Spilled v_f_main_s2 from $t2 to memory at -24($fp)
    sub $t2, $t0, $t1
    # DEBUG: #t11 = result in $t2 (dirty)

    # TAC: 33: v_t11_main_s2 = #t11
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t11] (dirty)
    # $t3: [#t8, v_t8_main_s2] (dirty)
    # $t4: [v_g_main_s2] (dirty)
    # $t5: [v_h_main_s2] (dirty)
    # $t6: [#t9, v_t9_main_s2] (dirty)
    # $t7: [v_i_main_s2] (dirty)
    # $t8: [v_j_main_s2] (dirty)
    # $t9: [#t10, v_t10_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t9]
    # #t11: [$t2]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [$t3]
    # #t9: [$t6]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [$t4, memory:-28($fp)]
    # v_h_main_s2: [$t5, memory:-32($fp)]
    # v_i_main_s2: [$t7, memory:-36($fp)]
    # v_j_main_s2: [$t8, memory:-40($fp)]
    # v_t10_main_s2: [$t9]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [memory:-96($fp)]
    # v_t8_main_s2: [$t3]
    # v_t9_main_s2: [$t6]
    # --- End Storage Descriptor ---
    # Assignment: v_t11_main_s2 = #t11
    # DEBUG: #t11 already in $t2
    # DEBUG: v_t11_main_s2 now also in $t2 (dirty)

    # TAC: 34: #t12 = v_t1_main_s2 + v_t2_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t11, v_t11_main_s2] (dirty)
    # $t3: [#t8, v_t8_main_s2] (dirty)
    # $t4: [v_g_main_s2] (dirty)
    # $t5: [v_h_main_s2] (dirty)
    # $t6: [#t9, v_t9_main_s2] (dirty)
    # $t7: [v_i_main_s2] (dirty)
    # $t8: [v_j_main_s2] (dirty)
    # $t9: [#t10, v_t10_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t9]
    # #t11: [$t2]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [$t3]
    # #t9: [$t6]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [$t4, memory:-28($fp)]
    # v_h_main_s2: [$t5, memory:-32($fp)]
    # v_i_main_s2: [$t7, memory:-36($fp)]
    # v_j_main_s2: [$t8, memory:-40($fp)]
    # v_t10_main_s2: [$t9]
    # v_t11_main_s2: [$t2]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [memory:-96($fp)]
    # v_t8_main_s2: [$t3]
    # v_t9_main_s2: [$t6]
    # --- End Storage Descriptor ---
    # #t12 = v_t1_main_s2 add v_t2_main_s2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, 0($fp)
    # DEBUG: Spilled #t8 from $t3 to memory at 0($fp)
    sw $t3, -104($fp)
    # DEBUG: Spilled v_t8_main_s2 from $t3 to memory at -104($fp)
    lw $t3, -48($fp)
    # DEBUG: Loaded v_t1_main_s2 from memory at -48($fp)
    # DEBUG: v_t1_main_s2 in $t3
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, -28($fp)
    # DEBUG: Spilled v_g_main_s2 from $t4 to memory at -28($fp)
    lw $t4, -56($fp)
    # DEBUG: Loaded v_t2_main_s2 from memory at -56($fp)
    # DEBUG: v_t2_main_s2 in $t4
    # DEBUG: Spilling register $t5 due to register pressure
    sw $t5, -32($fp)
    # DEBUG: Spilled v_h_main_s2 from $t5 to memory at -32($fp)
    add $t5, $t3, $t4
    # DEBUG: #t12 = result in $t5 (dirty)

    # TAC: 35: #t13 = #t12 + v_t3_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t11, v_t11_main_s2] (dirty)
    # $t3: [v_t1_main_s2] (dirty)
    # $t4: [v_t2_main_s2] (dirty)
    # $t5: [#t12] (dirty)
    # $t6: [#t9, v_t9_main_s2] (dirty)
    # $t7: [v_i_main_s2] (dirty)
    # $t8: [v_j_main_s2] (dirty)
    # $t9: [#t10, v_t10_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t9]
    # #t11: [$t2]
    # #t12: [$t5]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [$t6]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [$t7, memory:-36($fp)]
    # v_j_main_s2: [$t8, memory:-40($fp)]
    # v_t10_main_s2: [$t9]
    # v_t11_main_s2: [$t2]
    # v_t1_main_s2: [$t3, memory:-48($fp)]
    # v_t2_main_s2: [$t4, memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [memory:-96($fp)]
    # v_t8_main_s2: [memory:-104($fp)]
    # v_t9_main_s2: [$t6]
    # --- End Storage Descriptor ---
    # #t13 = #t12 add v_t3_main_s2
    # DEBUG: #t12 in $t5
    # DEBUG: Spilling register $t6 due to register pressure
    sw $t6, 0($fp)
    # DEBUG: Spilled #t9 from $t6 to memory at 0($fp)
    sw $t6, -112($fp)
    # DEBUG: Spilled v_t9_main_s2 from $t6 to memory at -112($fp)
    lw $t6, -64($fp)
    # DEBUG: Loaded v_t3_main_s2 from memory at -64($fp)
    # DEBUG: v_t3_main_s2 in $t6
    # DEBUG: Spilling register $t7 due to register pressure
    sw $t7, -36($fp)
    # DEBUG: Spilled v_i_main_s2 from $t7 to memory at -36($fp)
    add $t7, $t5, $t6
    # DEBUG: #t13 = result in $t7 (dirty)

    # TAC: 36: #t14 = #t13 + v_t4_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t11, v_t11_main_s2] (dirty)
    # $t3: [v_t1_main_s2] (dirty)
    # $t4: [v_t2_main_s2] (dirty)
    # $t5: [#t12] (dirty)
    # $t6: [v_t3_main_s2] (dirty)
    # $t7: [#t13] (dirty)
    # $t8: [v_j_main_s2] (dirty)
    # $t9: [#t10, v_t10_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [$t9]
    # #t11: [$t2]
    # #t12: [$t5]
    # #t13: [$t7]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [$t8, memory:-40($fp)]
    # v_t10_main_s2: [$t9]
    # v_t11_main_s2: [$t2]
    # v_t1_main_s2: [$t3, memory:-48($fp)]
    # v_t2_main_s2: [$t4, memory:-56($fp)]
    # v_t3_main_s2: [$t6, memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [memory:-96($fp)]
    # v_t8_main_s2: [memory:-104($fp)]
    # v_t9_main_s2: [memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t14 = #t13 add v_t4_main_s2
    # DEBUG: #t13 in $t7
    # DEBUG: Spilling register $t8 due to register pressure
    sw $t8, -40($fp)
    # DEBUG: Spilled v_j_main_s2 from $t8 to memory at -40($fp)
    lw $t8, -72($fp)
    # DEBUG: Loaded v_t4_main_s2 from memory at -72($fp)
    # DEBUG: v_t4_main_s2 in $t8
    # DEBUG: Spilling register $t9 due to register pressure
    sw $t9, 0($fp)
    # DEBUG: Spilled #t10 from $t9 to memory at 0($fp)
    sw $t9, -120($fp)
    # DEBUG: Spilled v_t10_main_s2 from $t9 to memory at -120($fp)
    add $t9, $t7, $t8
    # DEBUG: #t14 = result in $t9 (dirty)

    # TAC: 37: #t15 = #t14 + v_t5_main_s2
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2] (dirty)
    # $t1: [v_b_main_s2] (dirty)
    # $t2: [#t11, v_t11_main_s2] (dirty)
    # $t3: [v_t1_main_s2] (dirty)
    # $t4: [v_t2_main_s2] (dirty)
    # $t5: [#t12] (dirty)
    # $t6: [v_t3_main_s2] (dirty)
    # $t7: [#t13] (dirty)
    # $t8: [v_t4_main_s2] (dirty)
    # $t9: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [$t2]
    # #t12: [$t5]
    # #t13: [$t7]
    # #t14: [$t9]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_b_main_s2: [$t1, memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [memory:-120($fp)]
    # v_t11_main_s2: [$t2]
    # v_t1_main_s2: [$t3, memory:-48($fp)]
    # v_t2_main_s2: [$t4, memory:-56($fp)]
    # v_t3_main_s2: [$t6, memory:-64($fp)]
    # v_t4_main_s2: [$t8, memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [memory:-96($fp)]
    # v_t8_main_s2: [memory:-104($fp)]
    # v_t9_main_s2: [memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t15 = #t14 add v_t5_main_s2
    # DEBUG: #t14 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, -4($fp)
    # DEBUG: Spilled v_a_main_s2 from $t0 to memory at -4($fp)
    lw $t0, -80($fp)
    # DEBUG: Loaded v_t5_main_s2 from memory at -80($fp)
    # DEBUG: v_t5_main_s2 in $t0
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, -8($fp)
    # DEBUG: Spilled v_b_main_s2 from $t1 to memory at -8($fp)
    add $t1, $t9, $t0
    # DEBUG: #t15 = result in $t1 (dirty)

    # TAC: 38: #t16 = #t15 + v_t6_main_s2
    # --- Register Descriptor ---
    # $t0: [v_t5_main_s2] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [#t11, v_t11_main_s2] (dirty)
    # $t3: [v_t1_main_s2] (dirty)
    # $t4: [v_t2_main_s2] (dirty)
    # $t5: [#t12] (dirty)
    # $t6: [v_t3_main_s2] (dirty)
    # $t7: [#t13] (dirty)
    # $t8: [v_t4_main_s2] (dirty)
    # $t9: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [$t2]
    # #t12: [$t5]
    # #t13: [$t7]
    # #t14: [$t9]
    # #t15: [$t1]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [memory:-120($fp)]
    # v_t11_main_s2: [$t2]
    # v_t1_main_s2: [$t3, memory:-48($fp)]
    # v_t2_main_s2: [$t4, memory:-56($fp)]
    # v_t3_main_s2: [$t6, memory:-64($fp)]
    # v_t4_main_s2: [$t8, memory:-72($fp)]
    # v_t5_main_s2: [$t0, memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [memory:-96($fp)]
    # v_t8_main_s2: [memory:-104($fp)]
    # v_t9_main_s2: [memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t16 = #t15 add v_t6_main_s2
    # DEBUG: #t15 in $t1
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, 0($fp)
    # DEBUG: Spilled #t11 from $t2 to memory at 0($fp)
    sw $t2, -128($fp)
    # DEBUG: Spilled v_t11_main_s2 from $t2 to memory at -128($fp)
    lw $t2, -88($fp)
    # DEBUG: Loaded v_t6_main_s2 from memory at -88($fp)
    # DEBUG: v_t6_main_s2 in $t2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, -48($fp)
    # DEBUG: Spilled v_t1_main_s2 from $t3 to memory at -48($fp)
    add $t3, $t1, $t2
    # DEBUG: #t16 = result in $t3 (dirty)

    # TAC: 39: #t17 = #t16 + v_t7_main_s2
    # --- Register Descriptor ---
    # $t0: [v_t5_main_s2] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [v_t6_main_s2] (dirty)
    # $t3: [#t16] (dirty)
    # $t4: [v_t2_main_s2] (dirty)
    # $t5: [#t12] (dirty)
    # $t6: [v_t3_main_s2] (dirty)
    # $t7: [#t13] (dirty)
    # $t8: [v_t4_main_s2] (dirty)
    # $t9: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [$t5]
    # #t13: [$t7]
    # #t14: [$t9]
    # #t15: [$t1]
    # #t16: [$t3]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [memory:-120($fp)]
    # v_t11_main_s2: [memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [$t4, memory:-56($fp)]
    # v_t3_main_s2: [$t6, memory:-64($fp)]
    # v_t4_main_s2: [$t8, memory:-72($fp)]
    # v_t5_main_s2: [$t0, memory:-80($fp)]
    # v_t6_main_s2: [$t2, memory:-88($fp)]
    # v_t7_main_s2: [memory:-96($fp)]
    # v_t8_main_s2: [memory:-104($fp)]
    # v_t9_main_s2: [memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t17 = #t16 add v_t7_main_s2
    # DEBUG: #t16 in $t3
    # DEBUG: Spilling register $t4 due to register pressure
    sw $t4, -56($fp)
    # DEBUG: Spilled v_t2_main_s2 from $t4 to memory at -56($fp)
    lw $t4, -96($fp)
    # DEBUG: Loaded v_t7_main_s2 from memory at -96($fp)
    # DEBUG: v_t7_main_s2 in $t4
    # DEBUG: Spilling register $t5 due to register pressure
    sw $t5, 0($fp)
    # DEBUG: Spilled #t12 from $t5 to memory at 0($fp)
    add $t5, $t3, $t4
    # DEBUG: #t17 = result in $t5 (dirty)

    # TAC: 40: #t18 = #t17 + v_t8_main_s2
    # --- Register Descriptor ---
    # $t0: [v_t5_main_s2] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [v_t6_main_s2] (dirty)
    # $t3: [#t16] (dirty)
    # $t4: [v_t7_main_s2] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [v_t3_main_s2] (dirty)
    # $t7: [#t13] (dirty)
    # $t8: [v_t4_main_s2] (dirty)
    # $t9: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [$t7]
    # #t14: [$t9]
    # #t15: [$t1]
    # #t16: [$t3]
    # #t17: [$t5]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [memory:-120($fp)]
    # v_t11_main_s2: [memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [$t6, memory:-64($fp)]
    # v_t4_main_s2: [$t8, memory:-72($fp)]
    # v_t5_main_s2: [$t0, memory:-80($fp)]
    # v_t6_main_s2: [$t2, memory:-88($fp)]
    # v_t7_main_s2: [$t4, memory:-96($fp)]
    # v_t8_main_s2: [memory:-104($fp)]
    # v_t9_main_s2: [memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t18 = #t17 add v_t8_main_s2
    # DEBUG: #t17 in $t5
    # DEBUG: Spilling register $t6 due to register pressure
    sw $t6, -64($fp)
    # DEBUG: Spilled v_t3_main_s2 from $t6 to memory at -64($fp)
    lw $t6, -104($fp)
    # DEBUG: Loaded v_t8_main_s2 from memory at -104($fp)
    # DEBUG: v_t8_main_s2 in $t6
    # DEBUG: Spilling register $t7 due to register pressure
    sw $t7, 0($fp)
    # DEBUG: Spilled #t13 from $t7 to memory at 0($fp)
    add $t7, $t5, $t6
    # DEBUG: #t18 = result in $t7 (dirty)

    # TAC: 41: #t19 = #t18 + v_t9_main_s2
    # --- Register Descriptor ---
    # $t0: [v_t5_main_s2] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [v_t6_main_s2] (dirty)
    # $t3: [#t16] (dirty)
    # $t4: [v_t7_main_s2] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [v_t8_main_s2] (dirty)
    # $t7: [#t18] (dirty)
    # $t8: [v_t4_main_s2] (dirty)
    # $t9: [#t14] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [$t9]
    # #t15: [$t1]
    # #t16: [$t3]
    # #t17: [$t5]
    # #t18: [$t7]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [memory:-120($fp)]
    # v_t11_main_s2: [memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [$t8, memory:-72($fp)]
    # v_t5_main_s2: [$t0, memory:-80($fp)]
    # v_t6_main_s2: [$t2, memory:-88($fp)]
    # v_t7_main_s2: [$t4, memory:-96($fp)]
    # v_t8_main_s2: [$t6, memory:-104($fp)]
    # v_t9_main_s2: [memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t19 = #t18 add v_t9_main_s2
    # DEBUG: #t18 in $t7
    # DEBUG: Spilling register $t8 due to register pressure
    sw $t8, -72($fp)
    # DEBUG: Spilled v_t4_main_s2 from $t8 to memory at -72($fp)
    lw $t8, -112($fp)
    # DEBUG: Loaded v_t9_main_s2 from memory at -112($fp)
    # DEBUG: v_t9_main_s2 in $t8
    # DEBUG: Spilling register $t9 due to register pressure
    sw $t9, 0($fp)
    # DEBUG: Spilled #t14 from $t9 to memory at 0($fp)
    add $t9, $t7, $t8
    # DEBUG: #t19 = result in $t9 (dirty)

    # TAC: 42: #t20 = #t19 + v_t10_main_s2
    # --- Register Descriptor ---
    # $t0: [v_t5_main_s2] (dirty)
    # $t1: [#t15] (dirty)
    # $t2: [v_t6_main_s2] (dirty)
    # $t3: [#t16] (dirty)
    # $t4: [v_t7_main_s2] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [v_t8_main_s2] (dirty)
    # $t7: [#t18] (dirty)
    # $t8: [v_t9_main_s2] (dirty)
    # $t9: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [$t1]
    # #t16: [$t3]
    # #t17: [$t5]
    # #t18: [$t7]
    # #t19: [$t9]
    # #t2: [memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [memory:-120($fp)]
    # v_t11_main_s2: [memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [$t0, memory:-80($fp)]
    # v_t6_main_s2: [$t2, memory:-88($fp)]
    # v_t7_main_s2: [$t4, memory:-96($fp)]
    # v_t8_main_s2: [$t6, memory:-104($fp)]
    # v_t9_main_s2: [$t8, memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t20 = #t19 add v_t10_main_s2
    # DEBUG: #t19 in $t9
    # DEBUG: Spilling register $t0 due to register pressure
    sw $t0, -80($fp)
    # DEBUG: Spilled v_t5_main_s2 from $t0 to memory at -80($fp)
    lw $t0, -120($fp)
    # DEBUG: Loaded v_t10_main_s2 from memory at -120($fp)
    # DEBUG: v_t10_main_s2 in $t0
    # DEBUG: Spilling register $t1 due to register pressure
    sw $t1, 0($fp)
    # DEBUG: Spilled #t15 from $t1 to memory at 0($fp)
    add $t1, $t9, $t0
    # DEBUG: #t20 = result in $t1 (dirty)

    # TAC: 43: #t21 = #t20 + v_t11_main_s2
    # --- Register Descriptor ---
    # $t0: [v_t10_main_s2] (dirty)
    # $t1: [#t20] (dirty)
    # $t2: [v_t6_main_s2] (dirty)
    # $t3: [#t16] (dirty)
    # $t4: [v_t7_main_s2] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [v_t8_main_s2] (dirty)
    # $t7: [#t18] (dirty)
    # $t8: [v_t9_main_s2] (dirty)
    # $t9: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [memory:0($fp)]
    # #t16: [$t3]
    # #t17: [$t5]
    # #t18: [$t7]
    # #t19: [$t9]
    # #t2: [memory:0($fp)]
    # #t20: [$t1]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [$t0, memory:-120($fp)]
    # v_t11_main_s2: [memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [$t2, memory:-88($fp)]
    # v_t7_main_s2: [$t4, memory:-96($fp)]
    # v_t8_main_s2: [$t6, memory:-104($fp)]
    # v_t9_main_s2: [$t8, memory:-112($fp)]
    # --- End Storage Descriptor ---
    # #t21 = #t20 add v_t11_main_s2
    # DEBUG: #t20 in $t1
    # DEBUG: Spilling register $t2 due to register pressure
    sw $t2, -88($fp)
    # DEBUG: Spilled v_t6_main_s2 from $t2 to memory at -88($fp)
    lw $t2, -128($fp)
    # DEBUG: Loaded v_t11_main_s2 from memory at -128($fp)
    # DEBUG: v_t11_main_s2 in $t2
    # DEBUG: Spilling register $t3 due to register pressure
    sw $t3, 0($fp)
    # DEBUG: Spilled #t16 from $t3 to memory at 0($fp)
    add $t3, $t1, $t2
    # DEBUG: #t21 = result in $t3 (dirty)

    # TAC: 44: v_result_main_s2 = #t21
    # --- Register Descriptor ---
    # $t0: [v_t10_main_s2] (dirty)
    # $t1: [#t20] (dirty)
    # $t2: [v_t11_main_s2] (dirty)
    # $t3: [#t21] (dirty)
    # $t4: [v_t7_main_s2] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [v_t8_main_s2] (dirty)
    # $t7: [#t18] (dirty)
    # $t8: [v_t9_main_s2] (dirty)
    # $t9: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [memory:0($fp)]
    # #t16: [memory:0($fp)]
    # #t17: [$t5]
    # #t18: [$t7]
    # #t19: [$t9]
    # #t2: [memory:0($fp)]
    # #t20: [$t1]
    # #t21: [$t3]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_t10_main_s2: [$t0, memory:-120($fp)]
    # v_t11_main_s2: [$t2, memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [$t4, memory:-96($fp)]
    # v_t8_main_s2: [$t6, memory:-104($fp)]
    # v_t9_main_s2: [$t8, memory:-112($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t21
    # DEBUG: #t21 already in $t3
    # DEBUG: v_result_main_s2 now also in $t3 (dirty)

    # TAC: 45: return v_result_main_s2
    # --- Register Descriptor ---
    # $t0: [v_t10_main_s2] (dirty)
    # $t1: [#t20] (dirty)
    # $t2: [v_t11_main_s2] (dirty)
    # $t3: [#t21, v_result_main_s2] (dirty)
    # $t4: [v_t7_main_s2] (dirty)
    # $t5: [#t17] (dirty)
    # $t6: [v_t8_main_s2] (dirty)
    # $t7: [#t18] (dirty)
    # $t8: [v_t9_main_s2] (dirty)
    # $t9: [#t19] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [memory:0($fp)]
    # #t16: [memory:0($fp)]
    # #t17: [$t5]
    # #t18: [$t7]
    # #t19: [$t9]
    # #t2: [memory:0($fp)]
    # #t20: [$t1]
    # #t21: [$t3]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_result_main_s2: [$t3]
    # v_t10_main_s2: [$t0, memory:-120($fp)]
    # v_t11_main_s2: [$t2, memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [$t4, memory:-96($fp)]
    # v_t8_main_s2: [$t6, memory:-104($fp)]
    # v_t9_main_s2: [$t8, memory:-112($fp)]
    # --- End Storage Descriptor ---
    # Return - spilling dirty registers
    # DEBUG: Spilling 10 dirty registers
    sw $t0, -120($fp)
    # DEBUG: Spilled v_t10_main_s2 from $t0 to memory at -120($fp)
    sw $t1, 0($fp)
    # DEBUG: Spilled #t20 from $t1 to memory at 0($fp)
    sw $t2, -128($fp)
    # DEBUG: Spilled v_t11_main_s2 from $t2 to memory at -128($fp)
    sw $t3, 0($fp)
    # DEBUG: Spilled #t21 from $t3 to memory at 0($fp)
    sw $t3, -172($fp)
    # DEBUG: Spilled v_result_main_s2 from $t3 to memory at -172($fp)
    sw $t4, -96($fp)
    # DEBUG: Spilled v_t7_main_s2 from $t4 to memory at -96($fp)
    sw $t5, 0($fp)
    # DEBUG: Spilled #t17 from $t5 to memory at 0($fp)
    sw $t6, -104($fp)
    # DEBUG: Spilled v_t8_main_s2 from $t6 to memory at -104($fp)
    sw $t7, 0($fp)
    # DEBUG: Spilled #t18 from $t7 to memory at 0($fp)
    sw $t8, -112($fp)
    # DEBUG: Spilled v_t9_main_s2 from $t8 to memory at -112($fp)
    sw $t9, 0($fp)
    # DEBUG: Spilled #t19 from $t9 to memory at 0($fp)

    # TAC: 46: end function main
    # --- Register Descriptor ---
    # $t0: [v_t10_main_s2]
    # $t1: [#t20]
    # $t2: [v_t11_main_s2]
    # $t3: [#t21, v_result_main_s2]
    # $t4: [v_t7_main_s2]
    # $t5: [#t17]
    # $t6: [v_t8_main_s2]
    # $t7: [#t18]
    # $t8: [v_t9_main_s2]
    # $t9: [#t19]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:0($fp)]
    # #t10: [memory:0($fp)]
    # #t11: [memory:0($fp)]
    # #t12: [memory:0($fp)]
    # #t13: [memory:0($fp)]
    # #t14: [memory:0($fp)]
    # #t15: [memory:0($fp)]
    # #t16: [memory:0($fp)]
    # #t17: [$t5, memory:0($fp)]
    # #t18: [$t7, memory:0($fp)]
    # #t19: [$t9, memory:0($fp)]
    # #t2: [memory:0($fp)]
    # #t20: [$t1, memory:0($fp)]
    # #t21: [$t3, memory:0($fp)]
    # #t3: [memory:0($fp)]
    # #t4: [memory:0($fp)]
    # #t5: [memory:0($fp)]
    # #t6: [memory:0($fp)]
    # #t7: [memory:0($fp)]
    # #t8: [memory:0($fp)]
    # #t9: [memory:0($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_b_main_s2: [memory:-8($fp)]
    # v_c_main_s2: [memory:-12($fp)]
    # v_d_main_s2: [memory:-16($fp)]
    # v_e_main_s2: [memory:-20($fp)]
    # v_f_main_s2: [memory:-24($fp)]
    # v_g_main_s2: [memory:-28($fp)]
    # v_h_main_s2: [memory:-32($fp)]
    # v_i_main_s2: [memory:-36($fp)]
    # v_j_main_s2: [memory:-40($fp)]
    # v_result_main_s2: [$t3, memory:-172($fp)]
    # v_t10_main_s2: [$t0, memory:-120($fp)]
    # v_t11_main_s2: [$t2, memory:-128($fp)]
    # v_t1_main_s2: [memory:-48($fp)]
    # v_t2_main_s2: [memory:-56($fp)]
    # v_t3_main_s2: [memory:-64($fp)]
    # v_t4_main_s2: [memory:-72($fp)]
    # v_t5_main_s2: [memory:-80($fp)]
    # v_t6_main_s2: [memory:-88($fp)]
    # v_t7_main_s2: [$t4, memory:-96($fp)]
    # v_t8_main_s2: [$t6, memory:-104($fp)]
    # v_t9_main_s2: [$t8, memory:-112($fp)]
    # --- End Storage Descriptor ---
    # End of function - spilling dirty registers
    # DEBUG: No dirty registers to spill
    # End of function: main

    # End of code
