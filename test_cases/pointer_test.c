// Test case for strict pointer const handling
// This should demonstrate that only one const is allowed per pointer level

int main() {
    // Valid pointer declarations
    int x;                    // Basic variable
    int* ptr;                 // Simple pointer
    // int* const const_ptr;     // Const pointer
    int** double_ptr;         // Double pointer
    // int* const* ptr_to_const_ptr;  // Pointer to const pointer
    
    // References (if supported)
    // int& ref = x;          // Reference
    
    // Initialize and use
    ptr = &x;
    const_ptr = &x;
    double_ptr = &ptr;
    
    *ptr = 10;
    *const_ptr = 20;
    **double_ptr = 30;
    
    return 0;
}

// These should cause parse errors if uncommented:
// int* const const invalid1;     // Multiple const qualifiers
// int* volatile* invalid2;       // Volatile not allowed (we only support const)
// int const* const const invalid3; // Multiple const at pointer level