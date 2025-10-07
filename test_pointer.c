int main() {
    int arr[10];
    int *ptr1, *ptr2;
    int x, y, z;
    char c;
    
    // Valid array subscripting
    x = arr[5];
    y = ptr1[2];
    
    // Valid pointer arithmetic
    ptr2 = ptr1 + 3;    // pointer + integer
    ptr2 = 5 + ptr1;    // integer + pointer
    ptr2 = ptr1 - 2;    // pointer - integer
    x = ptr2 - ptr1;    // pointer - pointer (gives distance)
    
    // Invalid operations (should generate errors)
    x = ptr1 + ptr2;    // pointer + pointer (ERROR)
    
    // Array indexing with non-integer (should generate error)
    x = arr[3.14];      // float index (ERROR)
    
    // Mixed type operations
    c = 'A';
    x = c + 1;          // char + int -> int
    ptr2 = arr + c;     // array + char -> pointer
    
    return 0;
}