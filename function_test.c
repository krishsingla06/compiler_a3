// Function type checking test

// Function declarations with different parameter types
int add(int a, int b);
float multiply(float x, float y);
char* getString(char c, int* ptr);
void printValue(int x);

// Function with array parameter (should convert to pointer)
int processArray(int arr[], int size);
char* stringOp(char str[]);

// Function definitions
int add(int a, int b) {
    return a + b;
}

float multiply(float x, float y) {
    return x * y;
}

// Function overloading with different parameter types
int calculate(int x);
float calculate(float x);
int calculate(int x, int y);

int main() {
    int x = 10;
    int y = 20;
    float f = 3.14;
    int arr[5];
    char str[10];
    int* ptr = &x;
    
    // Valid function calls
    int sum = add(x, y);
    float product = multiply(f, 2.5);
    printValue(x);
    
    // Function calls with implicit conversions
    float result1 = add(x, y);  // int -> float conversion
    int result2 = multiply(3, 4);  // int -> float -> int conversion
    
    // Array to pointer conversion
    int arrayResult = processArray(arr, 5);
    char* stringPtr = stringOp(str);
    
    // Function overloading resolution
    int calc1 = calculate(x);
    float calc2 = calculate(f);
    int calc3 = calculate(x, y);
    
    // Invalid function calls - should give errors
    // int invalid1 = add(x, y, 10);  // Wrong number of arguments
    // int invalid2 = add(ptr, y);    // Incompatible type
    
    return 0;
}