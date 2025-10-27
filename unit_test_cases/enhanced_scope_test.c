// Enhanced test case for structured type handling
// This should demonstrate improved type tracking and initialization

int main() {
    // Basic declarations
    int a, b, c;              // Multiple variables of same type
    static int x;             // Static variable
    int i = 5, j = 10, k;     // Mixed initialized and uninitialized
    
    // Usage
    a = 1;
    b = i;
    c = j;
    
    {                         // New scope
        int local_a;          // Shadow outer variable
        int local_const = 20;
        static int local_static;
        
        local_a = a;          // Use outer variable
    }
    
    return 0;
}
