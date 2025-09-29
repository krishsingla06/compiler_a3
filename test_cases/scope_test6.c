// Test Case 6: Control structures with scopes
// This should test scoping in if, for, while statements

int main() {
    int x;
    
    if (1) {
        int if_var;       // If-scope variable
        if_var = 5;       // Should be found
        x = 10;           // Should find outer x
    }
    
    for (int i = 0; i < 5; i++) {
        int loop_var;     // Loop-scope variable  
        loop_var = i;     // Should be found
        x = i;            // Should find outer x
    }
    
    while (x > 0) {
        int while_var;    // While-scope variable
        while_var = x;    // Should be found
        x = x - 1;        // Should find outer x
    }
    
    return 0;
}