int main(){
    int x = 1;
    int y = 2;

    // short circuit evaluationn
    if(x < 10 && y < 20){
        x++;
        y--;
    }

    return 0;

    // 1: function begin : main
    // 2: v_x_main_s2 = 1
    // 3: v_y_main_s2 = 2
    // 4: if v_x_main_s2 < 10 goto I6
    // 5: goto I8
    // 6: #t1 = 1
    // 7: goto I9
    // 8: #t1 = 0
    // 9: if #t1   goto I11
    // 10: goto I20                    short circuitt evaluation
    // 11: if v_y_main_s2 < 20 goto I13
    // 12: goto I15
    // 13: #t2 = 1
    // 14: goto I16
    // 15: #t2 = 0
    // 16: if #t2   goto I18
    // 17: goto I20
    // 18: #t3 = 1
    // 19: goto I21
    // 20: #t3 = 0
    // 21: if #t3   goto I23
    // 22: goto I27
    // 23: #t4 = v_x_main_s2 + 1
    // 24: v_x_main_s2 = #t4
    // 25: #t5 = v_y_main_s2 - 1
    // 26: v_y_main_s2 = #t5
    // 27: return 0
    // 28: end function main
}