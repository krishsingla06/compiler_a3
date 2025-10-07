// Test file with various errors

int x = 10;
int x = 20;  // Error: redeclaration

void test() {
    int y;
    float z = y + undeclared_var;  // Error: undeclared variable
    
    // Type errors
    int* ptr = 5;  // Warning: numeric to pointer cast
    int arr[3];
    int result = arr + ptr;  // Error: invalid pointer arithmetic
    
    // Function call errors
    nonexistent_func();  // Error: undefined function
}

int add(int a, int b) {
    int a = 5;  // Error: parameter redeclaration
    return a + b;
}

int main() {
    int wrong_call = add(1, 2, 3);  // Error: wrong number of arguments
    return 0;
}