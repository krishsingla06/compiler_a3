1: function begin : add
2: #t1 = v_a_add_i_i_s2 + v_b_add_i_i_s2
3: return #t1
4: end function add
5: function begin : subtract
6: #t2 = v_a_subtract_i_i_s2 - v_b_subtract_i_i_s2
7: return #t2
8: end function subtract
9: function begin : multiply_float
10: #t3 = v_x_multiply_float_f_f_s2 * v_y_multiply_float_f_f_s2
11: return #t3
12: end function multiply_float
13: function begin : get_constant
14: return 42
15: end function get_constant
16: function begin : main
17: v_x_main_s2 = 10
18: v_y_main_s2 = 5
19: v_operation_main_s2 = add
20: param v_x_main_s2
21: param v_y_main_s2
22: #t4 = call v_operation_main_s2, 2
23: v_result_main_s2 = #t4
24: v_operation_main_s2 = subtract
25: param v_x_main_s2
26: param v_y_main_s2
27: #t5 = call v_operation_main_s2, 2
28: v_result_main_s2 = #t5
29: return 0
30: end function main
