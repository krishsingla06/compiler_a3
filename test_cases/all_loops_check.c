int main() {

    // Test Case 1 — while loop sum
    int i = 0, sum = 0;
    int x = 0;
    int s = 0;
    int j = 0;
    int outer = 0, innerCount = 0;
    int steps = 0;
    int t = 42;
    int hits = 0;
    int z = 0;
    int cnt = 0;
    int a, b;
    while (i < 10) {
        sum = sum + i;
        i++;
    }
    // Test Case 2 — do-while executes at least once
    do {
        x++;
    } while (0);

    // Test Case 3 — for loop with continue
    for (i = 0; i < 10; i++) {
        if (i % 2 != 0) continue;
        s = s + i;
    }

    // Test Case 4 — Empty-body for loop
    for (; j < 10; j++);

    // Test Case 5 — Nested loops + break (inner only)
    for (a = 0; a < 3; a++) {
        outer++;
        for (b = 0; b < 3; b++) {
            innerCount++;
            if (b == 1) break;
        }
    }

    // Test Case 6 — Multiple init & update expressions
    for (a = 0, b = 10; a < b; a++, b--) {
        steps++;
    }

    // Test Case 7 — Zero-iteration loop
    for (i = 5; i < 5; i++) {
        z++;
    }

    // Test Case 8 — Loop variable scope
    for (t = 0; t < 3; t++) {
        // do nothing
    }

    // Test Case 9 — break + continue mix
    for (i = 0; i < 10; i++) {
        if (i < 3) continue;
        if (i == 6) break;
        hits++;
    }

    return 0;
}
