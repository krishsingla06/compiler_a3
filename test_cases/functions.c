// function initializationss not workingg
// int add(int a, int b);
// float multiply(float x, float y);
// void printMessage(char* msg);
// char getFirstChar(char* str);

int globalVar = 42;

// Function with static and const variables
void testVars() {
    static int staticVar = 10;
    int constVar = 20;
    int localVar = staticVar + constVar;
}

// Function with pointer parameter
void setValue(int *ptr, int value) {
    *ptr = value;
}

// Function with array parameter      not working
// int sumArray(int arr[], int size) {
//     int sum = 0;
//     for(int i = 0; i < size; i++) {
//         sum += arr[i];
//     }
//     return sum;
// }

// Function definitions
int add(int a, int b) {
    return a + b;
}

float multiply(float x, float y) {
    return x * y;
}

char getFirstChar(char* str) {
    return str[0];
}

int main() {
    int a = 5, b = 7;
    float x = 2.5, y = 4.0;
    int arr[3];
    int result;
    
    int value = 0;
    // Function calls

    // major : cannot declare variables after function calls
    result = add(a, b);
    multiply(x,y);
    
    // char ch = getFirstChar("World");
    
    testVars();
    
    setValue(&value, 99);
    
    // Various variable declarations
    // int constMain = 100;
    // static int staticMain = 200;
    // int *ptr = &a;
    // float fArr[2] = {1.1, 2.2};
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;
    

    return 0;
}