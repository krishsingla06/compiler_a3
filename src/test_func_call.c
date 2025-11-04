// Test function calls with parameters and return values

int add(int a, int b) {
    int sum;
    sum = a + b;
    return sum;
}

int multiply(int x, int y, int z, int w, int extra) {
    // Test with >4 params (extra will be on stack only)
    int result;
    result = x * y + z * w + extra;
    return result;
}

int main() {
    int result1, result2;
    
    result1 = add(5, 10);              // 2 params
    result2 = multiply(2, 3, 4, 5, 6); // 5 params (5th on stack only)
    
    return result1 + result2;
}
