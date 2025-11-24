// Comprehensive test for function pointers as arguments

int multiply(int a, int b) {
    return a * b;
}

int divide(int a, int b) {
    return a / b;
}

float add_floats(float x, float y) {
    return x + y;
}

// Function that takes a function pointer as first argument
int compute(int (*op)(int, int), int x, int y) {
    return op(x, y);
}

// Function that takes a function pointer as middle argument
int compute_with_offset(int offset, int (*op)(int, int), int x, int y) {
    return offset + op(x, y);
}

// Function that takes a function pointer as last argument
int compute_scaled(int x, int y, int (*op)(int, int)) {
    return op(x, y) * 2;
}

// Function that takes multiple function pointers
int combine(int (*op1)(int, int), int (*op2)(int, int), int a, int b) {
    int r1 = op1(a, b);
    int r2 = op2(a, b);
    return r1 + r2;
}

int main() {
    // Test 1: Function pointer as first argument
    int result1 = compute(multiply, 6, 7);
    
    // Test 2: Function pointer as middle argument
    int result2 = compute_with_offset(100, divide, 20, 4);
    
    // Test 3: Function pointer as last argument
    int result3 = compute_scaled(8, 3, multiply);
    
    // Test 4: Multiple function pointers as arguments
    int result4 = combine(multiply, divide, 12, 3);
    
    return 0;
}
