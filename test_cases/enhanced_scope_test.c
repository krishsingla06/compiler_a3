// Enhanced test case for structured type handling
// This should demonstrate improved type tracking and initialization

int main() {
    // Basic declarations
    int a, b, c;              // Multiple variables of same type
    static int x;             // Static variable
    const int y;              // Const variable
    static const int z;       // Static const variable
    
    // With initialization
    int i = 5, j = 10, k;     // Mixed initialized and uninitialized
    
    // Usage
    a = 1;
    b = i;
    c = j;
    
    {                         // New scope
        int local_a;          // Shadow outer variable
        const int local_const = 20;
        static int local_static;
        
        local_a = a;          // Use outer variable
        // local_const = 25;  // This should be an error (const assignment)
    }
    
    return 0;
}