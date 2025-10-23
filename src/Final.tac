1: function begin : main
2: v_i_main_s2 = 5
3: v_a_main_s2 = 0
4: v_i_main_s2 = 0
5: if v_i_main_s2 < 10 goto I7
6: goto I9
7: #t1 = 1
8: goto I10
9: #t1 = 0
10: if #t1   goto I15
11: goto I18
12: #t2 = v_i_main_s2 + 1
13: v_i_main_s2 = #t2
14: goto I5
15: #t3 = v_a_main_s2 + v_i_main_s2
16: v_a_main_s2 = #t3
17: goto I12
18: end function main
