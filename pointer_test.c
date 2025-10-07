// Test file for pointer and array operations

int main() {
    int x = 5;
    int y = 10;
    int arr[10];
    int *ptr1 = &x;
    int *ptr2 = &y;
    
    // Valid operations
    int result1 = ptr1 + 5;        // pointer + integer (valid)
    int result2 = 3 + ptr1;        // integer + pointer (valid) 
    int result3 = ptr1 - 2;        // pointer - integer (valid)
    int result4 = ptr2 - ptr1;     // pointer - pointer (valid)
    int result5 = arr[3];          // array indexing (valid)
    
    // Cast operations to test
    int *ptr3 = (int*)ptr1;        // pointer to pointer cast
    void *vptr = (void*)ptr1;      // pointer to void* cast
    int addr = (int)ptr1;          // pointer to int cast (should warn)
    int *ptr4 = (int*)100;         // int to pointer cast (should warn)
    
    // Invalid operations (should give errors)
    int bad1 = ptr1 + ptr2;        // pointer + pointer (error)
    int bad2 = ptr1 * 5;           // pointer * integer (error)
    int bad3 = ptr1 / 2;           // pointer / integer (error) 
    int bad4 = ptr1 % 3;           // pointer % integer (error)
    int bad5 = ptr1 << 2;          // pointer shift (error)
    int bad6 = ptr1 & 0xFF;        // pointer bitwise (error)
    int bad7 = arr << 1;           // array shift (error)
    int bad8 = arr * 2;            // array multiplication (error)
    
    return 0;
}