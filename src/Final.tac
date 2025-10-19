1: function begin : factorial
2: #t1 = v_n_factorial_i_i_s2 - 1
3: #t2 = v_n_factorial_i_i_s2 + 1
4: v_n_factorial_i_i_s2 = #t2
5: param #t1
6: param #t2
7: #t3 = call factorial, 2
8: end function factorial
