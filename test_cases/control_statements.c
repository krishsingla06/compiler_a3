int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int i = 0;

    // For loop
    int a = 0;
    int x = 10;
    int y = 0;

    int z = 2;
    char* name = "John";

    char arr2[3] = {'a', 'b', 'c'};
    float z = 0.0;




    for (i = 0; i < 5; i++) {
        a++;
    }

    // While loop
    i = 0;
    while (i < 5) {
        int b = 4;
        i++;
    }

    i = 5;
    do {
        i--;
    } while (i > 0);

    // If-else statement
    if (x > 5) {
        x = 9;
    } else {
        x = 0;
    }

    // Goto statement
    goto_label:
    y++;
    if (y < 3) goto goto_label;

    // Break and continue in a loop
    for (i = 0; i < 5; i++) {
        if (arr[i] == 3) {
            continue; // skip printing 3
        }
        if (arr[i] == 4) {
            break; // stop loop when 4 is found
        }
        z = 8.56 + arr[i];
    }

    // Switch-case and default

    switch (z) {
        case 1:
            name = "Alice";
            break;
        case 2:
            name = "Bob";
            break;
        default:
            name = "Unknown";
            break;
    }

    return 0;
}