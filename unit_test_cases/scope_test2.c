// Test Case 2: Nested scopes
// This should show multiple levels of scope nesting

int main() {
    int a;        // Level 1 variable
    
    {             // Level 2 scope
        int b;    // Level 2 variable
        a = 1;    // Should find 'a' from level 1
        
        {         // Level 3 scope
            int c; // Level 3 variable
            a = 2; // Should find 'a' from level 1
            b = 3; // Should find 'b' from level 2
        }         // Level 3 ends, 'c' destroyed
        
        b = 4;    // Should still find 'b' from level 2
    }             // Level 2 ends, 'b' destroyed
    
    a = 5;        // Should still find 'a' from level 1
    return 0;
}