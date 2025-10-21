 void test_while_zero() {
    int i = 0;
    int executed = 0;
    // variables declared at top only 
    while (i < 0) {
        executed = 1;
        // no declarations here 
    }
    // check("while_zero", executed == 0 && i == 0, "body must not run when condition false initially");
}

// 2. while with continue and break interplay and mutation 
void test_while_continue_break_mutation() {
    int i = 0;
    int sum = 0;
    int hit_continue = 0;

    // iterate while i<5
    //    when i==2 -> increment i and continue (skip sum)
    //    when i==4 -> break
    //    expected sum = 0 + 1 + 3 = 4 ; final i == 4
    
    while (i < 5) {
        if (i == 2) { 
            i++; 
            hit_continue = 1; 
            continue; 
        }
        
        // mutation + continue 
        if (i == 4) break;
        sum = sum + i;
        i++;
    }

    // check("while_continue_break_mutation", sum == 4 && i == 4 && hit_continue == 1,
        //   "continue must skip sum and increment; break stops at 4");
}

// 3. do-while: executes at least once 
 void test_do_while_one_execution() {
    int j = 0;
    int ran = 0;
    do {
        ran = 1;
        j++;
    } while (j < 0); // false, but body must run once 
    // check("do_while_one_exec", ran == 1 && j == 1, "do-while executes body once even if cond false");
}

// 4. until emulation: loop until condition becomes true 
 void test_until_emulation() {
    int k = 0;
    int iterations = 0;
    until (k >= 3) {
        k++;
        iterations++;
        if (iterations > 100) break; // safeguard 
    }
    // check("until_emulation", k == 3 && iterations == 3, "until macro should stop when condition true");
}

// 5. nested while with inner continue and inner break 
 void test_nested_while_break_continue() {
    int outer = 0;
    int inner = 0;
    int sum = 0;
    int outer_iter = 0;
    while (outer < 3) {
        inner = 0;
        while (inner < 5) {
            if (inner == 2) { inner++; continue; } // skip only inner's remainder 
            if (inner == 4) break; // break inner loop only 
            sum = sum + inner;
            inner++;
        }
        outer++;
        outer_iter++;
        // no declarations inside blocks 
    }
    // inner contributes 0+1 per outer = 1 * 3 = 3 
    // check("nested_while_break_continue", sum == 3 && outer_iter == 3, "break affects inner only; continue affects inner iteration");
}

// 6. modifying outer loop var inside inner loop 
 void test_modify_loop_var_in_inner() {
    int i = 0;
    int j = 0;
    int count = 0;

    while (i < 5) {
        j = 0;
        while (j < 2) {
            if (i == 1) { i = 4; j++; break; } // mutate outer from inner, then break inner 
            j++;
            count++;
        }
        i++; // outer increment after inner 
    }
    // expected: count == 2 (only first inner finished twice), final i == 5 
    // check("modify_loop_var_in_inner", count == 2 && i == 5, "mutating outer inside inner must affect outer control");
}

// 7. infinite while with break and continue interplay 
 void test_infinite_while_with_break() {
    int cnt = 0;
    int seen_continue = 0;
    while (1) {
        cnt++;
        if (cnt == 3) { seen_continue = 1; continue; } // continue should not skip break // checks next iteration 
        if (cnt >= 6) break;
    }
    // check("infinite_while_with_break", cnt == 6 && seen_continue == 1, "infinite while must be breakable; continue should behave normally");
}

// 8. complex condition side-effects and ordering 
 void test_condition_side_effects() {
    int x = 0;
    int y = 0;
    int guard = 0;
    while (x < 3 && (y = y +  1)) { // rely on short-circuit: when x>=3, y should not increment further 
        guard++;
        x++;
        if (guard > 10) break; // safeguard 
    }
    // x increments 3 times, y increments 3 times because left side true until x==3 
    // check("condition_side_effects", x == 3 && y == 3, "ensure short-circuit and side-effects in conditions behave");
}

// 9. combined heavy stress test (no declarations inside) 
 void test_combined_stress() {
    int a = 0;
    int b = 0;
    int loop = 0;
    int safety = 0;
    while (a < 4) {
        // nested do-while and until with mixed breaks/continues 
        do {
            b++;
            if (b == 2) { a++; continue; } // continue winds back to do-while // check 
            if (b == 5) break; // exit do-while 
        } while (b < 10);

        until (a >= 3) {
            a++;
            if (a == 2) { a = a + 0; break; } // test break from until (emulated) 
        }

        loop++;
        if (++safety > 100) break; // prevent infinite runs 
    }
    // check("combined_stress", a >= 3 && b >= 2 && loop >= 1, "complex interplay of while/do-while/until with break/continue");
}

int main() {
    test_while_zero();
    test_while_continue_break_mutation();
    test_do_while_one_execution();
    test_until_emulation();
    test_nested_while_break_continue();
    test_modify_loop_var_in_inner();
    test_infinite_while_with_break();
    test_condition_side_effects();
    test_combined_stress();
    return 0;
}