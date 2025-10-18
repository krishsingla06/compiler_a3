1: function begin : main
2: v_i_main_s2 = 0
3: v_j_main_s2 = 0
4: v_sum_main_s2 = 0
5: v_product_main_s2 = 1
6: if v_sum_main_s2 > 20 goto I8
7: goto I10
8: #t1 = 1
9: goto I11
10: #t1 = 0
11: if #t1   goto I13
12: goto I26
13: if v_product_main_s2 > 50 goto I15
14: goto I17
15: #t2 = 1
16: goto I18
17: #t2 = 0
18: if #t2   goto I20
19: goto I23
20: #t3 = v_sum_main_s2 + v_product_main_s2
21: v_sum_main_s2 = #t3
22: goto I25
23: #t4 = v_sum_main_s2 - v_product_main_s2
24: v_sum_main_s2 = #t4
25: goto I38
26: if v_product_main_s2 > 30 goto I28
27: goto I30
28: #t5 = 1
29: goto I31
30: #t5 = 0
31: if #t5   goto I33
32: goto I36
33: #t6 = v_product_main_s2 / 2
34: v_product_main_s2 = #t6
35: goto I38
36: #t7 = v_product_main_s2 * 2
37: v_product_main_s2 = #t7
38: if v_sum_main_s2 > 100 goto I40
39: goto I42
40: #t8 = 1
41: goto I43
42: #t8 = 0
43: if #t8   goto I45
44: goto I47
45: v_sum_main_s2 = 100
46: goto 
47: v_sum_main_s2 = 0
48: end function main
