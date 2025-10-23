1: function begin : foo
2: #t1 = & v_inp_foo_i_s2
3: v_p_foo_i_s2 = #t1
4: return v_p_foo_i_s2
5: end function foo
6: function begin : goo
7: return 6
8: end function goo
9: function begin : main
10: v_a_main_s2 = 2
11: param v_a_main_s2
12: #t2 = call v_fcnPtr_main_s2, 1
13: v_ans_main_s2 = #t2
14: return 0
15: end function main
