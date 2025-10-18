
int main() {
    int i = 0;
    int j = 0;
    int sum = 0;
    int product = 1;
    
    // Simple while loop
    // while (i < 5) {
    //     sum = sum + i;
    //     i = i + 1;
    // }
    
    // // Nested while loops
    // i = 0;
    // while (i < 3) {
    //     j = 0;
    //     while (j < 2) {
    //         product = product * (i + j + 1);
    //         j = j + 1;
    //     }
    //     i = i + 1;
    // }
    
    // // Simple do-while loop
    // i = 0;
    // do {
    //     sum = sum + 10;
    //     i = i + 1;
    // } while (i < 3);
    
    // // Nested do-while loops
    // i = 0;
    // do {
    //     j = 0;
    //     do {
    //         sum = sum + i * j;
    //         j = j + 1;
    //     } while (j < 2);
    //     i = i + 1;
    // } while (i < 2);
    
    // // Do-while with continue
    // i = 0;
    // do {
    //     i = i + 1;
    //     if (i == 2) {
    //         continue;
    //     }
    //     sum = sum + i;
    // } while (i < 4);
    
    // // Do-while with break
    // i = 0;
    // do {
    //     i = i + 1;
    //     if (i == 3) {
    //         break;
    //     }
    //     product = product * i;
    // } while (i < 10);
    
    // // Simple until loop
    // i = 5;
    // until (i <= 0) {
    //     sum = sum + i;
    //     i = i - 1;
    // }
    
    // // Nested until loops
    // i = 3;
    // until (i <= 0) {
    //     j = 2;
    //     until (j <= 0) {
    //         product = product * (i * j);
    //         j = j - 1;
    //     }
    //     i = i - 1;
    // }
    
    // // Simple if statement
    // if (sum > 30) {
    //     sum = 30;
    // }
    
    // // If-else statement
    // if (product > 100) {
    //     product = 100;
    // } else {
    //     product = product + 10;
    // }
    
    // Nested if-else
    if (sum > 20) {
        if (product > 50) {
            sum = sum + product;
        } else {
            sum = sum - product;
        }
    } else {
        if (product > 30) {
            product = product / 2;
        } else {
            product = product * 2;
        }
    }

    
    // Multiple if-else-if
    if (sum > 100) {
        sum = 100;
    } else {
        sum = 0;
    }

    
   // return 0;
}