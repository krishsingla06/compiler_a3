int main() {
    int x = 10;
    int y = 20;
    int* ptr = &x;
    
    // Valid lvalue assignments - should work
    x = 5;
    y = x;
    *ptr = 15;
    
    // Invalid lvalue assignments - should give errors
    3 = 4;              // Error: literal is not lvalue
    x + y = 10;         // Error: expression result is not lvalue
    (int)x = 20;        // Error: cast result is not lvalue
    
    // Chained assignment that should fail
    int z = 3 = 4;      // Error: 3 is not an lvalue
    
    return 0;
}