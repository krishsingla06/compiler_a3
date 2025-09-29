// Test Case 5: Multiple variable declarations in one statement
// This should test declaration lists like "int a, b, c;"

int main() {
    int a, b, c;      // Multiple declarations
    float x, y;       // Different type multiple declarations
    
    a = 1;            // Should find 'a'
    b = 2;            // Should find 'b'  
    c = 3;            // Should find 'c'
    x = 1.5;          // Should find 'x'
    y = 2.5;          // Should find 'y'
    
    return 0;
}