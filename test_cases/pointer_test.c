int main() {
    // Valid pointer declarations
    int x;                    // Basic variable
    int* ptr;                 // Simple pointer
    int** double_ptr;         // Double pointer
    
    // References
    int& ref = x;          // Reference
    
    // Initialize and use
    ptr = &x;
    double_ptr = &ptr;
    
    *ptr = 10;
    **double_ptr = 30;
    
    return 0;
}
