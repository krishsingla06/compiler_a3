// Test file for function pointer support
// This tests declaring function pointers, assigning functions to them, 
// and calling through function pointers with explicit dereference

// Simple function to add two integers
int add(int a, int b) {
    return a + b;
}

// Simple function to subtract two integers
int subtract(int a, int b) {
    return a - b;
}

// Function that takes a float and returns a float
float multiply_float(float x, float y) {
    return x * y;
}

// Function with no parameters
int get_constant() {
    return 42;
}

int main() {
    int x;
    int y;
    int result;
    int (*operation)(int, int);

    
    x = 10;
    y = 5;
    
    // Declare a function pointer that takes two ints and returns an int
    
    // Assign the add function to the function pointer
    operation = add;
    
    // Call through the function pointer with explicit dereference
    result = (*operation)(x, y);  // Should compute 10 + 5 = 15
    
    // Reassign to the subtract function
    operation = subtract;
    
    // Call again with the new function
    result = (*operation)(x, y);  // Should compute 10 - 5 = 5
    
    
    return 0;
}
