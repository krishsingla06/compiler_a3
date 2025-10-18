int main() {
    int i;
    int a = 0, b = 5;
    float f = 2.5;

    // char* name = "Compiler";
    // int arr[5] = {1, 2, 3, 4, 5};                  // not working

    // working
    int arr[5];
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;
    arr[3] = 4;
    arr[4] = 5;

    // For loop
    for (i = 0; i < 5; i++) {
        a++;
    }

    // While loop
    i = 0;
    while (i < 5) {
        b--;
        i++;
    }

    // Do-while loop
    i = 0;
    do {
        // f += 1.0                // not working 
        f = f + 1.0;                // working
        i++;
    } while (i < 3);

    // If-else statement
    if (a > b) {
        name = "A greater";
    } else if (a == b) {
        name = "Equal";
    } else {
        name = "B greater";
    }

    // Switch-case
    switch (6) {
        case 1:
            a = a + 10;
            break;
        case 3:
            a = a + 20;
            break;
        default:
            a = a + 100;
            break;
    }

    // Break and continue
    for (i = 0; i < 5; i++) {
        if (arr[i] == 2) continue;
        if (arr[i] == 4) break;
        b = b + arr[i];
    }

    // Goto statement
    i = 0;
goto_label:
    i++;
    if (i < 2) goto goto_label;

    return 0;
}