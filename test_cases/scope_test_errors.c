// Test Case 7: Error cases
// This should demonstrate various error conditions

int main() {
    int x;
    int x;        // Error: duplicate declaration in same scope
    
    {
        int y;
        int y;    // Error: duplicate declaration in same scope
    }
    
    z = 5;        // Error: undeclared variable 'z'
    
    return 0;
}