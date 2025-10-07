int main() {
    int x = 10;
    float f = 3.14;
    char c = 'A';
    int* ptr = &x;
    void* vptr;
    
    // Basic type casting - should work
    int y = (int)f;
    float z = (float)x;
    char ch = (char)x;
    
    // Pointer casting - should work with new grammar
    int* p1 = (int*)vptr;
    char* p2 = (char*)ptr;
    void* p3 = (void*)ptr;
    
    // Numeric to pointer - should warn but allow
    int* p4 = (int*)1000;
    
    // Pointer to numeric - should warn but allow  
    int addr = (int)ptr;
    
    // Invalid operations - should give errors
    // int arr[5];
    // int* bad1 = (int*)arr;  // array to pointer cast
    // float* bad2 = (float*)f;  // non-pointer to pointer of different type
    
    return 0;
}