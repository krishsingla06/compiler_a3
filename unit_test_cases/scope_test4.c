// Test Case 4: Function scope
// This should test function-level scoping

void func() {
    int local_var;    // Function scope variable
    local_var = 5;    // Should be found
}

int main() {
    int main_var;     // Main function scope
    main_var = 10;    // Should be found
    // local_var = 3; // Uncomment to test undeclared variable error
    return 0;
}