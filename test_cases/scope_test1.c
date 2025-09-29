// Test Case 1: Basic scope management
// This should show variables being declared and destroyed in different scopes

int main() {
    int x;        // Global scope variable
    int y;        // Another global scope variable
    
    {             // New scope begins
        int z;    // Local scope variable
        x = 5;    // Using global variable (should be found)
    }             // Local scope ends, z should be destroyed
    
    y = 10;       // Using global variable (should be found)
    // z = 15;    // Uncomment this to test undeclared variable error
    
    return 0;
}