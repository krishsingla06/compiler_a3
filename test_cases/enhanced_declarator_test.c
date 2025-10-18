// Test case for enhanced declarator handling
// This should demonstrate pointer, array, and combined type handling

int papa=1;
int main() {
    // Basic declarations
    int a, b, c;                    // Multiple simple variables
    
    // // Pointer declarations
    int *ptr1, *ptr2;               // Multiple pointers
    // int * const const_ptr;          // Const pointer
    int **double_ptr;               // Double pointer
    
    // Array declarations
    int arr1[10];                   // Single dimension array
    int arr2[5][3];                 // Multi-dimensional array
    // int arr3[];                     // Array with unknown size

    int arr3 = 7;                    // redeclaration with same name not possible
    
    // Combined pointer and array
   int *ptr_arr[5];                // Array of pointers
    
    // Mixed declarations
   int x = 5, *y, z[10], *w[3];    // Mixed types in one declaration

    // {
    //     int a;
    // }
    
    // Usage
    a = 10;
    *ptr1 = a;
    arr1[0] = 20;
    arr2[1][2] = 30;
    
   // return 0;
}