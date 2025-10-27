// Test Case 3: Variable shadowing and redeclaration errors
// This should test duplicate declaration in same scope

int main() {
    int x;        // First declaration of x
    // int x;     // Uncomment to test duplicate declaration error
    
    {             // New scope
        int x;    // This should be allowed (shadowing)
        x = 10;   // Should refer to local x
    }             // Local x destroyed
    
    x = 20;       // Should refer to outer x
    return 0;
}