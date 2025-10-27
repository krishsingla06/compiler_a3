
// Multiple function pointer parameters
void bar(int (*f1)(int), float (*f2)(float, float)){}

// Function pointer with other parameters
void baz(int x, int (*operation)(int, int), float y){}

// Function pointer returning pointer
void qux(int* (*fp)(int, int)){}

// Calling functions with function pointer arguments
int add(int a, int b) { return a + b; }
void foo(int (*callback)(int, int)) {
    int result = (*callback)(5, 3);
}
int main() {
    //foo(add);  // Pass function as argument
    // int (*fp)(int, int) = add;
    // fp(10, 20);
    add(1, 2);
}


